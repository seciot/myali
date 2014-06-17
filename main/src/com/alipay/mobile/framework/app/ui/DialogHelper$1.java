package com.alipay.mobile.framework.app.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface.OnClickListener;

class DialogHelper$1
  implements Runnable
{
  DialogHelper$1(DialogHelper paramDialogHelper, String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2, Boolean paramBoolean)
  {
  }

  public void run()
  {
    if ((DialogHelper.access$0(this.this$0) != null) && (!DialogHelper.access$0(this.this$0).isFinishing()))
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(DialogHelper.access$0(this.this$0));
      if (this.a != null)
        localBuilder.setTitle(this.a);
      if (this.b != null)
        localBuilder.setMessage(this.b);
      if (this.c != null)
        localBuilder.setPositiveButton(this.c, this.d);
      if (this.e != null)
        localBuilder.setNegativeButton(this.e, this.f);
      DialogHelper.access$1(this.this$0, localBuilder.create());
    }
    try
    {
      DialogHelper.access$2(this.this$0).show();
      DialogHelper.access$2(this.this$0).setCanceledOnTouchOutside(this.g.booleanValue());
      DialogHelper.access$2(this.this$0).setCancelable(false);
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("DialogHelper.alert(): exception=").append(localException).toString();
      DialogHelper.access$1(this.this$0, null);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ui.DialogHelper.1
 * JD-Core Version:    0.6.2
 */