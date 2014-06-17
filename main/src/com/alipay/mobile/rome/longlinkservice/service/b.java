package com.alipay.mobile.rome.longlinkservice.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.longlink.LongLinkServiceManager;

final class b extends BroadcastReceiver
{
  b(LongLinkScreenOffService paramLongLinkScreenOffService)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    LongLinkServiceManager localLongLinkServiceManager = LongLinkServiceManager.getInstance(this.a.b);
    LongLinkScreenOffService.a(this.a);
    localLongLinkServiceManager.stopLink();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.longlinkservice.service.b
 * JD-Core Version:    0.6.2
 */