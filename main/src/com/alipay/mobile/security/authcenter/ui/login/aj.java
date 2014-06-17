package com.alipay.mobile.security.authcenter.ui.login;

import android.text.Editable;
import android.text.TextWatcher;
import com.alipay.mobile.commonui.widget.APButton;

final class aj
  implements TextWatcher
{
  aj(UserLoginFragment paramUserLoginFragment)
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
    APButton localAPButton = this.a.i;
    if (paramCharSequence.length() == 6);
    for (boolean bool = true; ; bool = false)
    {
      localAPButton.setEnabled(bool);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.aj
 * JD-Core Version:    0.6.2
 */