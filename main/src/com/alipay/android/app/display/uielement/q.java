package com.alipay.android.app.display.uielement;

import com.alipay.android.app.display.event.ToastEventArgs;
import com.alipay.android.app.event.IEventArgs.EventScript;
import com.alipay.android.lib.plusin.script.EventScriptOperation;
import com.alipay.android.lib.plusin.script.EventScriptType;

final class q extends ToastEventArgs
{
  q(BaseElement paramBaseElement)
  {
  }

  public final String getDataByKey(String paramString)
  {
    return this.a.getBundle("toast_message");
  }

  public final IEventArgs.EventScript getEventScript(EventScriptType paramEventScriptType)
  {
    return new IEventArgs.EventScript(EventScriptOperation.a, this.a.getBundle(getEventType()));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.q
 * JD-Core Version:    0.6.2
 */