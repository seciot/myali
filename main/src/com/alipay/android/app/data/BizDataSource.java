package com.alipay.android.app.data;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Binder;
import android.util.SparseArray;
import com.alipay.android.app.IRemoteCallback;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.lib.plusin.ui.WindowManagerRouter;
import com.alipay.mobile.aspect.Advice;
import com.alipay.mobile.aspect.FrameworkPointCutManager;
import java.util.Iterator;
import java.util.List;

public class BizDataSource
{
  private static BizDataSource a;
  private SparseArray b;
  private SparseArray c;
  private Advice d = new a(this);

  private BizDataSource()
  {
    FrameworkPointCutManager.getInstance().registerPointCutAdvice("void com.alipay.mobile.core.impl.MicroApplicationContextImpl.exit()", this.d);
    this.b = new SparseArray();
    this.c = new SparseArray();
  }

  public static final BizDataSource a()
  {
    try
    {
      if (a == null)
        a = new BizDataSource();
      BizDataSource localBizDataSource = a;
      return localBizDataSource;
    }
    finally
    {
    }
  }

  public static void a(BizDataSource paramBizDataSource, BizData paramBizData)
  {
    if (paramBizData.c() != null)
      paramBizData.c().j();
    paramBizDataSource.d(paramBizData.a());
    if (paramBizData.i() != null)
      paramBizData.i().b();
  }

  private void f()
  {
    int i = 0;
    try
    {
      while (i < this.b.size())
      {
        int j = this.b.keyAt(i);
        BizData localBizData = (BizData)this.b.get(j);
        if (localBizData != null)
          a(a, localBizData);
        i++;
      }
    }
    catch (Exception localException)
    {
    }
    finally
    {
    }
  }

  public final void a(IRemoteCallback paramIRemoteCallback)
  {
    this.c.put(Binder.getCallingPid(), paramIRemoteCallback);
  }

  public final boolean a(int paramInt)
  {
    try
    {
      Object localObject2 = this.b.get(paramInt);
      if (localObject2 != null)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
    }
  }

  public final BizData b(int paramInt)
  {
    try
    {
      BizData localBizData = (BizData)this.b.get(paramInt);
      if (localBizData == null)
      {
        localBizData = new BizData(paramInt);
        this.b.put(paramInt, localBizData);
      }
      return localBizData;
    }
    finally
    {
    }
  }

  public final void b()
  {
    List localList = ((ActivityManager)GlobalContext.a().b().getSystemService("activity")).getRunningAppProcesses();
    int i = 0;
    BizData localBizData;
    int m;
    if (i < this.b.size())
    {
      int j = this.b.keyAt(i);
      localBizData = (BizData)this.b.get(j);
      if (localBizData != null)
      {
        int k = localBizData.j();
        Iterator localIterator = localList.iterator();
        m = 0;
        label76: if (localIterator.hasNext())
          if (k != ((ActivityManager.RunningAppProcessInfo)localIterator.next()).pid)
            break label132;
      }
    }
    label132: for (int n = 1; ; n = m)
    {
      m = n;
      break label76;
      if (m == 0)
        a(this, localBizData);
      i++;
      break;
      return;
    }
  }

  public final BizData c(int paramInt)
  {
    int i = 0;
    try
    {
      BizData localBizData;
      if (i < this.b.size())
      {
        int j = this.b.keyAt(i);
        localBizData = (BizData)this.b.get(j);
        if (localBizData != null)
        {
          int k = localBizData.j();
          if (k != paramInt);
        }
      }
      while (true)
      {
        return localBizData;
        i++;
        break;
        localBizData = null;
      }
    }
    finally
    {
    }
  }

  public final void c()
  {
    new Thread(new b(this)).start();
  }

  public final void d()
  {
    this.c.remove(Binder.getCallingPid());
  }

  public final void d(int paramInt)
  {
    this.b.put(paramInt, null);
    this.b.remove(paramInt);
  }

  public final int e()
  {
    if (this.b != null)
      return this.b.size();
    return 0;
  }

  public final IRemoteCallback e(int paramInt)
  {
    return (IRemoteCallback)this.c.get(paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.BizDataSource
 * JD-Core Version:    0.6.2
 */