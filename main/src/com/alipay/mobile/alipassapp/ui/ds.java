package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ds
  implements DialogInterface.OnClickListener
{
  ds(dr paramdr)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.a.c("del");
    if (MemberCardDetailActivity.s(this.a.a))
    {
      this.a.a.b(MemberCardDetailActivity.t(this.a.a));
      return;
    }
    this.a.a.a(MemberCardDetailActivity.t(this.a.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ds
 * JD-Core Version:    0.6.2
 */