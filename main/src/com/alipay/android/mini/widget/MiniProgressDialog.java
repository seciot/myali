package com.alipay.android.mini.widget;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.style;

public class MiniProgressDialog extends Dialog
{
  private TextView a;
  private CharSequence b;

  public MiniProgressDialog(Context paramContext)
  {
    super(paramContext, R.style.BundlesManager);
  }

  public final MiniProgressDialog a(CharSequence paramCharSequence)
  {
    if ((!TextUtils.isEmpty(paramCharSequence)) && (!TextUtils.equals(paramCharSequence, this.b)))
    {
      this.b = paramCharSequence;
      if (this.a != null)
        this.a.setText(this.b);
    }
    return this;
  }

  public final String a()
  {
    return this.b.toString();
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
 * Qualified Name:     com.alipay.android.mini.widget.MiniProgressDialog
 * JD-Core Version:    0.6.2
 */