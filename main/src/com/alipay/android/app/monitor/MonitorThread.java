package com.alipay.android.app.monitor;

import android.os.Build;
import android.os.Build.VERSION;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.alipay.android.app.sys.DeviceInfo;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.sys.NetConnectionType;

public class MonitorThread
  implements Runnable
{
  private static MonitorThread c;
  private static boolean d;
  private f a;
  private long b;

  private MonitorThread()
  {
    d = false;
  }

  public static MonitorThread a()
  {
    if (c == null)
      c = new MonitorThread();
    return c;
  }

  private static String a(Throwable paramThrowable)
  {
    if (paramThrowable == null)
      return null;
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(paramThrowable.getClass().getName());
    localStringBuilder.append(":");
    localStringBuilder.append(paramThrowable.getMessage());
    return localStringBuilder.toString();
  }

  private void a(c paramc)
  {
    try
    {
      if ((Thread.currentThread().getId() != this.b) && (this.a != null))
      {
        Message localMessage = this.a.obtainMessage(0, paramc);
        this.a.sendMessage(localMessage);
        c.a();
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static void b()
  {
    if (d)
      return;
    new Thread(a()).start();
  }

  public static void c()
  {
  }

  public final void a(long paramLong, String paramString)
  {
    NetConnectionType localNetConnectionType = DeviceInfo.b(GlobalContext.a().b());
    if (localNetConnectionType == NetConnectionType.a)
      return;
    if ((!TextUtils.isEmpty(paramString)) && (paramString.indexOf("https") >= 0));
    for (String str = "https"; ; str = "http")
    {
      a(new c(MonitorEnum.i, localNetConnectionType.a() + ":" + paramLong + "--URL:" + str));
      return;
    }
  }

  public final void a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[Exit]Android--");
    localStringBuilder.append(Build.VERSION.SDK_INT);
    localStringBuilder.append("--");
    try
    {
      localStringBuilder.append(DeviceInfo.a(GlobalContext.a().b()).a());
      localStringBuilder.append("--");
      label54: localStringBuilder.append(paramString);
      a(new c(MonitorEnum.m, localStringBuilder.toString()));
      return;
    }
    catch (Exception localException)
    {
      break label54;
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(paramString1))
      localStringBuilder.append(localStringBuilder);
    if (!TextUtils.isEmpty(paramString2))
      localStringBuilder.append(paramString2);
    if (localStringBuilder.length() > 0)
      a(new c(MonitorEnum.h, localStringBuilder.toString()));
  }

  public final void a(Throwable paramThrowable, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(paramString))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append("--");
    }
    if (paramThrowable != null)
      localStringBuilder.append(a(paramThrowable));
    if (localStringBuilder.length() > 0)
      a(new c(MonitorEnum.e, localStringBuilder.toString()));
  }

  public final void b(long paramLong, String paramString)
  {
    a(new c(MonitorEnum.j, paramString + "--" + paramLong));
  }

  public final void b(Throwable paramThrowable, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(paramString))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append("--");
    }
    if (paramThrowable != null)
      localStringBuilder.append(a(paramThrowable));
    if (TextUtils.equals("uncatch crash", paramString))
      new Thread(new b(this, localStringBuilder)).start();
    while (localStringBuilder.length() <= 0)
      return;
    a(new c(MonitorEnum.f, localStringBuilder.toString()));
  }

  public final void c(long paramLong, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(paramString))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append("--");
    }
    localStringBuilder.append(paramLong);
    a(new c(MonitorEnum.l, localStringBuilder.toString()));
  }

  public final void c(Throwable paramThrowable, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(paramString))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append("--");
    }
    if (paramThrowable != null)
      localStringBuilder.append(a(paramThrowable));
    if (localStringBuilder.length() > 0)
      a(new c(MonitorEnum.a, localStringBuilder.toString()));
  }

  public final void d(Throwable paramThrowable, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if (!TextUtils.isEmpty(paramString))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append("--");
    }
    if (paramThrowable != null)
      localStringBuilder.append(a(paramThrowable));
    if (localStringBuilder.length() > 0)
      a(new c(MonitorEnum.b, localStringBuilder.toString()));
  }

  public final void e(Throwable paramThrowable, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("device:");
    localStringBuilder.append(Build.DEVICE);
    localStringBuilder.append("--");
    if (!TextUtils.isEmpty(paramString))
    {
      localStringBuilder.append(paramString);
      localStringBuilder.append("--");
    }
    if (paramThrowable != null)
      localStringBuilder.append(a(paramThrowable));
    if (localStringBuilder.length() > 0)
      a(new c(MonitorEnum.g, localStringBuilder.toString()));
  }

  public void run()
  {
    d = true;
    this.b = Thread.currentThread().getId();
    Thread.currentThread().setName("sampling point");
    Thread.currentThread().setPriority(5);
    a.a();
    Looper localLooper = Looper.myLooper();
    if (localLooper == null)
    {
      Looper.prepare();
      localLooper = Looper.myLooper();
    }
    this.a = new f(localLooper);
    Looper.loop();
    d = false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.monitor.MonitorThread
 * JD-Core Version:    0.6.2
 */