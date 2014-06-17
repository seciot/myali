package com.alipay.mobile.alipassapp.ui;

import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;

final class ag
  implements Runnable
{
  ag(AlipassListActivity paramAlipassListActivity, DeletePassResult paramDeletePassResult, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    this.d.dismissProgressDialog();
    if ((this.a != null) && (this.a.success))
    {
      this.d.c.a(this.b, this.c);
      AlipassListActivity.o();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ag
 * JD-Core Version:    0.6.2
 */