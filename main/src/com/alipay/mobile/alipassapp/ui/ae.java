package com.alipay.mobile.alipassapp.ui;

import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;
import com.alipay.mobile.alipassapp.biz.common.d;
import com.alipay.mobile.common.rpc.RpcException;

final class ae
  implements Runnable
{
  ae(AlipassListActivity paramAlipassListActivity, String paramString, boolean paramBoolean)
  {
  }

  public final void run()
  {
    Object localObject = AlipassListActivity.f(this.c).a(this.a, this.b);
    if ((localObject instanceof DeletePassResult))
    {
      this.c.a((DeletePassResult)localObject, this.a, this.b);
      return;
    }
    this.c.a(null, null, this.b);
    throw ((RpcException)localObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ae
 * JD-Core Version:    0.6.2
 */