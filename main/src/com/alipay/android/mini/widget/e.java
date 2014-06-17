package com.alipay.android.mini.widget;

import android.text.Editable;
import android.text.TextWatcher;

final class e
  implements TextWatcher
{
  e(MiniLabelInput paramMiniLabelInput)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    if (MiniLabelInput.access$000(this.a).getText().toString().length() > 0)
    {
      if ((MiniLabelInput.access$000(this.a).isEnabled()) && (MiniLabelInput.access$000(this.a).isFocused()))
      {
        MiniLabelInput.access$100(this.a);
        return;
      }
      MiniLabelInput.access$000(this.a).removeIcon();
      return;
    }
    MiniLabelInput.access$200(this.a);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.e
 * JD-Core Version:    0.6.2
 */