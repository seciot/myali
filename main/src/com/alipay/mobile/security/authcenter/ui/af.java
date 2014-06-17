package com.alipay.mobile.security.authcenter.ui;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.CheckBox;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;

final class af
  implements TextWatcher
{
  af(RegisterDownSmsFragment paramRegisterDownSmsFragment)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if ((paramEditable.toString().length() >= 13) && (this.a.e.getCheckBox().isChecked()))
    {
      this.a.f.setEnabled(true);
      return;
    }
    this.a.f.setEnabled(false);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.af
 * JD-Core Version:    0.6.2
 */