package com.alipay.mobile.rome.longlinkservice.service;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.ExternalService;

public class LongLinkScreenOffService extends ExternalService
{
  BroadcastReceiver a = null;
  AlipayApplication b;
  private final String c = LongLinkScreenOffService.class.getSimpleName();

  protected void onCreate(Bundle paramBundle)
  {
    this.b = getMicroApplicationContext().getApplicationContext();
    this.a = new b(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.SCREEN_OFF");
    this.b.registerReceiver(this.a, localIntentFilter);
  }

  protected void onDestroy(Bundle paramBundle)
  {
    super.destroy(paramBundle);
    if (this.a != null)
      this.b.unregisterReceiver(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.longlinkservice.service.LongLinkScreenOffService
 * JD-Core Version:    0.6.2
 */