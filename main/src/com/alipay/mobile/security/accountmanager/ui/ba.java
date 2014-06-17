package com.alipay.mobile.security.accountmanager.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APInputBox;

final class ba
  implements View.OnClickListener
{
  ba(ForgotLoginPwdActivity paramForgotLoginPwdActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.r.getCheckBox().isChecked())
    {
      this.a.q.setInputType(1);
      return;
    }
    this.a.q.setInputType(129);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ba
 * JD-Core Version:    0.6.2
 */