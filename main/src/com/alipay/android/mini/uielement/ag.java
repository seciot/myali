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
    UISimplePassword.v(this.a, UISimplePassword.getBundle(this.a).getText().toString());
    UISimplePassword.v(this.a, UISimplePassword.b(this.a).length());
    if ((UISimplePassword.b(this.a).length() == 6) && (UISimplePassword.getBundleByComponentName(this.a)))
      this.a.v(this.a, ActionType.getBundle(this.a.getAllComponentNames()));
    this.a.v(this, new MiniEventArgs(ActionType.t));
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