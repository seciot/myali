package com.alipay.mobile.security.accountmanager.ui;

import android.text.Editable;
import android.text.TextWatcher;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APInputBox;

final class z
  implements TextWatcher
{
  z(BindPhoneActivity paramBindPhoneActivity)
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
    BindPhoneActivity.v(this.a, this.a.g.getInputedText().toString());
    if ((BindPhoneActivity.f(this.a) != null) && (!"".equals(BindPhoneActivity.f(this.a))))
    {
      this.a.h.setEnabled(true);
      BindPhoneActivity.d(this.a, this.a.i.getInputedText().toString());
      if ((BindPhoneActivity.g(this.a) == null) || ("".equals(BindPhoneActivity.g(this.a))))
        break label254;
      BindPhoneActivity.d(this.a, BindPhoneActivity.g(this.a).replace(" ", ""));
      this.a.j.setEnabled(true);
    }
    while (true)
    {
      BindPhoneActivity.i(this.a, this.a.l.getText().toString());
      BindPhoneActivity.d(this.a, this.a.m.getInputedText().toString());
      if ((BindPhoneActivity.h(this.a) == null) || ("".equals(BindPhoneActivity.h(this.a))) || (BindPhoneActivity.i(this.a) == null) || ("".equals(BindPhoneActivity.i(this.a))))
        break label268;
      this.a.n.setEnabled(true);
      return;
      this.a.h.setEnabled(false);
      break;
      label254: this.a.j.setEnabled(false);
    }
    label268: this.a.n.setEnabled(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.z
 * JD-Core Version:    0.6.2
 */