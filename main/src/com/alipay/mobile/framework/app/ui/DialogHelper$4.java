package com.alipay.mobile.framework.app.ui;

import android.app.Activity;
import android.app.AlertDialog;

class DialogHelper$4
  implements Runnable
{
  DialogHelper$4(DialogHelper paramDialogHelper)
  {
  }

  public void run()
  {
    if ((DialogHelper.access$2(this.this$0) != null) && (DialogHelper.access$2(this.this$0).isShowing()) && (!DialogHelper.access$0(this.this$0).isFinishing()));
    try
    {
      DialogHelper.access$2(this.this$0).dismiss();
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("DialogHelper.dismissProgressDialog(): exception=").append(localException).toString();
      return;
    }
    finally
    {
      DialogHelper.access$1(this.this$0, null);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ui.DialogHelper.4
 * JD-Core Version:    0.6.2
 */