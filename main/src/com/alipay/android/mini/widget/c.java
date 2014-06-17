package com.alipay.android.mini.widget;

import android.text.Editable;
import android.text.Selection;
import android.text.TextWatcher;
import android.widget.EditText;

final class c
  implements TextWatcher
{
  int a = 0;
  int b = 0;
  boolean c = false;
  int d = 0;
  int e = 0;
  private char[] g;
  private StringBuffer h = new StringBuffer();

  c(FormatPhoneNO paramFormatPhoneNO)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    String str;
    if (this.c)
    {
      this.d = FormatPhoneNO.b(this.f).getSelectionEnd();
      int i = 0;
      while (i < this.h.length())
        if (this.h.charAt(i) == ' ')
          this.h.deleteCharAt(i);
        else
          i++;
      int j = 0;
      for (int k = 0; k < this.h.length(); k++)
        if ((k == 3) || (k == 8))
        {
          this.h.insert(k, ' ');
          j++;
        }
      if (j > this.e)
        this.d += j - this.e;
      this.g = new char[this.h.length()];
      this.h.getChars(0, this.h.length(), this.g, 0);
      str = this.h.toString();
      if (this.d <= str.length())
        break label241;
      this.d = str.length();
    }
    while (true)
    {
      FormatPhoneNO.b(this.f).setText(str);
      Editable localEditable = FormatPhoneNO.b(this.f).getText();
      try
      {
        Selection.setSelection(localEditable, this.d);
        label235: this.c = false;
        return;
        label241: if (this.d >= 0)
          continue;
        this.d = 0;
      }
      catch (Throwable localThrowable)
      {
        break label235;
      }
    }
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = 0;
    this.a = paramCharSequence.length();
    if (this.h.length() > 0)
      this.h.delete(0, this.h.length());
    this.e = 0;
    while (i < paramCharSequence.length())
    {
      if (paramCharSequence.charAt(i) == ' ')
        this.e = (1 + this.e);
      i++;
    }
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    this.b = paramCharSequence.length();
    this.h.append(paramCharSequence.toString());
    if ((this.b == this.a) || (this.b <= -1 + FormatPhoneNO.a(this.f)) || (this.c))
    {
      this.c = false;
      return;
    }
    this.c = true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.c
 * JD-Core Version:    0.6.2
 */