package com.alipay.mobile.alipassapp.ui;

import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;

final class af
  implements Runnable
{
  af(AlipassListActivity paramAlipassListActivity, DeletePassResult paramDeletePassResult, String paramString, boolean paramBoolean)
  {
  }

  public final void run()
  {
    this.d.dismissProgressDialog();
    if ((this.a != null) && (this.a.success))
    {
      this.d.c.a(this.b);
      AlipassListActivity.l(this.d);
      if (this.c)
        AlipassListActivity.o();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.af
 * JD-Core Version:    0.6.2
 */