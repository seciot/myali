package com.alipay.mobile.quinox.classloader;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

public final class a extends PathClassLoader
{
  private static final ThreadFactory f = new b();
  private Context a;
  private com.alipay.mobile.quinox.bundle.b b;
  private Map c;
  private InitExecutor d;
  private e e;

  public a(Context paramContext, PathClassLoader paramPathClassLoader, com.alipay.mobile.quinox.bundle.b paramb)
  {
    super(paramContext.getApplicationInfo().sourceDir, paramContext.getApplicationInfo().dataDir + File.separator + "lib", a(ClassLoader.getSystemClassLoader()));
    this.a = paramContext;
    this.b = paramb;
    this.e = new e(this, this.a.getApplicationInfo().sourceDir, b(), a(ClassLoader.getSystemClassLoader()), paramPathClassLoader, this.b);
    this.c = new ConcurrentHashMap(10);
    this.d = new InitExecutor(this, this.b);
    ExecutorService localExecutorService = Executors.newFixedThreadPool(1, f);
    localExecutorService.execute(new c(this, localExecutorService));
    c();
  }

  public static Class a(String paramString, Collection paramCollection)
  {
    Object localObject1 = null;
    Iterator localIterator;
    Object localObject2;
    if (paramCollection != null)
    {
      localIterator = paramCollection.iterator();
      localObject2 = null;
    }
    while (true)
      if (localIterator.hasNext())
      {
        h localh = (h)localIterator.next();
        try
        {
          Class localClass = localh.loadClassFromCurrent(paramString);
          localObject1 = localClass;
          if (localObject1 == null)
            break label63;
          return localObject1;
        }
        catch (ClassNotFoundException localClassNotFoundException)
        {
        }
      }
      else
      {
        return localObject2;
        label63: localObject2 = localObject1;
      }
  }

  private static ClassLoader a(ClassLoader paramClassLoader)
  {
    while (!paramClassLoader.getClass().getSimpleName().equalsIgnoreCase("BootClassLoader"))
      paramClassLoader = paramClassLoader.getParent();
    return paramClassLoader;
  }

  private void c()
  {
    this.d.a();
    Iterator localIterator = this.b.b();
    while (localIterator.hasNext())
    {
      com.alipay.mobile.quinox.bundle.a locala = (com.alipay.mobile.quinox.bundle.a)localIterator.next();
      if ((locala.i()) && (locala.d() != 11110000))
        this.d.a(locala);
    }
    this.d.b();
  }

  private boolean d(String paramString)
  {
    synchronized (this.c)
    {
      boolean bool = this.c.containsKey(paramString);
      return bool;
    }
  }

  private d e(String paramString)
  {
    synchronized (this.c)
    {
      d locald = (d)this.c.get(paramString);
      return locald;
    }
  }

  public final Context a()
  {
    return this.a;
  }

  public final void a(com.alipay.mobile.quinox.bundle.a parama)
  {
    this.d.a();
    this.d.a(parama);
    this.d.b();
  }

  public final void a(String paramString)
  {
    synchronized (this.c)
    {
      this.c.remove(paramString);
      return;
    }
  }

  public final void a(String paramString, d paramd)
  {
    synchronized (this.c)
    {
      this.c.put(paramString, paramd);
      return;
    }
  }

  public final h b(String paramString)
  {
    if (!d(paramString))
    {
      com.alipay.mobile.quinox.bundle.a locala = this.b.a(paramString);
      if (this.b.b(paramString))
      {
        com.alipay.mobile.quinox.utils.d.b("BootstrapClassloader", "getQuinoxClassLoader static link ->bundle: " + paramString);
        return this.e;
      }
      if (locala == null)
      {
        com.alipay.mobile.quinox.utils.d.b("BootstrapClassloader", "getQuinoxClassLoader can't find bundle: " + paramString);
        return null;
      }
      this.d.a(paramString);
    }
    return e(paramString);
  }

  public final String b()
  {
    return this.b.d() + File.pathSeparator + this.a.getApplicationInfo().dataDir + File.separator + "lib";
  }

  public final void b(com.alipay.mobile.quinox.bundle.a parama)
  {
    this.d.b(parama);
  }

  public final h c(String paramString)
  {
    if (!d(paramString))
    {
      com.alipay.mobile.quinox.bundle.a locala = this.b.a(paramString);
      if (locala == null)
        com.alipay.mobile.quinox.utils.d.b("BootstrapClassloader", "getBundleClassLoader can't find bundle: " + paramString);
      while (!locala.i())
        return null;
      this.d.a(paramString);
    }
    return e(paramString);
  }

  protected final Class findClass(String paramString)
  {
    com.alipay.mobile.quinox.utils.d.c("BootstrapClassloader", Thread.currentThread().getName() + ":" + this + " findClass: " + paramString);
    com.alipay.mobile.quinox.bundle.a locala = this.b.c(paramString);
    if (locala != null)
    {
      h localh = b(locala.c());
      if ((localh == null) && (locala.d() == 11110000))
      {
        a(locala);
        localh = b(locala.c());
      }
      if ((localh != null) && (localh != this.e))
        return localh.loadClassFromCurrent(paramString);
    }
    return this.e.loadClass(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.classloader.a
 * JD-Core Version:    0.6.2
 */