package com.alipay.android.app.display.uielement;

import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.event.IEventArgs.EventScript;
import com.alipay.android.lib.plusin.script.EventScriptOperation;
import com.alipay.android.lib.plusin.script.EventScriptType;

final class h extends MspEventArgs
{
  h(g paramg, EventType paramEventType, boolean paramBoolean)
  {
    super(paramEventType);
  }

  public final IEventArgs.EventScript getEventScript(EventScriptType paramEventScriptType)
  {
    if (this.a);
    for (String str = this.b.a.a(EventType.d); ; str = this.b.a.a(EventType.e))
      return new IEventArgs.EventScript(EventScriptOperation.a, str);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.h
 * JD-Core Version:    0.6.2
 */