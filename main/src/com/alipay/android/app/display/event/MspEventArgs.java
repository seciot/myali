package com.alipay.android.app.display.event;

import com.alipay.android.app.event.IEventArgs;
import com.alipay.android.app.event.IEventArgs.EventScript;
import com.alipay.android.lib.plusin.script.EventScriptType;

public class MspEventArgs
  implements IEventArgs
{
  private EventType mType;

  public MspEventArgs(EventType paramEventType)
  {
    this.mType = paramEventType;
  }

  public String getDataByKey(String paramString)
  {
    return null;
  }

  public IEventArgs.EventScript getEventScript(EventScriptType paramEventScriptType)
  {
    return null;
  }

  public final EventType getEventType()
  {
    return this.mType;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.event.MspEventArgs
 * JD-Core Version:    0.6.2
 */