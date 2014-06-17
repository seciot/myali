package com.alipay.android.mini.event;

import com.alipay.android.app.event.IEventArgs;
import com.alipay.android.app.event.IEventArgs.EventScript;
import com.alipay.android.lib.plusin.script.EventScriptType;

public class MiniEventArgs
  implements IEventArgs
{
  private ActionType a;

  public MiniEventArgs(ActionType paramActionType)
  {
    this.a = paramActionType;
  }

  public String getDataByKey(String paramString)
  {
    if (this.a == null);
    do
    {
      return null;
      if ("name".equals(paramString))
        return this.a.e();
      if ("host".equals(paramString))
        return this.a.f();
      if ("params".equals(paramString))
        return this.a.m();
      if ("enctype".equals(paramString))
        return this.a.h();
      if ("request_param".equals(paramString))
        return this.a.i();
      if ("validate".equals(paramString))
        return String.valueOf(this.a.j());
      if ("https".equals(paramString))
        return String.valueOf(this.a.k());
      if ("formSubmit".equals(paramString))
        return String.valueOf(this.a.l());
      if ("namespace".equals(paramString))
        return this.a.c();
      if ("apiVersion".equals(paramString))
        return this.a.d();
    }
    while (!"apiName".equals(paramString));
    return this.a.b();
  }

  public IEventArgs.EventScript getEventScript(EventScriptType paramEventScriptType)
  {
    return null;
  }

  public ActionType getEventType()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.event.MiniEventArgs
 * JD-Core Version:    0.6.2
 */