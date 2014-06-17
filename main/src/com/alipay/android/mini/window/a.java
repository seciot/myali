package com.alipay.android.mini.window;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;

final class a
  implements Runnable
{
  a(AbsActivity paramAbsActivity)
  {
  }

  public final void run()
  {
    if (AbsActivity.a(this.a))
      LocalBroadcastManager.getInstance(this.a).sendBroadcast(new Intent("com.alipay.mobile.framework.USERLEAVEHINT"));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.a
 * JD-Core Version:    0.6.2
 */