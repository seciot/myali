package com.alipay.android.app.pay;

import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.event.IEventArgs.EventScript;
import com.alipay.android.lib.plusin.script.EventScriptOperation;
import com.alipay.android.lib.plusin.script.EventScriptType;

class ActivityWindowScriptable$8$1 extends MspEventArgs
{
  ActivityWindowScriptable$8$1(ActivityWindowScriptable.8 param8, EventType paramEventType)
  {
    super(paramEventType);
  }

  public IEventArgs.EventScript getEventScript(EventScriptType paramEventScriptType)
  {
    return new IEventArgs.EventScript(EventScriptOperation.b, this.this$1.val$function1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.ActivityWindowScriptable.8.1
 * JD-Core Version:    0.6.2
 */