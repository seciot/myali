package com.alipay.android.app.widget;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

public final class FormatBankcard
{
  private int a = 4;
  private EditText b;
  private TextWatcher c = new q(this);

  public final String a()
  {
    Editable localEditable = this.b.getText();
    if (localEditable.length() == 0)
      return "";
    return localEditable.toString().replaceAll(" ", "");
  }

  public final void a(EditText paramEditText, int paramInt)
  {
    this.b = paramEditText;
    this.a = paramInt;
    this.b.addTextChangedListener(this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.FormatBankcard
 * JD-Core Version:    0.6.2
 */