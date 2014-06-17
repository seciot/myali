package com.alipay.android.app.pay;

import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.display.uielement.UIButtonGroup.UIButtonItem;
import com.alipay.android.app.event.IEventArgs.EventScript;
import com.alipay.android.lib.plusin.script.EventScriptOperation;
import com.alipay.android.lib.plusin.script.EventScriptType;
import java.util.Map;

class ActivityWindowScriptable$4$1 extends MspEventArgs
{
  ActivityWindowScriptable$4$1(ActivityWindowScriptable.4 param4, EventType paramEventType)
  {
    super(paramEventType);
  }

  public IEventArgs.EventScript getEventScript(EventScriptType paramEventScriptType)
  {
    if (this.this$1.val$positiveButton.e == null)
      return null;
    return new IEventArgs.EventScript(EventScriptOperation.a, (String)this.this$1.val$positiveButton.e.get(getEventType()));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.ActivityWindowScriptable.4.1
 * JD-Core Version:    0.6.2
 */