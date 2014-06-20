package com.alipay.pushsdk.push.a;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.util.Collection;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class a
{
  public static boolean a = false;
  private static final AtomicInteger i = new AtomicInteger(0);
  protected final Collection b = new CopyOnWriteArrayList();
  protected final Map c = new ConcurrentHashMap();
  protected final Map d = new ConcurrentHashMap();
  protected DataInputStream e;
  protected DataOutputStream f;
  protected final int g = i.getAndIncrement();
  protected final c h;

  static
  {
    try
    {
      AppBundle = Boolean.getBoolean("smack.debugEnabled");
      label23: o.a();
      return;
    }
    catch (Exception localException)
    {
      break label23;
    }
  }

  protected a(c paramc)
  {
    this.h = paramc;
  }

  public final void a(com.alipay.pushsdk.push.BundlesManager.c paramc)
  {
    if (!a())
      throw new IllegalStateException("Not connected to server.");
    if (paramc == null);
    while (this.b.contains(paramc))
      return;
    this.b.add(paramc);
  }

  public final void a(com.alipay.pushsdk.push.d.c paramc)
  {
    if (paramc == null)
      throw new NullPointerException("Packet listener is null.");
    BundlesManager localb = new BundlesManager(paramc);
    this.c.put(paramc, localb);
    com.alipay.pushsdk.c.AppBundle.c.a(5, "Connection", "packageListener in the list is " + this.c.size());
  }

  public abstract boolean a();

  protected final Collection b()
  {
    return this.b;
  }

  public final void b(com.alipay.pushsdk.push.d.c paramc)
  {
    this.c.remove(paramc);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.a
 * JD-Core Version:    0.6.2
 */