package com.alipay.android.app.monitor;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.android.app.sys.GlobalContext;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class TaskManager
{
  private static TaskManager a;
  private Context b;
  private HashMap c = new HashMap();
  private String d;

  public static TaskManager a()
  {
    if (a == null)
    {
      TaskManager localTaskManager = new TaskManager();
      a = localTaskManager;
      localTaskManager.b = GlobalContext.a().b();
    }
    return a;
  }

  protected final void a(SystemTimeTask paramSystemTimeTask)
  {
    if (paramSystemTimeTask != null)
    {
      paramSystemTimeTask.g();
      String str = paramSystemTimeTask.getClass().getCanonicalName();
      if (this.c.containsKey(str))
        this.c.remove(str);
    }
  }

  public final void a(String paramString)
  {
    if (paramString == null);
    try
    {
      g localg;
      if ((!"".equals(paramString)) && ("monitor".equals(paramString)))
      {
        localg = new g(this.b);
        if (localg != null)
          break label48;
      }
      while (true)
      {
        return;
        localg = null;
        break;
        label48: String str = localg.getClass().getCanonicalName();
        if (!this.c.containsKey(str))
          this.c.put(str, localg);
        ((SystemTimeTask)this.c.get(str)).a();
      }
    }
    finally
    {
    }
  }

  public final void b()
  {
    try
    {
      Iterator localIterator = this.c.values().iterator();
      while (localIterator.hasNext())
      {
        SystemTimeTask localSystemTimeTask = (SystemTimeTask)localIterator.next();
        if (localSystemTimeTask != null)
          try
          {
            localSystemTimeTask.e();
          }
          catch (Exception localException)
          {
          }
      }
      return;
    }
    finally
    {
    }
  }

  public final void b(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      this.d = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.monitor.TaskManager
 * JD-Core Version:    0.6.2
 */