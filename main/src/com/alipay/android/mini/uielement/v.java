package com.alipay.android.mini.uielement;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.widget.CustomEditText;

final class v
  implements TextWatcher
{
  v(UIInput paramUIInput)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    this.a.a(this, ActionType.t);
    if (UIInput.a(this.a).getText().toString().length() > 0)
    {
      if (UIInput.d(this.a).getVisibility() == 0)
        UIInput.d(this.a).setVisibility(8);
      UIInput.b(this.a, UIInput.a(this.a));
      return;
    }
    UIInput.a(this.a, UIInput.a(this.a));
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.v
 * JD-Core Version:    0.6.2
 */