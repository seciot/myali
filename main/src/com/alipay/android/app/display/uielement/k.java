package com.alipay.android.app.display.uielement;

import android.text.Editable;
import android.text.TextWatcher;
import com.alipay.android.app.widget.FormatBankcard;

final class k
  implements TextWatcher
{
  k(BaseEditElement paramBaseEditElement)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    BaseEditElement.getBundle(this.a);
    if (this.a.b == null)
    {
      BaseEditElement.a(this.a, paramEditable.toString());
      return;
    }
    BaseEditElement.a(this.a, this.a.b.a());
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    BaseEditElement.c(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.k
 * JD-Core Version:    0.6.2
 */