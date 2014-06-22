package com.alipay.mobile.security.accountmanager.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeGetter;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;

final class bc
  implements TextWatcher
{
  bc(ForgotLoginPwdActivity paramForgotLoginPwdActivity)
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
    if (this.a.b.getVisibility() == 0)
      ForgotLoginPwdActivity.d(this.a, this.a.i.getInputedText().toString());
    ForgotLoginPwdActivity.v(this.a, this.a.j.getCheckCodeInput().getEtContent().getText().toString());
    if ((ForgotLoginPwdActivity.getBundleByComponentName(this.a) != null) && (!"".equals(ForgotLoginPwdActivity.getBundleByComponentName(this.a).trim())) && (ForgotLoginPwdActivity.d(this.a) != null) && (!"".equals(ForgotLoginPwdActivity.d(this.a).trim())))
    {
      this.a.k.setEnabled(true);
      ForgotLoginPwdActivity.i(this.a, this.a.m.getText().toString());
      if ((ForgotLoginPwdActivity.removeBundle(this.a) == null) || ("".equals(ForgotLoginPwdActivity.removeBundle(this.a).trim())))
        break label323;
      this.a.n.setEnabled(true);
      label188: ForgotLoginPwdActivity.d(this.a, this.a.o.getInputedText().toString());
      if ((ForgotLoginPwdActivity.f(this.a) == null) || ("".equals(ForgotLoginPwdActivity.f(this.a).trim())))
        break label337;
      this.a.p.setEnabled(true);
    }
    while (true)
    {
      ForgotLoginPwdActivity.e(this.a, this.a.q.getInputedText().toString());
      if ((ForgotLoginPwdActivity.g(this.a) == null) || ("".equals(ForgotLoginPwdActivity.g(this.a).trim())))
        break label351;
      this.a.s.setEnabled(true);
      return;
      this.a.k.setEnabled(false);
      break;
      label323: this.a.n.setEnabled(false);
      break label188;
      label337: this.a.p.setEnabled(false);
    }
    label351: this.a.s.setEnabled(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.bc
 * JD-Core Version:    0.6.2
 */