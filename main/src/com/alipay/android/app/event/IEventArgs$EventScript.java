package com.alipay.android.app.event;

import com.alipay.android.lib.plusin.script.EventScriptOperation;

public final class IEventArgs$EventScript
{
  private EventScriptOperation a;
  private String b;
  private Object[] c;

  public IEventArgs$EventScript(EventScriptOperation paramEventScriptOperation, String paramString)
  {
    this.a = paramEventScriptOperation;
    this.b = paramString;
  }

  public final EventScriptOperation a()
  {
    return this.a;
  }

  public final void a(Object[] paramArrayOfObject)
  {
    this.a = EventScriptOperation.b;
    this.c = paramArrayOfObject;
  }

  public final String b()
  {
    return this.b;
  }

  public final Object[] c()
  {
    return this.c;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.event.IEventArgs.EventScript
 * JD-Core Version:    0.6.2
 */