package com.alipay.android.app.pay;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.OnContainerEventListener;

class ActivityWindowScriptable$8
  implements DialogInterface.OnClickListener
{
  ActivityWindowScriptable$8(ActivityWindowScriptable paramActivityWindowScriptable, String paramString)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.this$0.c();
    ActivityWindowScriptable.8.1 local1 = new ActivityWindowScriptable.8.1(this, EventType.b);
    ActivityWindowScriptable.b(this.this$0).a(null, local1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.ActivityWindowScriptable.8
 * JD-Core Version:    0.6.2
 */