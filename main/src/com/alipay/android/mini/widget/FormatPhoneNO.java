package com.alipay.android.mini.widget;

import android.text.TextWatcher;
import android.widget.EditText;

public final class FormatPhoneNO
{
  private int a = 3;
  private EditText b;
  private TextWatcher c = new c(this);

  public final void a(EditText paramEditText)
  {
    this.b = paramEditText;
    this.b.addTextChangedListener(this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.FormatPhoneNO
 * JD-Core Version:    0.6.2
 */