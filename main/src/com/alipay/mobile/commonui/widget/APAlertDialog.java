package com.alipay.mobile.commonui.widget;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;

public class APAlertDialog extends AlertDialog
  implements APViewInterface
{
  public APAlertDialog(Context paramContext)
  {
    super(paramContext);
  }

  public APAlertDialog(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }

  public APAlertDialog(Context paramContext, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    super(paramContext, paramBoolean, paramOnCancelListener);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APAlertDialog
 * JD-Core Version:    0.6.2
 */