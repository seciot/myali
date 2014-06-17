package com.alipay.mobile.framework.app.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;

public class DialogHelper
{
  protected static final String TAG = "DialogHelper";
  private Activity a;
  private AlertDialog b;
  private Toast c;

  public DialogHelper(Activity paramActivity)
  {
    this.a = paramActivity;
  }

  public void alert(String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2)
  {
    alert(paramString1, paramString2, paramString3, paramOnClickListener1, paramString4, paramOnClickListener2, Boolean.valueOf(false));
  }

  public void alert(String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2, Boolean paramBoolean)
  {
    dismissProgressDialog();
    this.a.runOnUiThread(new DialogHelper.1(this, paramString1, paramString2, paramString3, paramOnClickListener1, paramString4, paramOnClickListener2, paramBoolean));
  }

  public void dismissProgressDialog()
  {
    this.a.runOnUiThread(new DialogHelper.4(this));
  }

  public void showProgressDialog(String paramString)
  {
    showProgressDialog(paramString, true, null, true);
  }

  public void showProgressDialog(String paramString, boolean paramBoolean1, DialogInterface.OnCancelListener paramOnCancelListener, boolean paramBoolean2)
  {
    dismissProgressDialog();
    this.a.runOnUiThread(new DialogHelper.3(this, paramString, paramBoolean2, paramBoolean1, paramOnCancelListener));
  }

  public void showProgressDialog(boolean paramBoolean, String paramString)
  {
    showProgressDialog(paramString, true, null, paramBoolean);
  }

  public void toast(String paramString, int paramInt)
  {
    this.a.runOnUiThread(new DialogHelper.2(this, paramString, paramInt));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ui.DialogHelper
 * JD-Core Version:    0.6.2
 */