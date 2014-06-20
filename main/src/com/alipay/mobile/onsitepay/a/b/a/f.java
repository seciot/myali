package com.alipay.mobile.onsitepay.a.b.a;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.support.v4.content.LocalBroadcastManager;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.onsitepay.a.b.a;
import com.alipay.mobile.onsitepay.a.b.d;

public final class f
  implements d
{
  LocalBroadcastManager a = null;
  BroadcastReceiver b = null;
  AppBundle c = null;

  public final void a()
  {
    if (this.a != null)
      this.a.unregisterReceiver(this.b);
  }

  public final void a(AlipayApplication paramAlipayApplication, String paramString, AppBundle parama)
  {
    this.c = parama;
    this.a = LocalBroadcastManager.getInstance(paramAlipayApplication);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction(paramString);
    localIntentFilter.addAction("com.alipay.longlink.TRANSFER_10000013");
    this.b = new g(this);
    this.a.registerReceiver(this.b, localIntentFilter);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.a.b.a.f
 * JD-Core Version:    0.6.2
 */