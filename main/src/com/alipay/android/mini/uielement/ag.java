package com.alipay.android.mini.uielement;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.event.MiniEventArgs;

final class ag
  implements TextWatcher
{
  ag(UISimplePassword paramUISimplePassword)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    UISimplePassword.a(this.a, UISimplePassword.a(this.a).getText().toString());
    UISimplePassword.a(this.a, UISimplePassword.b(this.a).length());
    if ((UISimplePassword.b(this.a).length() == 6) && (UISimplePassword.c(this.a)))
      this.a.a(this.a, ActionType.a(this.a.n()));
    this.a.a(this, new MiniEventArgs(ActionType.t));
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.ag
 * JD-Core Version:    0.6.2
 */