package com.alipay.android.lib.plusin.ui;

import android.util.SparseArray;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.app.data.DataProcessor;
import com.alipay.android.app.exception.AppErrorException;

public class WindowManagerRouter
{
  private static SparseArray a = new SparseArray();
  private BizUiData b;
  private IWindowManager c;
  private IWindowManager d;

  private IWindowManager a(int paramInt)
  {
    Class localClass = (Class)a.get(paramInt);
    if (localClass == null)
      throw new AppErrorException(WindowManagerRouter.class, "no such window type:" + paramInt);
    try
    {
      IWindowManager localIWindowManager = (IWindowManager)localClass.newInstance();
      localIWindowManager.a(this.b);
      return localIWindowManager;
    }
    catch (Exception localException)
    {
      throw new AppErrorException(localException.getClass(), "can not creat window manager");
    }
  }

  public static void a(int paramInt, Class paramClass)
  {
    if ((Class)a.get(paramInt) == null)
      a.put(paramInt, paramClass);
  }

  public final void a()
  {
    a(null, new TransWindowData());
  }

  public final void a(BizUiData paramBizUiData)
  {
    this.b = paramBizUiData;
  }

  public final void a(DataProcessor paramDataProcessor, WindowData paramWindowData)
  {
    int i = paramWindowData.c();
    Class localClass = (Class)a.get(i);
    if ((this.c != null) && (this.c.getClass() != localClass))
    {
      this.d = this.c;
      this.c = null;
    }
    if (this.c == null)
      this.c = a(i);
    this.c.a(paramDataProcessor, paramWindowData);
  }

  public final void a(DataProcessor paramDataProcessor, Exception paramException, int paramInt)
  {
    Class localClass = (Class)a.get(paramInt);
    if (localClass == null)
      throw new AppErrorException(WindowManagerRouter.class, "no such window type:" + paramInt);
    if ((this.c != null) && (this.c.getClass() != localClass))
    {
      this.d = this.c;
      this.c = null;
    }
    if (this.c == null)
      this.c = a(paramInt);
    this.c.a(paramDataProcessor, paramException);
  }

  public final void a(Object paramObject)
  {
    if (this.c != null)
    {
      this.c.a(paramObject);
      if (this.d != null)
      {
        this.d.dispose();
        this.d = null;
      }
      return;
    }
    throw new AppErrorException(getClass(), "no window creat on window loaded");
  }

  public final void b()
  {
    if (this.c != null)
    {
      this.c.dispose();
      this.c = null;
    }
    if (this.d != null)
    {
      this.d.dispose();
      this.d = null;
    }
    this.b = null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.lib.plusin.ui.WindowManagerRouter
 * JD-Core Version:    0.6.2
 */