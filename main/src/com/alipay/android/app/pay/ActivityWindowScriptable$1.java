package com.alipay.android.app.pay;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.OnContainerEventListener;
import com.alipay.android.app.display.uielement.UIButtonGroup.UIButtonItem;

class ActivityWindowScriptable$1
  implements DialogInterface.OnClickListener
{
  ActivityWindowScriptable$1(ActivityWindowScriptable paramActivityWindowScriptable, UIButtonGroup.UIButtonItem paramUIButtonItem)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ActivityWindowScriptable.1.1 local1 = new ActivityWindowScriptable.1.1(this, EventType.b);
    ActivityWindowScriptable.b(this.this$0).a(ActivityWindowScriptable.a(this.this$0), local1);
    paramDialogInterface.dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.ActivityWindowScriptable.1
 * JD-Core Version:    0.6.2
 */