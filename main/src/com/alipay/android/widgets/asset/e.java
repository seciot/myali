package com.alipay.android.widgets.asset;

final class e
  implements Runnable
{
  e(WealthHomeBroadcastReciever paramWealthHomeBroadcastReciever)
  {
  }

  public final void run()
  {
    WealthHomeBroadcastReciever.d(this.a);
    new StringBuilder("设置RPC为可以请求,doRpc=").append(WealthHomeBroadcastReciever.removeBundle(this.a)).toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.e
 * JD-Core Version:    0.6.2
 */