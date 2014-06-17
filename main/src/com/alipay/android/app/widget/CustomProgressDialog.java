package com.alipay.android.app.widget;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.style;

public class CustomProgressDialog extends Dialog
{
  private TextView a;
  private CharSequence b;

  public CustomProgressDialog(Context paramContext)
  {
    super(paramContext, R.style.b);
  }

  public final CustomProgressDialog a(CharSequence paramCharSequence)
  {
    if ((!TextUtils.isEmpty(paramCharSequence)) && (!TextUtils.equals(paramCharSequence, this.b)))
    {
      this.b = paramCharSequence;
      if (this.a != null)
        this.a.setText(this.b);
    }
    return this;
  }

  public void dismiss()
  {
    if (super.isShowing())
      super.dismiss();
    this.a = null;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.I);
    this.a = ((TextView)findViewById(16908308));
    if (!TextUtils.isEmpty(this.b))
      this.a.setText(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.CustomProgressDialog
 * JD-Core Version:    0.6.2
 */