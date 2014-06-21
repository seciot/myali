package com.alipay.mobile.alipassapp.ui;

import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;
import com.alipay.mobile.alipassapp.biz.common.d;

final class ad
  implements Runnable
{
  ad(AlipassListActivity paramAlipassListActivity, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    DeletePassResult localDeletePassResult = AlipassListActivity.f(this.c).v(this.a, this.b);
    this.c.e(localDeletePassResult, this.b, this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ad
 * JD-Core Version:    0.6.2
 */