package com.alipay.mobile.security.authcenter.service;

import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.SMSSendResultCallBack;
import com.alipay.mobile.framework.service.ext.security.SMSService;
import java.util.ArrayList;
import java.util.Iterator;

public class SMSServiceIml extends SMSService
{
  Context a;
  String b = "SENT_SMS_ACTION";
  String c = "DELIVERED_SMS_ACTION";
  private SMSSendResultCallBack d;
  private BroadcastReceiver e = new SMSServiceIml.1(this);

  public boolean isCanUseSim()
  {
    try
    {
      TelephonyManager localTelephonyManager = (TelephonyManager)getMicroApplicationContext().getApplicationContext().getSystemService("phone");
      new StringBuilder("{[info=isCanUseSim],[msg:mgr.getSimState()= ").append(localTelephonyManager.getSimState()).append(" ]}").toString();
      new StringBuilder("{[info=isCanUseSim],[msg:mgr.getPhoneType()= ").append(localTelephonyManager.getPhoneType()).append(" ]}").toString();
      int i = localTelephonyManager.getSimState();
      return 5 == i;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.a = getMicroApplicationContext().getApplicationContext();
    this.a.registerReceiver(this.e, new IntentFilter(this.b));
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void sendSms(String paramString1, String paramString2, SMSSendResultCallBack paramSMSSendResultCallBack)
  {
    this.d = paramSMSSendResultCallBack;
    AlipayApplication localAlipayApplication = getMicroApplicationContext().getApplicationContext();
    SmsManager localSmsManager;
    PendingIntent localPendingIntent1;
    PendingIntent localPendingIntent2;
    try
    {
      localSmsManager = SmsManager.getDefault();
      localPendingIntent1 = PendingIntent.getBroadcast(localAlipayApplication, 0, new Intent(this.b), 0);
      localPendingIntent2 = PendingIntent.getBroadcast(localAlipayApplication, 0, new Intent(this.c), 0);
      if (paramString2.length() <= 70)
        break label154;
      Iterator localIterator = localSmsManager.divideMessage(paramString2).iterator();
      while (localIterator.hasNext())
        localSmsManager.sendTextMessage(paramString1, null, (String)localIterator.next(), localPendingIntent1, localPendingIntent2);
    }
    catch (Exception localException)
    {
      new StringBuilder("{[info=sendSms],[msg:fail").append(localException.getMessage()).append("]}").toString();
      this.d.a(false);
    }
    return;
    label154: localSmsManager.sendTextMessage(paramString1, null, paramString2, localPendingIntent1, localPendingIntent2);
  }

  public String serviceProvider(Context paramContext)
  {
    try
    {
      String str = ((TelephonyManager)paramContext.getSystemService("phone")).getSimOperator();
      if (str != null)
      {
        if ((str.equals("46000")) || (str.equals("46002")) || (str.equals("46007")))
          break label74;
        if (str.equals("46001"))
          return "CHINA_UNICOM";
        if (str.equals("46003"))
          return "CHINA_TELECOM";
      }
    }
    catch (Exception localException)
    {
    }
    return null;
    label74: return "CHINA_MOBILE";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.service.SMSServiceIml
 * JD-Core Version:    0.6.2
 */