package com.alipay.mobile.appstoreapp.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.alipay.mobile.appstoreapp.util.AppCenterLogUtil;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.openplatform.service.ThirdPartyAuthorizeService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoBean;
import com.alipay.mobileapp.core.model.app.MobileAppAuthStatusVO;
import java.lang.reflect.Field;

public class AppLaunchFromShortcutActivityImpl
{
  private static final int AUTH_FAIL_CLIENT_ERROR = -102;
  private static final int AUTH_FAIL_GET_WALLET_TID_ERROR = -103;
  private static final int AUTH_FAIL_NETWORK_ERROR = -100;
  private static final int AUTH_FAIL_SERVER_RETURN = -101;
  private static final int AUTH_NOT_NEED_AUTH = 100;
  private static final int AUTH_SUCCESS = 1000;
  private static final String TAG = AppLaunchFromShortcutActivityImpl.class.getName();
  private Activity mActivity;
  private String mAppId = "";
  private boolean mIsApkApp = true;
  private boolean mIsFirstOnResume = true;
  private boolean mNeedAuth = true;
  private String mPackageName = "";
  private String mSwitchToFP = "";
  private String mTid = "";
  private String mUserId = "";
  private ThirdPartyAuthorizeService thirdPartyAuthorizeService = null;

  private void authorize()
  {
    this.mAppId = this.mActivity.getIntent().getStringExtra("appId");
    this.mUserId = this.mActivity.getIntent().getStringExtra("userId");
    this.mPackageName = this.mActivity.getIntent().getStringExtra("packageName");
    this.mNeedAuth = this.mActivity.getIntent().getBooleanExtra("needAuth", true);
    this.mIsApkApp = this.mActivity.getIntent().getBooleanExtra("isApkApp", true);
    this.mSwitchToFP = this.mActivity.getIntent().getStringExtra("FacepayDT");
    if ((this.mSwitchToFP != null) && (this.mSwitchToFP.length() > 0))
    {
      this.mAppId = "10000014";
      this.mSwitchToFP = null;
    }
    if (!this.mNeedAuth)
    {
      launchApp("", 100);
      return;
    }
    this.thirdPartyAuthorizeService = ((ThirdPartyAuthorizeService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(ThirdPartyAuthorizeService.class.getName()));
    this.mTid = ((DeviceService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName())).queryDeviceInfo().getWalletTid();
    if (TextUtils.isEmpty(this.mTid))
    {
      launchApp("", -103);
      return;
    }
    new n(this).start();
  }

  private int getResourceId(String paramString1, String paramString2)
  {
    try
    {
      int i = ((Integer)Class.forName(this.mActivity.getApplicationContext().getPackageName() + ".R$" + paramString1).getDeclaredField(paramString2).get(null)).intValue();
      return i;
    }
    catch (Exception localException)
    {
    }
    return -1;
  }

  private void launchApp(String paramString, int paramInt)
  {
    if (this.mIsApkApp)
      startApkApp(paramString);
    while (true)
    {
      AppCenterLogUtil.c(this.mAppId);
      return;
      startAlipayApp(paramString);
    }
  }

  private void showToastCenter(String paramString)
  {
    this.mActivity.runOnUiThread(new o(this, paramString));
  }

  private void startAlipayApp(String paramString)
  {
    Intent localIntent = this.mActivity.getPackageManager().getLaunchIntentForPackage(AlipayApplication.getInstance().getPackageName());
    localIntent.addFlags(603979776);
    StringBuffer localStringBuffer = new StringBuffer("alipays://platformapi/startapp?tagfrom=desktop");
    localStringBuffer.append("&appId=" + this.mAppId);
    if ((this.mSwitchToFP != null) && (this.mSwitchToFP.length() > 0))
      localStringBuffer.append("&FacepayDT=" + this.mSwitchToFP);
    if ((this.mAppId != null) && (this.mAppId.equals("10000111")))
    {
      localStringBuffer.append("&TARGET=" + this.mActivity.getIntent().getStringExtra("TARGET"));
      localStringBuffer.append("&APP_ID=" + this.mActivity.getIntent().getStringExtra("APP_ID"));
    }
    if ((!TextUtils.isEmpty(this.mUserId)) && (!TextUtils.isEmpty(paramString)))
    {
      localStringBuffer.append("&alipay_user_id=" + this.mUserId);
      localStringBuffer.append("&auth_code=" + paramString);
      localStringBuffer.append("&app_id=" + this.mAppId);
    }
    localIntent.setData(Uri.parse(localStringBuffer.toString()));
    this.mActivity.startActivity(localIntent);
    toFinish();
  }

  private void startApkApp(String paramString)
  {
    if (TextUtils.isEmpty(this.mPackageName))
    {
      showToastCenter(this.mActivity.getResources().getString(getResourceId("string", "open_thirdparty_not_install")));
      toFinish();
      return;
    }
    Intent localIntent = this.mActivity.getPackageManager().getLaunchIntentForPackage(this.mPackageName);
    if (localIntent == null)
    {
      showToastCenter(this.mActivity.getString(getResourceId("string", "open_thirdparty_not_install")));
      toFinish();
      return;
    }
    localIntent.addFlags(268435456);
    if ((!TextUtils.isEmpty(this.mUserId)) && (!TextUtils.isEmpty(paramString)))
    {
      localIntent.putExtra("alipay_user_id", this.mUserId);
      localIntent.putExtra("auth_code", paramString);
      localIntent.putExtra("app_id", this.mAppId);
      localIntent.putExtra("source", "alipay_wallet");
      localIntent.putExtra("version", "1.0");
      localIntent.putExtra("alipay_client_version", AppInfo.getInstance().getmProductVersion());
      localIntent.addFlags(67108864);
    }
    this.mActivity.startActivity(localIntent);
    toFinish();
  }

  private void toAuth(MobileAppAuthStatusVO paramMobileAppAuthStatusVO)
  {
    m localm = new m(this);
    this.thirdPartyAuthorizeService.authSignFromDeskTop(this.mAppId, this.mUserId, paramMobileAppAuthStatusVO, localm, this.mActivity);
  }

  private void toFinish()
  {
    new Handler(Looper.getMainLooper()).postDelayed(new p(this), 300L);
  }

  public void onCreate(Activity paramActivity)
  {
    this.mActivity = paramActivity;
    if (this.mIsFirstOnResume)
      new Handler().postDelayed(new l(this), 100L);
    this.mIsFirstOnResume = false;
  }

  public void onResume()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.AppLaunchFromShortcutActivityImpl
 * JD-Core Version:    0.6.2
 */