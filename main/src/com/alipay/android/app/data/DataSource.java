package com.alipay.android.app.data;

import com.alipay.android.app.net.Response;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.protocol.FrameData;
import com.alipay.android.lib.plusin.ui.WindowData;
import java.util.ArrayList;
import java.util.EmptyStackException;
import java.util.Iterator;
import java.util.Stack;

public class DataSource
{
  private Stack a = new Stack();
  private ArrayList b = new ArrayList();
  private ValidatedFrameData c;

  public DataSource(ValidatedFrameData paramValidatedFrameData)
  {
    this.c = paramValidatedFrameData;
  }

  private void b(FrameData paramFrameData)
  {
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
      ((DataSourceObserver)localIterator.next()).a(paramFrameData);
  }

  private WindowData h()
  {
    WindowData localWindowData = (WindowData)this.a.pop();
    localWindowData.dispose();
    return localWindowData;
  }

  private void i()
  {
    if (!this.a.isEmpty())
      this.c.b((FrameData)this.a.peek());
  }

  private void j()
  {
    if (!this.a.isEmpty())
    {
      WindowData localWindowData = (WindowData)this.a.peek();
      localWindowData.o();
      this.c.a(localWindowData);
      b(localWindowData);
    }
  }

  public final FrameData a()
  {
    if (!this.a.isEmpty())
      return (FrameData)this.a.peek();
    return null;
  }

  public final void a(DataSourceObserver paramDataSourceObserver)
  {
    if (paramDataSourceObserver != null)
      this.b.add(paramDataSourceObserver);
  }

  public final void a(FrameData paramFrameData)
  {
    if (paramFrameData == null);
    do
    {
      return;
      this.c.a(paramFrameData);
    }
    while (!(paramFrameData instanceof WindowData));
    WindowData localWindowData = (WindowData)paramFrameData;
    if ((localWindowData.c() != 10) && (localWindowData.c() != 7))
      this.a.push(localWindowData);
    b(localWindowData);
  }

  public final boolean b()
  {
    if (c())
      return true;
    Object localObject1;
    if (!this.a.isEmpty())
    {
      boolean bool1 = ((WindowData)this.a.peek()).i().g();
      localObject1 = null;
      if (!bool1);
    }
    else
    {
      return true;
    }
    while (true)
    {
      Object localObject2;
      localObject1 = localObject2;
      try
      {
        h();
        if (!this.a.isEmpty())
          localObject2 = (WindowData)this.a.peek();
        while (true)
        {
          try
          {
            if (!((WindowData)localObject2).d())
              break;
            boolean bool2 = ((WindowData)localObject2).p();
            if (bool2)
              break;
            j();
            if (localObject2 != null)
              break label117;
            return true;
            return true;
          }
          catch (EmptyStackException localEmptyStackException2)
          {
          }
          LogUtils.a(localEmptyStackException2);
        }
        label117: return false;
      }
      catch (EmptyStackException localEmptyStackException1)
      {
        while (true)
        {
          localObject2 = localObject1;
          Object localObject3 = localEmptyStackException1;
        }
      }
    }
  }

  public final boolean c()
  {
    boolean bool;
    do
    {
      if (this.a.isEmpty())
        return true;
      bool = ((WindowData)this.a.peek()).d();
      if (!bool)
        h();
    }
    while (!bool);
    i();
    return this.a.isEmpty();
  }

  public final boolean d()
  {
    Object localObject1 = null;
    try
    {
      boolean bool;
      do
      {
        if (this.a.isEmpty())
          return true;
        WindowData localWindowData1 = h();
        if (localObject1 == null)
          localObject1 = localWindowData1;
        if (this.a.isEmpty())
          break label89;
        WindowData localWindowData2 = (WindowData)this.a.peek();
        if (!localObject1.d())
          break;
        bool = localWindowData2.d();
      }
      while (!bool);
      localObject2 = localObject1;
      if (localObject2.d())
      {
        j();
        return this.a.isEmpty();
        label89: return true;
      }
    }
    catch (EmptyStackException localEmptyStackException)
    {
      while (true)
      {
        Object localObject2 = localObject1;
        LogUtils.a(localEmptyStackException);
        continue;
        i();
      }
    }
  }

  public final void e()
  {
    this.a.clear();
    this.c.b();
  }

  protected final void f()
  {
    this.a.clear();
    this.c.c();
  }

  protected final WindowData g()
  {
    if (!this.a.isEmpty())
      for (int i = -1 + this.a.size(); i >= 0; i--)
      {
        localWindowData = (WindowData)this.a.get(i);
        if ((localWindowData.c() == 4) || (localWindowData.c() == 9))
          break label61;
      }
    WindowData localWindowData = null;
    label61: return localWindowData;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.DataSource
 * JD-Core Version:    0.6.2
 */