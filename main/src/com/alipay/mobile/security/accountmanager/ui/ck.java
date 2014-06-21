package com.alipay.mobile.security.accountmanager.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APInputBox;

final class ck
  implements TextWatcher
{
  ck(ModifyLoginPwdActivity paramModifyLoginPwdActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    String str1 = this.a.b.getInputedText().toString();
    String str2 = this.a.a.getInputedText().toString();
    if ((str1 != null) && (!"".equals(str1)) && (str2 != null) && (!"".equals(str2.trim())))
      this.a.c.setEnabled(true);
    while (true)
    {
      ModifyLoginPwdActivity.a(this.a, this.a.i.getText().toString());
      if ((ModifyLoginPwdActivity.getBundle(this.a) == null) || ("".equals(ModifyLoginPwdActivity.getBundle(this.a))))
        break;
      this.a.d.setEnabled(true);
      return;
      this.a.c.setEnabled(false);
    }
    this.a.d.setEnabled(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ck
 * JD-Core Version:    0.6.2
 */