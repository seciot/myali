package com.alipay.android.widget.security.service;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobilesecurity.core.model.taobao.bind.TaobaoBindingQueryRes;

final class i
  implements DialogInterface.OnClickListener
{
  i(TaobaoBindingServiceImpl paramTaobaoBindingServiceImpl, TaobaoBindingQueryRes paramTaobaoBindingQueryRes)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    TaobaoBindingServiceImpl.access$300(this.b, this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.service.i
 * JD-Core Version:    0.6.2
 */