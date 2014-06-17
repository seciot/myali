package com.alipay.mobile.framework.app.ui;

import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;

public abstract interface ActivityResponsable
{
  public abstract void alert(String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2);

  public abstract void alert(String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2, Boolean paramBoolean);

  public abstract void dismissProgressDialog();

  public abstract void showProgressDialog(String paramString);

  public abstract void showProgressDialog(String paramString, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener);

  public abstract void toast(String paramString, int paramInt);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ui.ActivityResponsable
 * JD-Core Version:    0.6.2
 */