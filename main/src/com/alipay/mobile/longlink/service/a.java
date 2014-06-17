package com.alipay.mobile.longlink.service;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.alipay.mobile.longlink.ILongLinkPacketNotifer;
import com.alipay.mobile.longlink.b.a.m;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Timer;
import java.util.concurrent.Future;

public class a
{
  private static final String e = com.alipay.mobile.longlink.c.a.a(a.class);
  private List A;
  private boolean B = false;
  private Future C;
  Timer a = null;
  Timer b = null;
  e c;
  f d;
  private Context f;
  private o g;
  private p h;
  private String i;
  private String j;
  private int k;
  private String l;
  private int m;
  private int n = com.alipay.mobile.longlink.b.c.b.a;
  private com.alipay.mobile.longlink.b.a.k o;
  private String p = "";
  private boolean q;
  private boolean r;
  private Object s;
  private k t;
  private ILongLinkPacketNotifer u;
  private com.alipay.mobile.longlink.b.b.c v;
  private com.alipay.mobile.longlink.b.d.e w;
  private com.alipay.mobile.longlink.b.d.a x;
  private com.alipay.mobile.longlink.b.d.b y;
  private com.alipay.mobile.longlink.b.d.d z;

  public a(LongLinkService paramLongLinkService)
  {
    this.f = paramLongLinkService;
    this.g = paramLongLinkService.b();
    this.h = paramLongLinkService.c();
    this.p = "";
    this.q = false;
    this.r = false;
    this.s = new Object();
    this.v = new com.alipay.mobile.longlink.b.b.d(this);
    this.w = new com.alipay.mobile.longlink.b.d.e(this);
    this.x = new com.alipay.mobile.longlink.b.d.a(this);
    this.y = new com.alipay.mobile.longlink.b.d.b(this);
    this.z = new com.alipay.mobile.longlink.b.d.d(this);
    this.A = new ArrayList();
    com.alipay.mobile.longlink.c.a.a(5, e, "ConnManager=" + hashCode());
  }

  private void a(Runnable paramRunnable)
  {
    com.alipay.mobile.longlink.c.a.a(4, e, "addTask(runnable)...");
    p localp1 = this.h;
    synchronized (localp1.b.c())
    {
      p localp3 = localp1.b.c();
      localp3.a = (1 + localp3.a);
      com.alipay.mobile.longlink.c.a.a(4, LongLinkService.e(), "Incremented task count to " + localp1.a);
    }
    while (true)
    {
      synchronized (this.A)
      {
        com.alipay.mobile.longlink.c.a.a(4, e, "addTask taskList=" + this.A.size());
        if ((this.A.isEmpty()) && (!this.B))
        {
          this.B = true;
          com.alipay.mobile.longlink.c.a.a(3, e, "addTask() runnable is " + paramRunnable.getClass().getName().toString());
          com.alipay.mobile.longlink.c.a.a(5, e, "addTask(runnable)...taskSubmitter:" + this.g.hashCode());
          this.C = this.g.a(paramRunnable);
          if (this.C == null)
            this.h.a();
          com.alipay.mobile.longlink.c.a.a(4, e, "addTask(runnable)... done");
          return;
          localObject1 = finally;
          throw localObject1;
        }
        this.A.add(paramRunnable);
        com.alipay.mobile.longlink.c.a.a(5, e, "runTask()...");
      }
      synchronized (this.A)
      {
        this.B = false;
        this.C = null;
        if (!this.A.isEmpty())
        {
          Runnable localRunnable = (Runnable)this.A.get(0);
          this.A.remove(0);
          this.B = true;
          com.alipay.mobile.longlink.c.a.a(4, e, "runTask() runnable is " + localRunnable.getClass().getName().toString());
          this.C = this.g.a(localRunnable);
          if (this.C == null)
            this.h.a();
          this.h.a();
          com.alipay.mobile.longlink.c.a.a(5, e, "runTask()...done");
          continue;
          localObject2 = finally;
          throw localObject2;
        }
        com.alipay.mobile.longlink.c.a.a(5, e, "runTask(),taskList is empty");
      }
    }
  }

  public static void n()
  {
    q.b();
  }

  private String y()
  {
    String str2;
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)this.f.getSystemService("connectivity")).getActiveNetworkInfo();
      if (localNetworkInfo != null)
      {
        String str1 = localNetworkInfo.getTypeName();
        if ((str1 != null) && ("wifi".equals(str1.toLowerCase(Locale.US))))
          return "wifi";
        str2 = localNetworkInfo.getExtraInfo();
        if (str2 != null)
        {
          int i1 = str2.toLowerCase(Locale.getDefault()).length();
          if (i1 > 0)
            break label91;
        }
      }
      return "unknown";
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
    label91: return str2;
  }

  public final Context a()
  {
    return this.f;
  }

  public final void a(ILongLinkPacketNotifer paramILongLinkPacketNotifer)
  {
    this.u = paramILongLinkPacketNotifer;
  }

  public final void a(com.alipay.mobile.longlink.b.a.k paramk)
  {
    com.alipay.mobile.longlink.c.a.a(5, e, "setConnection()... called. connection:" + paramk.hashCode());
    this.o = paramk;
  }

  public final void a(k paramk)
  {
    this.t = paramk;
  }

  public final void a(String paramString)
  {
    this.p = paramString;
  }

  public final void a(boolean paramBoolean)
  {
    this.q = paramBoolean;
  }

  public final void b()
  {
    com.alipay.mobile.longlink.c.a.a(3, e, "connect()...");
    a(new c(this, new com.alipay.mobile.longlink.b.b.b(this), (byte)0));
  }

  public final void b(String paramString)
  {
    com.alipay.mobile.longlink.c.a.a(4, e, "submitUplinkDataTask()...");
    a(new i(this, paramString, (byte)0));
  }

  public final void b(boolean paramBoolean)
  {
    synchronized (this.s)
    {
      this.r = paramBoolean;
      return;
    }
  }

  public final void c()
  {
    com.alipay.mobile.longlink.c.a.a(3, e, "disconnect()...");
    w();
    u();
    this.q = false;
    com.alipay.mobile.longlink.c.a.a(4, e, "terminatePersistentConnection()...");
    a(new b(this));
  }

  public final com.alipay.mobile.longlink.b.a.k d()
  {
    if (this.o != null)
      com.alipay.mobile.longlink.c.a.a(5, e, "getConnection()... called. connection:" + this.o.hashCode());
    return this.o;
  }

  public final String e()
  {
    return this.p;
  }

  public final ILongLinkPacketNotifer f()
  {
    return this.u;
  }

  public final int g()
  {
    return this.n;
  }

  public final com.alipay.mobile.longlink.b.b.c h()
  {
    return this.v;
  }

  public final com.alipay.mobile.longlink.b.d.c i()
  {
    return this.w;
  }

  public final com.alipay.mobile.longlink.b.d.c j()
  {
    return this.x;
  }

  public final com.alipay.mobile.longlink.b.d.c k()
  {
    return this.y;
  }

  public final com.alipay.mobile.longlink.b.d.c l()
  {
    return this.z;
  }

  public final void m()
  {
    com.alipay.mobile.longlink.c.a.a(3, e, "startReconnectionThread() in ...");
    a(new g(this, (byte)0));
  }

  public final boolean o()
  {
    if (this.o != null)
      com.alipay.mobile.longlink.c.a.a(5, e, "isConnected() connection=" + this.o.hashCode());
    com.alipay.mobile.longlink.b.a.k localk = this.o;
    boolean bool1 = false;
    if (localk != null)
    {
      boolean bool2 = this.o.a();
      bool1 = false;
      if (bool2)
        bool1 = true;
    }
    com.alipay.mobile.longlink.c.a.a(5, e, "isConnected() ret=" + bool1);
    return bool1;
  }

  public final boolean p()
  {
    com.alipay.mobile.longlink.c.a.a(5, e, "isRegistered=" + this.q);
    return this.q;
  }

  public final boolean q()
  {
    synchronized (this.s)
    {
      boolean bool = this.r;
      com.alipay.mobile.longlink.c.a.a(5, e, "isForceStopped=" + bool);
      return bool;
    }
  }

  public final void r()
  {
    com.alipay.mobile.longlink.c.a.a(4, e, "submitRegisterTask()...");
    a(new h(this, (byte)0));
  }

  public final void s()
  {
    com.alipay.mobile.longlink.c.a.a(4, e, "submitHeartBeatTask()...");
    a(new d(this, (byte)0));
  }

  public final void t()
  {
    u();
    this.c = new e(this);
    this.a = new Timer();
    this.a.schedule(this.c, 1000 * m.c());
  }

  protected final void u()
  {
    if (this.a != null)
    {
      this.a.cancel();
      if (this.c != null)
      {
        this.c.cancel();
        this.c = null;
      }
      this.a = null;
    }
  }

  public final void v()
  {
    w();
    int i1 = q.a();
    if (i1 >= 0)
    {
      this.d = new f(this);
      this.b = new Timer();
      this.b.schedule(this.d, i1 * 500);
      com.alipay.mobile.longlink.c.a.a(4, e, "mReconnectionTask is scheduled after time=" + i1 * 500);
      return;
    }
    com.alipay.mobile.longlink.c.a.a(2, e, "Warning! waitTime has reached to the max limit.");
  }

  protected final void w()
  {
    if (this.b != null)
    {
      this.b.cancel();
      if (this.d != null)
      {
        this.d.cancel();
        this.d = null;
      }
      this.b = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.a
 * JD-Core Version:    0.6.2
 */