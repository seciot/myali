package com.alipay.mobile.quinox;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Process;
import com.alipay.mobile.quinox.utils.d;

public final class a
  implements Thread.UncaughtExceptionHandler
{
  private static String a = "ExceptionHandler";
  private static a c;
  private Context b;
  private Thread.UncaughtExceptionHandler d;

  public static a a()
  {
    try
    {
      if (c == null)
        c = new a();
      a locala = c;
      return locala;
    }
    finally
    {
    }
  }

  public final void a(Context paramContext)
  {
    if ((Thread.getDefaultUncaughtExceptionHandler() instanceof a))
      return;
    d.a(a, "setUp()-->");
    this.b = paramContext;
    this.d = Thread.getDefaultUncaughtExceptionHandler();
    Thread.setDefaultUncaughtExceptionHandler(this);
  }

  public final void b()
  {
    d.a(a, "stop()-->");
    Thread.setDefaultUncaughtExceptionHandler(this.d);
  }

  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    d.a(a, "uncaughtException()-->");
    paramThrowable.printStackTrace();
    for (Throwable localThrowable = paramThrowable; localThrowable.getCause() != null; localThrowable = localThrowable.getCause());
    d.a(a, "uncaughtException()--> rootCause: " + localThrowable.toString() + " Message:" + paramThrowable.getMessage());
    if ((localThrowable != null) && (paramThrowable != null) && (localThrowable.toString() != null) && (localThrowable.toString().startsWith("java.lang.ClassNotFoundException")) && (paramThrowable.getMessage() != null) && (paramThrowable.getMessage().startsWith("Unable to")) && ("main".equalsIgnoreCase(Thread.currentThread().getName())))
    {
      Intent localIntent = new Intent();
      localIntent.setClassName(this.b.getApplicationContext().getPackageName(), "com.eg.android.AlipayGphone.AlipayLogin");
      localIntent.addFlags(270565376);
      localIntent.setAction("android.intent.action.MAIN");
      localIntent.addCategory("android.intent.category.LAUNCHER");
      PendingIntent localPendingIntent = PendingIntent.getActivity(this.b.getApplicationContext(), 0, localIntent, 268435456);
      ((AlarmManager)this.b.getSystemService("alarm")).set(1, 100L + System.currentTimeMillis(), localPendingIntent);
      d.a(a, "uncaughtException 1<--");
      Process.killProcess(Process.myPid());
      System.exit(10);
      return;
    }
    d.a(a, "uncaughtException 2<--");
    this.d.uncaughtException(paramThread, paramThrowable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.a
 * JD-Core Version:    0.6.2
 */