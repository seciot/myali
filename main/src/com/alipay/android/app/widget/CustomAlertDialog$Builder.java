package com.alipay.android.app.widget;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.ListAdapter;

public class CustomAlertDialog$Builder
{
  private final l a = new l((byte)0);

  public CustomAlertDialog$Builder(Context paramContext)
  {
    this.a.d = paramContext;
  }

  public final Builder a(View paramView)
  {
    this.a.e = paramView;
    return this;
  }

  public final Builder a(ListAdapter paramListAdapter, int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.r = true;
    this.a.o = paramListAdapter;
    this.a.q = paramOnClickListener;
    this.a.p = paramInt;
    return this;
  }

  public final Builder a(CharSequence paramCharSequence)
  {
    this.a.a = paramCharSequence;
    return this;
  }

  public final Builder a(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.h = paramCharSequence;
    this.a.j = paramOnClickListener;
    return this;
  }

  public final void a()
  {
    this.a.n = true;
  }

  public final Builder b(CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.a.i = paramCharSequence;
    this.a.k = paramOnClickListener;
    return this;
  }

  public final CustomAlertDialog b()
  {
    CustomAlertDialog localCustomAlertDialog = new CustomAlertDialog(this.a);
    if (this.a.h != null)
      localCustomAlertDialog.a(-1, this.a.h, this.a.j, null);
    if (this.a.i != null)
      localCustomAlertDialog.a(-2, this.a.i, this.a.k, null);
    localCustomAlertDialog.setCanceledOnTouchOutside(false);
    localCustomAlertDialog.setCancelable(this.a.n);
    localCustomAlertDialog.setOnCancelListener(this.a.f);
    if (this.a.g != null)
      localCustomAlertDialog.setOnKeyListener(this.a.g);
    localCustomAlertDialog.show();
    return localCustomAlertDialog;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.CustomAlertDialog.Builder
 * JD-Core Version:    0.6.2
 */