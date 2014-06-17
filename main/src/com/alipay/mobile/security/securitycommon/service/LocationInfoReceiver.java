package com.alipay.mobile.security.securitycommon.service;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.LocationInfoService;

public class LocationInfoReceiver extends BroadcastReceiver
{
  private ActivityManager a;
  private LocationInfoService b;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (this.a == null)
      this.a = ((ActivityManager)paramContext.getSystemService("activity"));
    if (this.b == null)
      this.b = ((LocationInfoService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(LocationInfoService.class.getName()));
    if ("com.alipay.mobile.framework.ACTIVITY_RESUME".equalsIgnoreCase(str))
    {
      new StringBuilder("{[info=onReceive], [msg=enventString:").append(str).append(" , 用户回到应用重新获取本地信息]}").toString();
      new Thread(new LocationInfoReceiver.1(this)).start();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.service.LocationInfoReceiver
 * JD-Core Version:    0.6.2
 */