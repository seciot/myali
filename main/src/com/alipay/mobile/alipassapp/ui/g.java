package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class g
  implements DialogInterface.OnClickListener
{
  g(f paramf)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (AlipassDetailActivity.p(this.a.a))
    {
      this.a.a.getBundle(AlipassDetailActivity.removeBundle(this.a.a));
      return;
    }
    if (AlipassDetailActivity.q(this.a.a))
    {
      this.a.a.b();
      return;
    }
    this.a.a.b(AlipassDetailActivity.removeBundle(this.a.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.g
 * JD-Core Version:    0.6.2
 */