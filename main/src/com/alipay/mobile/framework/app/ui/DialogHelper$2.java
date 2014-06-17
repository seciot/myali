package com.alipay.mobile.framework.app.ui;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.alipay.mobile.ui.R.layout;

class DialogHelper$2
  implements Runnable
{
  DialogHelper$2(DialogHelper paramDialogHelper, String paramString, int paramInt)
  {
  }

  public void run()
  {
    if (DialogHelper.access$0(this.this$0) != null)
    {
      Context localContext = DialogHelper.access$0(this.this$0).getApplication().getBaseContext();
      DialogHelper.access$3(this.this$0, new Toast(localContext));
      View localView = LayoutInflater.from(localContext).inflate(R.layout.transient_notification, null);
      ((TextView)localView.findViewById(16908299)).setText(this.a);
      DialogHelper.access$4(this.this$0).setView(localView);
      DialogHelper.access$4(this.this$0).setDuration(this.b);
      DialogHelper.access$4(this.this$0).setGravity(17, 0, 0);
    }
    try
    {
      DialogHelper.access$4(this.this$0).show();
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("DialogHelper.toast(): exception=").append(localException).toString();
      DialogHelper.access$3(this.this$0, null);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ui.DialogHelper.2
 * JD-Core Version:    0.6.2
 */