package com.alipay.android.mini.widget;

import android.text.TextWatcher;
import android.widget.EditText;

public final class FormatBankcard
{
  private int a = 4;
  private EditText b;
  private TextWatcher c = new b(this);

  public final void a(EditText paramEditText)
  {
    this.b = paramEditText;
    this.a = 4;
    this.b.addTextChangedListener(this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.FormatBankcard
 * JD-Core Version:    0.6.2
 */