package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;

final class cw
  implements DialogInterface.OnClickListener
{
  cw(ModifyPayPwdActivity paramModifyPayPwdActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.h.setVisibility(8);
    this.a.g.setVisibility(0);
    this.a.j.currentSecond2Zero();
    this.a.j.getInputBox().getEtContent().setText("");
    this.a.a.getEtContent().setText("");
    this.a.b.getEtContent().setText("");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.cw
 * JD-Core Version:    0.6.2
 */