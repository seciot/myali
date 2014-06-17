package com.alipay.android.app.pay;

import android.app.Activity;
import android.widget.Toast;

class ActivityWindowScriptable$11
  implements Runnable
{
  ActivityWindowScriptable$11(ActivityWindowScriptable paramActivityWindowScriptable, String paramString)
  {
  }

  public void run()
  {
    if (ActivityWindowScriptable.c(this.this$0) == null)
      ActivityWindowScriptable.a(this.this$0, Toast.makeText(ActivityWindowScriptable.d(this.this$0).getApplicationContext(), this.val$message, 0));
    ActivityWindowScriptable.c(this.this$0).setGravity(17, 0, 0);
    ActivityWindowScriptable.c(this.this$0).setText(this.val$message);
    ActivityWindowScriptable.c(this.this$0).setDuration(0);
    ActivityWindowScriptable.c(this.this$0).show();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.ActivityWindowScriptable.11
 * JD-Core Version:    0.6.2
 */