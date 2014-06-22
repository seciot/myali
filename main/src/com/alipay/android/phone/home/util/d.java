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
      SyncAnimatingHelper.v(this.b, false);
      SyncAnimatingHelper.dexopt(this.b);
      SyncAnimatingHelper.getBundleByComponentName(this.b).sendEmptyMessageDelayed(4097, 100L);
    }
    while (true)
    {
      super.handleMessage(paramMessage);
      return;
      label58: SyncAnimatingHelper.d(this.b);
      SyncAnimatingHelper.v(this.b, true);
      SyncAnimatingHelper.dexopt(this.b);
      if (SyncAnimatingHelper.removeBundle(this.b) != null)
        SyncAnimatingHelper.removeBundle(this.b).getInstance();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.util.d
 * JD-Core Version:    0.6.2
 */