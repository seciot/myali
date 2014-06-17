package com.alipay.android.app.pay;

import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.event.IEventArgs.EventScript;
import com.alipay.android.lib.plusin.script.EventScriptOperation;
import com.alipay.android.lib.plusin.script.EventScriptType;

final class h extends MspEventArgs
{
  h(MainActivity paramMainActivity, EventType paramEventType)
  {
    super(paramEventType);
  }

  public final IEventArgs.EventScript getEventScript(EventScriptType paramEventScriptType)
  {
    IEventArgs.EventScript localEventScript = new IEventArgs.EventScript(EventScriptOperation.b, MainActivity.a(this.a));
    localEventScript.a(new Object[] { "close" });
    return localEventScript;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.h
 * JD-Core Version:    0.6.2
 */