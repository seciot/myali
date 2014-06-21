package com.alipay.android.phone.home.util;

import android.os.Handler;
import android.os.Message;

final class d extends Handler
{
  int a = 0;

  d(SyncAnimatingHelper paramSyncAnimatingHelper)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 4097)
    {
      if (SyncAnimatingHelper.getBundle(this.b))
        break label58;
      SyncAnimatingHelper.a(this.b, false);
      SyncAnimatingHelper.b(this.b);
      SyncAnimatingHelper.c(this.b).sendEmptyMessageDelayed(4097, 100L);
    }
    while (true)
    {
      super.handleMessage(paramMessage);
      return;
      label58: SyncAnimatingHelper.d(this.b);
      SyncAnimatingHelper.a(this.b, true);
      SyncAnimatingHelper.b(this.b);
      if (SyncAnimatingHelper.removeBundle(this.b) != null)
        SyncAnimatingHelper.removeBundle(this.b).a();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.util.d
 * JD-Core Version:    0.6.2
 */