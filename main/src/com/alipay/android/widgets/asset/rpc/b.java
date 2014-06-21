package com.alipay.android.widgets.asset.rpc;

import com.alipay.mobilewealth.biz.service.gw.result.home.WealthHomeInfoResult;

final class b
  implements Runnable
{
  b(WealthHomeRpcExcutor paramWealthHomeRpcExcutor, WealthHomeInfoResult paramWealthHomeInfoResult)
  {
  }

  public final void run()
  {
    WealthHomeRpcExcutor.getBundle(this.b).v(this.a, true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.rpc.b
 * JD-Core Version:    0.6.2
 */