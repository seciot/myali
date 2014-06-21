package com.alipay.mobile.security.gesture.component;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class h
  implements DialogInterface.OnClickListener
{
  h(AlipayPattern paramAlipayPattern)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.mPatternCheckedListener.e(false, false, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.component.h
 * JD-Core Version:    0.6.2
 */