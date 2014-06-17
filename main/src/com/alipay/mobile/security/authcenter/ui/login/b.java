package com.alipay.mobile.security.authcenter.ui.login;

import android.text.Editable;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.widget.EditText;

final class b
  implements View.OnFocusChangeListener
{
  b(a parama)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if ((a.a(this.a).getText().length() > 0) && (paramBoolean))
    {
      this.a.a(true);
      return;
    }
    this.a.a(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.b
 * JD-Core Version:    0.6.2
 */