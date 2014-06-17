package com.aps;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.location.LocationListener;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Looper;
import java.util.List;

public class s
{
  protected static boolean a = false;
  private static Object u = new Object();
  private static s v;
  private Context b;
  private LocationManager c;
  private int d = 0;
  private int e = 0;
  private ac f;
  private aq g;
  private ax h;
  private z i;
  private aw j;
  private ap k;
  private boolean l = false;
  private v m;
  private Thread n = null;
  private Looper o = null;
  private an p = null;
  private boolean q = false;
  private int r = 0;
  private ao s = new ao(this);
  private boolean t = false;
  private LocationListener w = new al(this);
  private BroadcastReceiver x = new am(this);

  private s(Context paramContext)
  {
    this.b = paramContext;
    this.f = ac.a(paramContext);
    this.m = new v();
    this.g = new aq(this.f);
    this.i = new z(paramContext);
    this.h = new ax(this.i);
    this.j = new aw(this.i);
    this.c = ((LocationManager)this.b.getSystemService("location"));
    this.k = ap.a(this.b);
    this.k.a(this.s);
    f();
    List localList = this.c.getAllProviders();
    if ((localList != null) && (localList.contains("gps")) && (localList.contains("passive")));
    for (boolean bool = true; ; bool = false)
    {
      this.t = bool;
      p.a(paramContext);
      return;
    }
  }

  public static s a(Context paramContext)
  {
    if (v == null);
    synchronized (u)
    {
      if (v == null)
        v = new s(paramContext);
      return v;
    }
  }

  private void f()
  {
    this.d = (1000 * this.k.b());
    this.e = this.k.c();
    aq.a(this.d, this.e);
  }

  public void a()
  {
    if ((!this.t) || (this.f == null))
      p.a("collector", "no gps or passive, so not to collect!");
    while (a)
      return;
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
    localIntentFilter.addAction("android.intent.action.MEDIA_CHECKING");
    localIntentFilter.addAction("android.intent.action.MEDIA_EJECT");
    localIntentFilter.addAction("android.intent.action.MEDIA_NOFS");
    localIntentFilter.addAction("android.intent.action.MEDIA_REMOVED");
    localIntentFilter.addAction("android.intent.action.MEDIA_SHARED");
    localIntentFilter.addAction("android.intent.action.MEDIA_UNMOUNTABLE");
    localIntentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
    localIntentFilter.addDataScheme("file");
    this.b.registerReceiver(this.x, localIntentFilter);
    this.c.removeUpdates(this.w);
    if (this.o != null)
    {
      this.o.quit();
      this.o = null;
    }
    if (this.n != null)
    {
      this.n.interrupt();
      this.n = null;
    }
    this.n = new ak(this, "");
    this.n.start();
    this.f.a(null);
    a = true;
  }

  public void a(int paramInt)
  {
    if ((paramInt != 256) && (paramInt != 8736))
      throw new RuntimeException("invalid Size! must be COLLECTOR_SMALL_SIZE or COLLECTOR_BIG_SIZE");
    this.i.a(paramInt);
  }

  public void a(y paramy, String paramString)
  {
    boolean bool = this.k.a(paramString);
    byte[] arrayOfByte;
    if (paramy != null)
    {
      arrayOfByte = paramy.a();
      if ((bool) && (arrayOfByte != null))
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)this.b.getSystemService("connectivity")).getActiveNetworkInfo();
        if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
        {
          if (localNetworkInfo.getType() != 1)
            break label100;
          this.k.a(this.k.e() + arrayOfByte.length);
        }
      }
    }
    while (true)
    {
      paramy.a(bool);
      this.j.a(paramy);
      return;
      label100: this.k.b(this.k.f() + arrayOfByte.length);
    }
  }

  public void b()
  {
    if ((!this.t) || (this.f == null));
    while (!a)
      return;
    this.b.unregisterReceiver(this.x);
    if (this.o != null)
    {
      this.o.quit();
      this.o = null;
    }
    if (this.n != null)
    {
      this.n.interrupt();
      this.n = null;
    }
    this.c.removeUpdates(this.w);
    this.f.a();
    a = false;
  }

  public void c()
  {
    if (!this.t)
      return;
    b();
  }

  public y d()
  {
    if (!a);
    while (!this.k.a())
      return null;
    return this.j.a(this.k.d());
  }

  protected final boolean e()
  {
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.s
 * JD-Core Version:    0.6.2
 */