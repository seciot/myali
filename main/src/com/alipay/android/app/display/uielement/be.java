package com.alipay.android.app.display.uielement;

import com.alipay.android.app.display.event.EventType;
import com.alipay.android.app.display.event.MspEventArgs;
import com.alipay.android.app.event.IEventArgs.EventScript;
import com.alipay.android.lib.plusin.script.EventScriptOperation;
import com.alipay.android.lib.plusin.script.EventScriptType;

final class be extends MspEventArgs
{
  be(bd parambd, EventType paramEventType)
  {
    super(paramEventType);
  }

  public final IEventArgs.EventScript getEventScript(EventScriptType paramEventScriptType)
  {
    IEventArgs.EventScript localEventScript = new IEventArgs.EventScript(EventScriptOperation.b, this.a.a.a(getEventType()));
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(UILabel.c(this.a.a));
    localEventScript.a(arrayOfObject);
    return localEventScript;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.be
 * JD-Core Version:    0.6.2
 */