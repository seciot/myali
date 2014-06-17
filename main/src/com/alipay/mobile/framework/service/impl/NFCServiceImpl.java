package com.alipay.mobile.framework.service.impl;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.nfc.NdefMessage;
import android.nfc.NdefRecord;
import android.nfc.NfcAdapter;
import android.nfc.tech.IsoDep;
import android.nfc.tech.Ndef;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.alipay.mobile.aspect.FrameworkPointCutManager;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.NFCService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.nfc.biz.processor.NFCBizProcessorManager;
import com.alipay.mobile.nfc.biz.processor.impl.NFCBizProcessorManagerImpl;
import com.alipay.mobile.nfc.ui.NFCEntry;
import org.json.JSONException;
import org.json.JSONObject;

@SuppressLint({"NewApi"})
public class NFCServiceImpl extends NFCService
{
  private NfcAdapter a;
  private NFCBizProcessorManager b;

  private NdefMessage a()
  {
    AuthService localAuthService = (AuthService)getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    UserInfo localUserInfo;
    if (localAuthService != null)
    {
      new StringBuilder("---------->log in: ").append(localAuthService.isLogin()).toString();
      localUserInfo = localAuthService.getUserInfo();
      if (localUserInfo == null);
    }
    for (String str = a(localUserInfo); ; str = null)
    {
      if (str == null)
        return null;
      return new NdefMessage(new NdefRecord[] { new NdefRecord(2, "application/com.alipay.mobile.nfc".getBytes(), new byte[0], str.getBytes()) });
    }
  }

  private static String a(UserInfo paramUserInfo)
  {
    JSONObject localJSONObject1 = new JSONObject();
    JSONObject localJSONObject2 = new JSONObject();
    try
    {
      localJSONObject2.put("avatar", paramUserInfo.getUserAvatar());
      localJSONObject2.put("name", paramUserInfo.getUserName());
      localJSONObject2.put("loginid", paramUserInfo.getLogonId());
      localJSONObject1.put("alipays-beam", localJSONObject2);
      return localJSONObject1.toString();
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }

  private boolean a(Activity paramActivity)
  {
    if (isAlipayNfcEnable(paramActivity))
      this.a = NfcAdapter.getDefaultAdapter(paramActivity);
    return this.a != null;
  }

  private static boolean b()
  {
    return Build.VERSION.SDK_INT >= 10;
  }

  private boolean b(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 14);
    for (int i = 1; ; i = 0)
    {
      if ((i != 0) && (isAlipayNfcEnable(paramActivity)))
      {
        this.a = NfcAdapter.getDefaultAdapter(paramActivity);
        if (this.a != null)
          break;
      }
      return false;
    }
    return true;
  }

  public void disableAlipayNfc(Context paramContext)
  {
    if (b())
      paramContext.getPackageManager().setComponentEnabledSetting(new ComponentName(paramContext.getApplicationContext(), NFCEntry.class), 2, 1);
  }

  public void disableForegroundDispatch(Activity paramActivity)
  {
    if (paramActivity == null)
      throw new IllegalArgumentException("activity can not be null !");
    if (a(paramActivity))
      new StringBuilder("disableForegroundDispatch: ").append(paramActivity.getClass().getSimpleName()).toString();
    try
    {
      this.a.disableForegroundDispatch(paramActivity);
      return;
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }

  public void enableAlipayNfc(Context paramContext)
  {
    if (b())
      paramContext.getPackageManager().setComponentEnabledSetting(new ComponentName(paramContext.getApplicationContext(), NFCEntry.class), 1, 1);
  }

  public void enableForegroundDispatch(Activity paramActivity)
  {
    if (paramActivity == null)
      throw new IllegalArgumentException("activity can not be null !");
    if (a(paramActivity))
      new StringBuilder("enableForegroundDispatch: ").append(paramActivity.getClass().getSimpleName()).toString();
    try
    {
      PendingIntent localPendingIntent = PendingIntent.getActivity(paramActivity, 0, new Intent(paramActivity, NFCEntry.class), 0);
      String[][] arrayOfString; = new String[2][];
      String[] arrayOfString1 = new String[1];
      arrayOfString1[0] = IsoDep.class.getName();
      arrayOfString;[0] = arrayOfString1;
      String[] arrayOfString2 = new String[1];
      arrayOfString2[0] = Ndef.class.getName();
      arrayOfString;[1] = arrayOfString2;
      IntentFilter[] arrayOfIntentFilter = new IntentFilter[1];
      arrayOfIntentFilter[0] = new IntentFilter("android.nfc.action.TECH_DISCOVERED", "*/*");
      this.a.enableForegroundDispatch(paramActivity, localPendingIntent, arrayOfIntentFilter, arrayOfString;);
      return;
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }

  public NFCBizProcessorManager getNFCBizProcessorManager()
  {
    if (this.b == null)
      this.b = new NFCBizProcessorManagerImpl();
    return this.b;
  }

  public boolean hasFeatureNfc(Context paramContext)
  {
    if (b())
      return paramContext.getPackageManager().hasSystemFeature("android.hardware.nfc");
    return false;
  }

  public boolean isAlipayNfcEnable(Context paramContext)
  {
    if (isNfcEnable(paramContext))
    {
      int i = paramContext.getPackageManager().getComponentEnabledSetting(new ComponentName(paramContext.getApplicationContext(), NFCEntry.class));
      if (i == 0);
      while (i == 1)
        return true;
      return false;
    }
    return false;
  }

  public boolean isNfcEnable(Context paramContext)
  {
    boolean bool1 = b();
    boolean bool2 = false;
    if (bool1)
    {
      NfcAdapter localNfcAdapter = NfcAdapter.getDefaultAdapter(paramContext);
      bool2 = false;
      if (localNfcAdapter != null)
      {
        boolean bool3 = localNfcAdapter.isEnabled();
        bool2 = false;
        if (bool3)
          bool2 = true;
      }
    }
    return bool2;
  }

  protected void onCreate(Bundle paramBundle)
  {
    String[] arrayOfString = { "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)", "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)", "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()", "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()", "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()", "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()" };
    FrameworkPointCutManager.getInstance().registerPointCutAdvice(arrayOfString, new NFCServiceImpl.2(this));
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void registerNFCMsgSender(Activity paramActivity)
  {
    if (paramActivity == null)
      throw new IllegalArgumentException("activity and context can not be null !");
    if (b(paramActivity));
    try
    {
      this.a.setNdefPushMessageCallback(new NFCServiceImpl.1(this), paramActivity, new Activity[0]);
      return;
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }

  public void setNdefPushMessage(Activity paramActivity)
  {
    if (paramActivity == null)
      throw new IllegalArgumentException("activity and context can not be null !");
    if (b(paramActivity))
      this.a.setNdefPushMessage(a(), paramActivity, new Activity[0]);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.impl.NFCServiceImpl
 * JD-Core Version:    0.6.2
 */