package com.alipay.pushsdk.push;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.alipay.pushsdk.push.d.a;
import com.alipay.pushsdk.push.d.e;
import java.util.ArrayList;
import java.util.List;
import java.util.Timer;
import java.util.concurrent.Future;

public class j
{
  private static final String c = com.alipay.pushsdk.c.a.c.a(j.class);
  private PendingIntent A = null;
  private PendingIntent B = null;
  private PowerManager.WakeLock C = null;
  private int D = -1;
  private long E = 0L;
  Timer a = null;
  Timer b = null;
  private Context d;
  private c e;
  private d f;
  private String g;
  private String h;
  private int i;
  private String j;
  private int k;
  private int l = 0;
  private int m = com.alipay.pushsdk.push.c.b.a;
  private com.alipay.pushsdk.push.a.m n;
  private String o = "";
  private boolean p;
  private com.alipay.pushsdk.push.b.c q;
  private e r;
  private a s;
  private com.alipay.pushsdk.push.d.b t;
  private com.alipay.pushsdk.push.d.d u;
  private Handler v;
  private List w;
  private boolean x = false;
  private Future y;
  private AlarmManager z = null;

  public j(NotificationService paramNotificationService)
  {
    this.d = paramNotificationService;
    this.e = paramNotificationService.b();
    this.f = paramNotificationService.c();
    this.p = false;
    this.q = new com.alipay.pushsdk.push.b.d(this);
    this.r = new e(this);
    this.s = new a(this);
    this.t = new com.alipay.pushsdk.push.d.b(this);
    this.u = new com.alipay.pushsdk.push.d.d(this);
    this.v = new Handler();
    this.w = new ArrayList();
    this.z = ((AlarmManager)this.d.getSystemService("alarm"));
    try
    {
      ApplicationInfo localApplicationInfo = this.d.getPackageManager().getApplicationInfo(this.d.getPackageName(), 1);
      if (localApplicationInfo != null)
        this.D = localApplicationInfo.uid;
      label225: this.E = f();
      com.alipay.pushsdk.c.a.c.a(4, c, "PushManager() getLastConnectedTime:" + com.alipay.pushsdk.c.j.a(this.E));
      boolean bool = new o(this.d).d();
      com.alipay.pushsdk.c.a.c.a(4, c, "PushManager() flagTraceLog=" + bool);
      com.alipay.pushsdk.push.a.o.c(bool);
      com.alipay.pushsdk.c.a.c.a(5, c, "pushManager=" + hashCode());
      return;
    }
    catch (Exception localException)
    {
      break label225;
    }
  }

  private void A()
  {
    try
    {
      if ((this.z != null) && (this.B != null))
        this.z.cancel(this.B);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private void a(Runnable paramRunnable)
  {
    com.alipay.pushsdk.c.a.c.a(4, c, "addTask(runnable)...");
    d locald1 = this.f;
    synchronized (locald1.b.c())
    {
      d locald3 = locald1.b.c();
      locald3.a = (1 + locald3.a);
      com.alipay.pushsdk.c.a.c.a(4, NotificationService.e(), "Incremented task count to " + locald1.a);
    }
    while (true)
    {
      synchronized (this.w)
      {
        com.alipay.pushsdk.c.a.c.a(4, c, "addTask taskList=" + this.w.size());
        if ((this.w.isEmpty()) && (!this.x))
        {
          this.x = true;
          com.alipay.pushsdk.c.a.c.a(3, c, "addTask() runnable is " + paramRunnable.getClass().getName().toString());
          com.alipay.pushsdk.c.a.c.a(5, c, "addTask(runnable)...taskSubmitter:" + this.e.hashCode());
          this.y = this.e.a(paramRunnable);
          if (this.y == null)
            this.f.a();
          com.alipay.pushsdk.c.a.c.a(4, c, "addTask(runnable)... done");
          return;
          localObject1 = finally;
          throw localObject1;
        }
        this.w.add(paramRunnable);
        com.alipay.pushsdk.c.a.c.a(5, c, "runTask()...");
      }
      synchronized (this.w)
      {
        this.x = false;
        this.y = null;
        if (!this.w.isEmpty())
        {
          Runnable localRunnable = (Runnable)this.w.get(0);
          this.w.remove(0);
          this.x = true;
          com.alipay.pushsdk.c.a.c.a(4, c, "runTask() runnable is " + localRunnable.getClass().getName().toString());
          this.y = this.e.a(localRunnable);
          if (this.y == null)
            this.f.a();
          this.f.a();
          com.alipay.pushsdk.c.a.c.a(5, c, "runTask()...done");
          continue;
          localObject2 = finally;
          throw localObject2;
        }
        com.alipay.pushsdk.c.a.c.a(5, c, "runTask(),taskList is empty");
      }
    }
  }

  public static void q()
  {
    p.c();
  }

  public final Context a()
  {
    return this.d;
  }

  public final void a(long paramLong)
  {
    new i(this.d).a(paramLong);
  }

  public final void a(com.alipay.pushsdk.push.a.m paramm)
  {
    com.alipay.pushsdk.c.a.c.a(5, c, "setConnection()... called. connection:" + paramm.hashCode());
    this.n = paramm;
  }

  public final void a(String paramString)
  {
    this.o = paramString;
  }

  public final void a(boolean paramBoolean)
  {
    this.p = paramBoolean;
  }

  public final void b()
  {
    com.alipay.pushsdk.c.a.c.a(3, c, "connect()...");
    if ((!w()) && (!new com.alipay.pushsdk.push.a.l(this.d).a()))
    {
      com.alipay.pushsdk.c.a.c.a(3, c, "connect() ConnectionPolicy is false.");
      return;
    }
    a(new l(this, new com.alipay.pushsdk.push.b.b(this), (byte)0));
  }

  public final void b(long paramLong)
  {
    new i(this.d).b(paramLong);
  }

  public final void c()
  {
    com.alipay.pushsdk.c.a.c.a(3, c, "disconnect()...");
    this.p = false;
    A();
    try
    {
      if ((this.z != null) && (this.A != null))
        this.z.cancel(this.A);
      com.alipay.pushsdk.c.a.c.a(4, c, "terminatePersistentConnection()...");
      a(new k(this));
      c(System.currentTimeMillis());
      y();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void c(long paramLong)
  {
    new i(this.d).c(paramLong);
    com.alipay.pushsdk.c.a.c.a(4, c, "PushManager() setLastLostedTime:" + com.alipay.pushsdk.c.j.a(paramLong));
  }

  public final com.alipay.pushsdk.push.a.m d()
  {
    if (this.n != null)
      com.alipay.pushsdk.c.a.c.a(5, c, "getConnection()... called. connection:" + this.n.hashCode());
    return this.n;
  }

  public final void d(long paramLong)
  {
    new i(this.d).d(paramLong);
  }

  public final String e()
  {
    return this.o;
  }

  public final long f()
  {
    return new i(this.d).b();
  }

  public final long g()
  {
    return new i(this.d).c();
  }

  public final long h()
  {
    return new i(this.d).d();
  }

  public final String i()
  {
    com.alipay.pushsdk.c.a.c.a(4, c, "PushManager() getPushTrigger enter.");
    return new i(this.d).e();
  }

  public final int j()
  {
    return this.m;
  }

  public final com.alipay.pushsdk.push.b.c k()
  {
    return this.q;
  }

  public final com.alipay.pushsdk.push.d.c l()
  {
    return this.r;
  }

  public final com.alipay.pushsdk.push.d.c m()
  {
    return this.s;
  }

  public final com.alipay.pushsdk.push.d.c n()
  {
    return this.t;
  }

  public final com.alipay.pushsdk.push.d.c o()
  {
    return this.u;
  }

  public final void p()
  {
    com.alipay.pushsdk.c.a.c.a(3, c, "startReconnectionThread()... ReconnectionTask");
    while (true)
    {
      try
      {
        if (d() != null)
          d().f();
        this.p = false;
        A();
        if ((this.o != null) && (this.o.length() > 0))
        {
          Intent localIntent = new Intent();
          localIntent.setAction(this.d.getPackageName() + ".push.action.CONNECT");
          this.A = PendingIntent.getBroadcast(this.d, 0, localIntent, 0);
          if (this.z != null)
          {
            AlarmManager localAlarmManager = this.z;
            long l1 = com.alipay.pushsdk.push.a.o.d();
            long l2 = h();
            com.alipay.pushsdk.c.a.c.a(3, c, "getReconnTimer lastTryConnectTime=" + com.alipay.pushsdk.c.j.a(l2) + ", lastConnectedTime=" + com.alipay.pushsdk.c.j.a(l1));
            if ((l1 <= 0L) || (l1 < l2))
              break label348;
            long l5 = System.currentTimeMillis() - l1;
            long l6 = 1000L * com.alipay.pushsdk.push.a.o.c() - l5;
            if (l6 <= 0L)
              l6 = 0L;
            com.alipay.pushsdk.c.a.c.a(3, c, "getReconnTimer lostedTime=" + l5 + ", curWaitTime=" + l6);
            l4 = l6;
            com.alipay.pushsdk.c.a.d.a(com.alipay.pushsdk.c.a.d.m, com.alipay.pushsdk.c.a.d.A, System.currentTimeMillis(), com.alipay.pushsdk.c.a.d.w, l4 + System.currentTimeMillis(), "XmppManager_getReconnTimer:curWaitTime=" + l4 + " lastConnectedTime=" + com.alipay.pushsdk.c.j.a(l1) + " lastTryConnectTime=" + com.alipay.pushsdk.c.j.a(l2));
            localAlarmManager.set(0, l4 + System.currentTimeMillis(), this.A);
          }
        }
        return;
      }
      finally
      {
      }
      label348: long l3 = 1000L * p.b();
      com.alipay.pushsdk.c.a.c.a(3, c, "getReconnTimer reconnectionTask.waiting=" + l3);
      long l4 = l3;
    }
  }

  public final boolean r()
  {
    if (this.n != null)
      com.alipay.pushsdk.c.a.c.a(5, c, "isConnected() connection=" + this.n.hashCode());
    com.alipay.pushsdk.push.a.m localm = this.n;
    boolean bool1 = false;
    if (localm != null)
    {
      boolean bool2 = this.n.a();
      bool1 = false;
      if (bool2)
      {
        long l1 = com.alipay.pushsdk.push.a.o.d();
        long l2 = (System.currentTimeMillis() - l1) / 1000L;
        boolean bool3 = l2 < com.alipay.pushsdk.push.a.o.e();
        bool1 = false;
        if (bool3)
          bool1 = true;
        com.alipay.pushsdk.c.a.c.a(4, c, "isConnected() del=" + l2);
      }
    }
    return bool1;
  }

  public final boolean s()
  {
    return this.p;
  }

  public final void t()
  {
    com.alipay.pushsdk.c.a.c.a(4, c, "submitRegisterTask()...");
    a(new n(this, (byte)0));
  }

  public final void u()
  {
    com.alipay.pushsdk.c.a.c.a(4, c, "submitHeartBeatTask()...");
    a(new m(this, (byte)0));
  }

  public final void v()
  {
    Intent localIntent = new Intent();
    localIntent.setAction(this.d.getPackageName() + ".push.action.KEEPLIVE");
    this.B = PendingIntent.getBroadcast(this.d, 0, localIntent, 0);
    if (this.z != null)
    {
      AlarmManager localAlarmManager = this.z;
      long l1 = com.alipay.pushsdk.push.a.o.l();
      if (w())
        l1 = com.alipay.pushsdk.push.a.o.k();
      com.alipay.pushsdk.c.a.c.a(3, c, "getPushKeepAliveInterval() keepAliveTime=" + l1);
      localAlarmManager.set(0, l1 * 1000L + System.currentTimeMillis(), this.B);
    }
  }

  public final boolean w()
  {
    boolean bool1 = com.alipay.pushsdk.push.a.o.g();
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = com.alipay.pushsdk.c.j.a(new i(this.d).a(), com.alipay.pushsdk.push.a.o.f());
      bool2 = false;
      if (bool3)
        bool2 = true;
      com.alipay.pushsdk.c.a.c.a(4, c, "isFrontPolicy ret=" + bool2);
    }
    return bool2;
  }

  public final void x()
  {
    if (this.C == null)
    {
      this.C = ((PowerManager)this.d.getSystemService("power")).newWakeLock(1, c);
      if (this.C != null)
        this.C.acquire();
    }
  }

  public final void y()
  {
    if ((this.C != null) && (this.C.isHeld()));
    try
    {
      this.C.release();
      this.C = null;
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        localThrowable.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.j
 * JD-Core Version:    0.6.2
 */