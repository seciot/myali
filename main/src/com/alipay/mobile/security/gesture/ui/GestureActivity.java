package com.alipay.mobile.security.gesture.ui;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.widget.Toast;
import com.alipay.mobile.a.d;
import com.alipay.mobile.a.e;
import com.alipay.mobile.a.f;
import com.alipay.mobile.base.config.ConfigService;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.dbhelper.SecurityShareStore;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoBean;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobile.security.gesture.component.AlipayPattern;
import com.alipay.mobile.security.gesture.service.GestureServiceImpl;
import com.alipay.mobile.security.gesture.util.GestureDataCenter;
import com.alipay.mobilegw.biz.shared.processer.logout.UserLogoutReq;
import com.alipay.mobilegw.biz.shared.processer.logout.UserLogoutService;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@EActivity
public class GestureActivity extends BaseActivity
{
  public final String a = "GestureActivity";
  GestureDataCenter b = GestureDataCenter.getInstance();
  private AlipayPattern c = null;
  private AccountService d;
  private UserInfo e;
  private GestureServiceImpl f;
  private boolean g;
  private boolean h = true;
  private boolean i = true;
  private boolean j = false;
  private Handler k = new Handler(Looper.getMainLooper());
  private ConfigService l;
  private AuthService m;
  private boolean n = false;

  private void a()
  {
    GestureDataCenter.getInstance().setChangeTime(false);
    Intent localIntent = getIntent();
    if (localIntent != null);
    for (Bundle localBundle = localIntent.getExtras(); ; localBundle = null)
    {
      boolean bool;
      if (localBundle != null)
      {
        bool = localBundle.getBoolean("setORcheck");
        this.g = localBundle.getBoolean("canBack", false);
        this.j = localBundle.getBoolean("GestureShowSkipBtn", true);
      }
      while (true)
      {
        this.e = this.d.getUserInfoBySql(null, null);
        StringBuilder localStringBuilder = new StringBuilder("cachedUserInfo:").append(this.e).append(";gesturepwd:");
        String str1;
        if (this.e != null)
        {
          str1 = this.e.getGesturePwd();
          localStringBuilder.append(str1).toString();
          if ((this.e != null) && (this.c != null))
            break label143;
          b();
        }
        label143: 
        do
        {
          return;
          str1 = "";
          break;
          if (bool)
            break label222;
          this.c.setOnPatternChangeListener(new g(this));
          this.c.TryToSetPattern(false);
        }
        while ((!this.j) || (this.l == null) || (this.l.getConfig("GestureShipJumpBtn") == null) || (!"NO".equals(this.l.getConfig("GestureShipJumpBtn"))));
        this.c.setIsShowSkipButton(true);
        return;
        label222: if (!TextUtils.isEmpty(this.e.getGesturePwd()))
        {
          GestureDataCenter.getInstance().setNeedAuthGesture(true);
          this.c.setOnPatternCheckedListener(new c(this));
          if (this.e != null)
          {
            String str2 = this.e.getGesturePwd();
            if ((str2 != null) && (!"".equalsIgnoreCase(str2)))
            {
              this.c.checkPattern(this.e, this);
              this.c.checkGestureErrorAlert(this, this.e);
              return;
            }
            b();
            return;
          }
          b();
          return;
        }
        b();
        return;
        bool = true;
      }
    }
  }

  private void a(BehaviourIdEnum paramBehaviourIdEnum, String paramString1, String paramString2)
  {
    AlipayLogAgent.writeLog(this, paramBehaviourIdEnum, "-", "-", "security", "-", "-", paramString1, paramString2);
  }

  private static void a(UserInfo paramUserInfo, String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    paramUserInfo.setGesturePwd(paramString1);
    paramUserInfo.setGestureSkip(paramBoolean);
    paramUserInfo.setGestureSkipStr(paramString2);
    paramUserInfo.setGestureErrorNum(paramString3);
  }

  private void a(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    localIntent.setAction(paramString1);
    localIntent.putExtra("data", paramString2);
    LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(localIntent);
  }

  private void b()
  {
    String str = this.mApp.getAppId();
    try
    {
      Class.forName("com.alipay.mobile.core.impl.MicroApplicationContextImpl").getDeclaredMethod("doStartApp", new Class[] { String.class, String.class, Bundle.class }).invoke(this.mApp.getMicroApplicationContext(), new Object[] { str, "20000008", null });
      GestureDataCenter.getInstance().setNeedAuthGesture(false);
      e();
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
        localClassNotFoundException.printStackTrace();
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  private void b(String paramString)
  {
    a(paramString);
    this.f.notifyunLockApp();
    if (this.e != null)
    {
      this.e.setAutoLogin(false);
      a(this.e, "", "false", "0", false);
      this.d.updateUserGesture(this.e);
    }
    new StringBuilder("mUserInfo:").append(this.e).toString();
    f();
    a(paramString, false, false);
    new StringBuilder("loginId:").append(paramString).toString();
  }

  private static void c()
  {
    try
    {
      Intent localIntent = new Intent("com.alipay.security.logout");
      LocalBroadcastManager.getInstance(AlipayApplication.getInstance()).sendBroadcast(localIntent);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private void c(String paramString)
  {
    this.k.post(new h(this, paramString));
  }

  private static void d()
  {
    CookieSyncManager localCookieSyncManager = CookieSyncManager.createInstance(AlipayApplication.getInstance());
    CookieManager.getInstance().removeAllCookie();
    localCookieSyncManager.sync();
  }

  private void e()
  {
    this.mApp.getMicroApplicationContext().finishApp(this.mApp.getAppId(), "20000006", null);
    finish();
  }

  private void f()
  {
    SecurityShareStore.putString(this.mApp.getMicroApplicationContext().getApplicationContext(), "currentUserLoginState", "false");
  }

  @Background
  protected void a(String paramString)
  {
    try
    {
      UserLogoutService localUserLogoutService = (UserLogoutService)((RpcService)this.mApp.getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(UserLogoutService.class);
      UserLogoutReq localUserLogoutReq = new UserLogoutReq();
      localUserLogoutReq.setLogonId(paramString);
      try
      {
        DeviceInfoBean localDeviceInfoBean = ((DeviceService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName())).queryDeviceInfo();
        if (localDeviceInfoBean != null)
        {
          String str = localDeviceInfoBean.getWalletTid();
          if (str != null)
            localUserLogoutReq.setWalletTid(str);
          new StringBuilder("获取设备信息成功 walletTid=").append(str).toString();
          localUserLogoutReq.setWalletClientKey(DeviceInfo.getInstance().getmClientKey());
          localUserLogoutReq.setClientId(DeviceInfo.getInstance().getClientId());
        }
        MspDeviceInfoBean localMspDeviceInfoBean = ((DeviceService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName())).queryCertification();
        if ((localMspDeviceInfoBean != null) && (localMspDeviceInfoBean.getTid() != null))
        {
          localUserLogoutReq.setMspTid(localMspDeviceInfoBean.getTid());
          localUserLogoutReq.setMspClientKey(localMspDeviceInfoBean.getMspkey());
          localUserLogoutReq.setMspImei(localMspDeviceInfoBean.getImei());
          localUserLogoutReq.setMspImsi(localMspDeviceInfoBean.getImsi());
          new StringBuilder("从移动快捷获取tid=").append(null).toString();
        }
        localUserLogoutService.logout(localUserLogoutReq);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
    catch (RpcException localRpcException)
    {
    }
    finally
    {
      d();
      c();
    }
  }

  @Background
  protected void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("allowBack", false);
    localBundle.putBoolean("source_gesture", paramBoolean2);
    localBundle.putBoolean("gestureswitchaccount", paramBoolean1);
    if ((paramString != null) && (!paramBoolean1))
      localBundle.putString("logonId", paramString);
    try
    {
      while (true)
      {
        if (!this.n)
        {
          this.n = true;
          GestureDataCenter.getInstance().setNeedAuthGesture(false);
          this.m.clearLoginUserInfo();
          this.m.notifyUnlockLoginApp(false, false);
          this.m.showActivityLogin(localBundle, null);
          this.n = false;
          e();
        }
        return;
        localBundle.putString("logonId", "");
      }
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.i)
      return this.c.dispatchTouchEvent(paramMotionEvent);
    return false;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.i = false;
    setContentView(e.b);
    this.n = false;
    this.c = ((AlipayPattern)findViewById(d.a));
    this.d = ((AccountService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AccountService.class.getName()));
    this.f = ((GestureServiceImpl)this.mApp.getMicroApplicationContext().getExtServiceByInterface(GestureService.class.getName()));
    this.l = ((ConfigService)this.mApp.getMicroApplicationContext().findServiceByInterface(ConfigService.class.getName()));
    this.m = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    a();
  }

  protected void onDestroy()
  {
    super.onDestroy();
    this.f.notifyunLockApp();
    this.n = false;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      this.n = false;
      if (!this.g)
      {
        if (this.h)
        {
          Toast localToast = SimpleToast.makeToast(this, f.q, 0);
          localToast.setGravity(17, 0, 0);
          localToast.show();
          this.h = false;
          this.c.postDelayed(new i(this), 10000L);
        }
        while (true)
        {
          return true;
          this.mApp.getMicroApplicationContext().exit();
        }
      }
      return super.onKeyDown(paramInt, paramKeyEvent);
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.n = false;
    a();
  }

  protected void onPause()
  {
    super.onPause();
    a("com.alipay.mobile.GESTURE_STATUS_CHANGED", "state=onPause");
  }

  protected void onResume()
  {
    super.onResume();
    a("com.alipay.mobile.GESTURE_STATUS_CHANGED", "state=onResume");
  }

  protected void onStop()
  {
    super.onStop();
    this.n = false;
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if (paramBoolean)
      this.i = true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.ui.GestureActivity
 * JD-Core Version:    0.6.2
 */