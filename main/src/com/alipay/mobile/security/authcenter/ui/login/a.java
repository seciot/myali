package com.alipay.mobile.security.authcenter.ui.login;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.commonui.widget.APInputBox;

public final class a
{
  private EditText a;
  private APImageButton b;
  private APInputBox c;

  public a(EditText paramEditText, APImageButton paramAPImageButton, APInputBox paramAPInputBox)
  {
    this.a = paramEditText;
    this.b = paramAPImageButton;
    this.c = paramAPInputBox;
  }

  public final void a()
  {
    this.a.addTextChangedListener(new a((byte)0));
    this.a.setOnFocusChangeListener(new b(this));
    this.b.setOnClickListener(new c(this));
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.b.setVisibility(0);
      return;
    }
    this.b.setVisibility(8);
  }

  private final class a
    implements TextWatcher
  {
    private a()
    {
    }

    public final void afterTextChanged(Editable paramEditable)
    {
      if ((paramEditable.length() != 0) && (a.a(a.this).hasFocus()))
      {
        a.this.a(true);
        return;
      }
      a.this.a(false);
    }

    public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
    }

    public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.a
 * JD-Core Version:    0.6.2
 */