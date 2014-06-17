package com.alipay.mobile.security.accountmanager.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APInputBox;

final class bs
  implements View.OnClickListener
{
  bs(ForgotPayPwdActivity paramForgotPayPwdActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.p.getCheckBox().isChecked())
    {
      this.a.m.setInputType(1);
      return;
    }
    this.a.m.setInputType(129);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.bs
 * JD-Core Version:    0.6.2
 */