package com.alipay.mobile.commonui.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;

public class APDialog extends Dialog
  implements APViewInterface
{
  public APDialog(Context paramContext)
  {
    super(paramContext);
  }

  public APDialog(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
  }

  public APDialog(Context paramContext, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    super(paramContext, paramBoolean, paramOnCancelListener);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APDialog
 * JD-Core Version:    0.6.2
 */