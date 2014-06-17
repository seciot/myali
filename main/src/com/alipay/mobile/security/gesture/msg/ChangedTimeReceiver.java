package com.alipay.mobile.security.gesture.msg;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.ExternalService;
import com.alipay.mobile.framework.service.ext.security.GestureService;

public class ChangedTimeReceiver extends ExternalService
{
  GestureService a;
  ActivityManager b;
  BroadcastReceiver c = null;
  AlipayApplication d;
  private final String e = "ChangedTimeService";

  protected void onCreate(Bundle paramBundle)
  {
    this.d = getMicroApplicationContext().getApplicationContext();
    this.b = ((ActivityManager)this.d.getSystemService("activity"));
    this.a = ((GestureService)getMicroApplicationContext().getExtServiceByInterface(GestureService.class.getName()));
    this.c = new a(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.DATE_CHANGED");
    localIntentFilter.addAction("android.intent.action.TIME_SET");
    this.d.registerReceiver(this.c, localIntentFilter);
  }

  protected void onDestroy(Bundle paramBundle)
  {
    super.destroy(paramBundle);
    if (this.c != null)
      this.d.unregisterReceiver(this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.msg.ChangedTimeReceiver
 * JD-Core Version:    0.6.2
 */