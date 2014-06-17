package com.alipay.mobile.security.accountmanager.ui;

import android.text.Editable;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;

final class dd
  implements View.OnClickListener
{
  dd(ModifyPayPwdActivity paramModifyPayPwdActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.e.getCheckBox().isChecked())
    {
      this.a.a.setInputType(1);
      this.a.b.setInputType(1);
      this.a.a.getEtContent().setSelection(this.a.a.getEtContent().getText().length());
      this.a.b.getEtContent().setSelection(this.a.b.getEtContent().getText().length());
      return;
    }
    this.a.a.setInputType(129);
    this.a.b.setInputType(129);
    this.a.a.getEtContent().setSelection(this.a.a.getEtContent().getText().length());
    this.a.b.getEtContent().setSelection(this.a.b.getEtContent().getText().length());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.dd
 * JD-Core Version:    0.6.2
 */