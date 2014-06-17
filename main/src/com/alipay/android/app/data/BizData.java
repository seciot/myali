package com.alipay.android.app.data;

import android.os.Binder;
import com.alipay.android.app.IRemoteCallback;
import com.alipay.android.lib.plusin.script.IScriptExcutor;
import com.alipay.android.lib.plusin.script.ScriptExcutorCreator;
import com.alipay.android.lib.plusin.ui.WindowData;
import com.alipay.android.lib.plusin.ui.WindowManagerRouter;

public final class BizData
  implements BizUiData
{
  private static Class e;
  private int a;
  private int b;
  private Object c;
  private String d;
  private BizDataUnit f;
  private InteractionData g;
  private DataSource h;
  private ValidatedFrameData i;
  private WindowManagerRouter j;
  private IScriptExcutor k;
  private DataProcessor l;

  protected BizData(int paramInt)
  {
    this.a = paramInt;
    this.b = Binder.getCallingPid();
    this.c = new Object();
    this.g = new InteractionData();
    this.i = new ValidatedFrameData(this);
    this.h = new DataSource(this.i);
    this.j = new WindowManagerRouter();
    this.j.a(this);
    this.k = ScriptExcutorCreator.a().a(this.a);
  }

  public static void a(Class paramClass)
  {
    e = paramClass;
  }

  public final int a()
  {
    return this.a;
  }

  public final void a(String paramString)
  {
    this.d = paramString;
  }

  public final IRemoteCallback b()
  {
    return BizDataSource.a().e(this.b);
  }

  public final DataProcessor c()
  {
    if (this.l == null)
      this.l = new DataProcessor(this);
    return this.l;
  }

  // ERROR //
  public final void d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 46	com/alipay/android/app/data/BizData:c	Ljava/lang/Object;
    //   6: astore_2
    //   7: aload_2
    //   8: ifnonnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 46	com/alipay/android/app/data/BizData:c	Ljava/lang/Object;
    //   18: astore_3
    //   19: aload_3
    //   20: monitorenter
    //   21: aload_0
    //   22: getfield 46	com/alipay/android/app/data/BizData:c	Ljava/lang/Object;
    //   25: invokevirtual 109	java/lang/Object:wait	()V
    //   28: aload_3
    //   29: monitorexit
    //   30: goto -19 -> 11
    //   33: astore 5
    //   35: aload_3
    //   36: monitorexit
    //   37: aload 5
    //   39: athrow
    //   40: astore_1
    //   41: aload_0
    //   42: monitorexit
    //   43: aload_1
    //   44: athrow
    //   45: astore 4
    //   47: new 111	com/alipay/android/app/exception/AppErrorException
    //   50: dup
    //   51: aload 4
    //   53: invokevirtual 115	java/lang/Object:getClass	()Ljava/lang/Class;
    //   56: invokespecial 117	com/alipay/android/app/exception/AppErrorException:<init>	(Ljava/lang/Class;)V
    //   59: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   21	28	33	finally
    //   28	30	33	finally
    //   47	60	33	finally
    //   2	7	40	finally
    //   14	21	40	finally
    //   35	40	40	finally
    //   21	28	45	java/lang/InterruptedException
  }

  public final void e()
  {
    if (this.c == null)
      return;
    synchronized (this.c)
    {
      this.c.notifyAll();
      return;
    }
  }

  public final IScriptExcutor f()
  {
    return this.k;
  }

  public final ValidatedFrameData g()
  {
    return this.i;
  }

  public final void h()
  {
    BizDataSource.a().d(this.a);
    if (this.j != null)
      this.j.b();
    ScriptExcutorCreator.a().b(this.a);
    if (this.k != null)
      this.k.dispose();
    try
    {
      this.c.notify();
      label57: this.l = null;
      this.j = null;
      this.k = null;
      this.a = 0;
      this.b = 0;
      this.c = null;
      return;
    }
    catch (Exception localException)
    {
      break label57;
    }
  }

  public final WindowManagerRouter i()
  {
    return this.j;
  }

  public final int j()
  {
    return this.b;
  }

  public final InteractionData k()
  {
    return this.g;
  }

  public final DataSource l()
  {
    return this.h;
  }

  public final BizDataUnit m()
  {
    if ((e != null) && (this.f == null));
    try
    {
      this.f = ((BizDataUnit)e.newInstance());
      return this.f;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final WindowData n()
  {
    return this.h.g();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.BizData
 * JD-Core Version:    0.6.2
 */