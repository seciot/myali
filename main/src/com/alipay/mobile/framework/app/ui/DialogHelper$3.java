package com.alipay.mobile.framework.app.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface.OnCancelListener;
import com.alipay.mobile.commonui.widget.APGenericProgressDialog;

class DialogHelper$3
  implements Runnable
{
  DialogHelper$3(DialogHelper paramDialogHelper, String paramString, boolean paramBoolean1, boolean paramBoolean2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
  }

  public void run()
  {
    if ((DialogHelper.access$0(this.this$0) != null) && (!DialogHelper.access$0(this.this$0).isFinishing()))
    {
      DialogHelper.access$1(this.this$0, new APGenericProgressDialog(DialogHelper.access$0(this.this$0)));
      DialogHelper.access$2(this.this$0).setMessage(this.a);
      ((APGenericProgressDialog)DialogHelper.access$2(this.this$0)).setProgressVisiable(this.b);
      DialogHelper.access$2(this.this$0).setCancelable(this.c);
      DialogHelper.access$2(this.this$0).setOnCancelListener(this.d);
      DialogHelper.access$2(this.this$0).setCanceledOnTouchOutside(false);
    }
    try
    {
      DialogHelper.access$2(this.this$0).show();
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("DialogHelper.showProgressDialog(): exception=").append(localException).toString();
      DialogHelper.access$1(this.this$0, null);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ui.DialogHelper.3
 * JD-Core Version:    0.6.2
 */