package com.alipay.mobile.onsitepay.a.b.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.googlecode.androidannotations.api.BackgroundExecutor;

final class g extends BroadcastReceiver
{
  g(DefaultThreadFactory paramf)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("com.alipay.longlink.TRANSFER_10000013"))
    {
      String str = paramIntent.getStringExtra("payload");
      new StringBuilder("payLoadData=").append(str).toString();
      if (str != null)
        BackgroundExecutor.execute(new Bundleable(this.a, str));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.a.b.a.g
 * JD-Core Version:    0.6.2
 */