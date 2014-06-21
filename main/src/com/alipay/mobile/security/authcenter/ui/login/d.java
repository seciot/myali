package com.alipay.mobile.security.authcenter.ui.login;

import android.text.Editable;
import android.text.TextWatcher;

final class d
  implements TextWatcher
{
  d(AlipayUserLoginFragment paramAlipayUserLoginFragment)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (AlipayUserLoginFragment.getBundle(this.a))
    {
      AlipayUserLoginFragment.b(this.a);
      paramEditable.clear();
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.d
 * JD-Core Version:    0.6.2
 */