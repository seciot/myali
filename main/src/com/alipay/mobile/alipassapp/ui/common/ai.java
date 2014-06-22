package com.alipay.mobile.alipassapp.ui.common;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import com.alipay.mobile.alipassapp.R.string;

public final class ai
{
  public static void put(Context paramContext, DialogInterface.OnClickListener paramOnClickListener)
  {
    new AlertDialog.Builder(paramContext).setMessage(paramContext.getResources().getString(R.string.alipass_delete_message)).setPositiveButton(paramContext.getResources().getString(R.string.alipass_ok), paramOnClickListener).setNegativeButton(paramContext.getResources().getString(R.string.alipass_cancel), null).create().show();
  }

  public static void a(Context paramContext, DialogInterface.OnClickListener paramOnClickListener, int paramInt)
  {
    new AlertDialog.Builder(paramContext).setMessage(paramContext.getResources().getString(paramInt)).setPositiveButton(paramContext.getResources().getString(R.string.alipass_ok), paramOnClickListener).setCancelable(false).create().show();
  }

  public static void a(Context paramContext, DialogInterface.OnClickListener paramOnClickListener1, DialogInterface.OnClickListener paramOnClickListener2)
  {
    new AlertDialog.Builder(paramContext).setMessage(paramContext.getResources().getString(R.string.alipass_update_msg)).setPositiveButton(paramContext.getResources().getString(R.string.alipass_ok), paramOnClickListener1).setCancelable(false).setNegativeButton(paramContext.getResources().getString(R.string.alipass_cancel), paramOnClickListener2).create().show();
  }

  public static void b(Context paramContext, DialogInterface.OnClickListener paramOnClickListener)
  {
    new AlertDialog.Builder(paramContext).setMessage(paramContext.getResources().getString(R.string.alipass_download_message)).setPositiveButton(paramContext.getResources().getString(R.string.alipass_download_ok), paramOnClickListener).setNegativeButton(paramContext.getResources().getString(R.string.alipass_cancel), null).create().show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ai
 * JD-Core Version:    0.6.2
 */