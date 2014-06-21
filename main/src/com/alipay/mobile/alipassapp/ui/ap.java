package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class ap
  implements DialogInterface.OnClickListener
{
  ap(ao paramao, BaseAlipassInfoItem.AlipassInfoItem paramAlipassInfoItem)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.b.a.showProgressDialog("正在删除", true, AlipassListActivity.c(this.b.a));
    this.b.a.e(null, "del", this.a);
    if (1 == this.a.getItemFrom())
    {
      AlipassListActivity.e(this.b.a, this.a.getPartnerID(), this.a.getSerialNumber());
      return;
    }
    this.b.a.v(this.a.getPassId(), this.b.a.getInitLevel());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ap
 * JD-Core Version:    0.6.2
 */