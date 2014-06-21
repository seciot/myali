package com.alipay.mobile.quinox.classloader;

import com.alipay.mobile.quinox.LauncherApplication;
import com.alipay.mobile.quinox.bundle.BundlesManager;
import com.alipay.mobile.quinox.utils.ZLog;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;

public final class e extends PathClassLoader
  implements h
{
  private LauncherApplication a;
  private a b;
  private PathClassLoader c;
  private String[] d;
  private String[] e;

  public e(a parama, String paramString1, String paramString2, ClassLoader paramClassLoader, PathClassLoader paramPathClassLoader, BundlesManager paramb)
  {
    super(paramString1, paramString2, paramClassLoader);
    this.c = paramPathClassLoader;
    this.b = parama;
    this.a = ((LauncherApplication)this.b.a());
    this.d = paramb.g();
    this.e = paramb.h();
  }

  private Class a(String paramString)
  {
    try
    {
      d.i("HostClassLoader", Thread.currentThread().getName() + ":" + this.c + " loadClass: " + paramString);
      Method localMethod1 = ClassLoader.class.getDeclaredMethod("findLoadedClass", new Class[] { String.class });
      localMethod1.setAccessible(true);
      Class localClass = (Class)localMethod1.invoke(this.c, new Object[] { paramString });
      if (localClass == null)
      {
        Method localMethod2 = ClassLoader.class.getDeclaredMethod("findClass", new Class[] { String.class });
        localMethod2.setAccessible(true);
        localClass = (Class)localMethod2.invoke(this.c, new Object[] { paramString });
      }
      return localClass;
    }
    catch (Exception localException)
    {
    }
    throw new ClassNotFoundException(this + "can't find class: " + paramString);
  }

  public final Set getDepends()
  {
    HashSet localHashSet = new HashSet();
    if (this.e != null)
      for (String str : this.e)
        if ((str != null) && (str.length() > 0))
        {
          h localh = this.b.c(str.split("@")[0]);
          if (localh != null)
            localHashSet.add(localh);
        }
    return localHashSet;
  }

  public final Class loadClass(String paramString)
  {
    Class localClass1;
    if ((!this.a.pattern(paramString)) && (!this.a.patternHost(paramString)))
    {
      HashSet localHashSet = new HashSet();
      if (this.d != null)
        for (String str : this.d)
          if ((str != null) && (str.length() > 0))
          {
            h localh = this.b.c(str);
            if (localh != null)
              localHashSet.add(localh);
          }
      localClass1 = a.v(paramString, localHashSet);
      if (localClass1 == null);
    }
    do
    {
      return localClass1;
      try
      {
        if (this.a.patternHost(paramString))
          return a(paramString);
        d.i("HostClassLoader", Thread.currentThread().getName() + ":" + this + " loadClass: " + paramString);
        Class localClass2 = super.loadClass(paramString);
        return localClass2;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        d.i("HostClassLoader", Thread.currentThread().getName() + ":" + this + " loadClass from depends: " + paramString);
        localClass1 = a.v(paramString, getDepends());
      }
    }
    while (localClass1 != null);
    throw localClassNotFoundException;
  }

  public final Class loadClassFromCurrent(String paramString)
  {
    if (this.a.patternHost(paramString))
      return a(paramString);
    d.i("HostClassLoader", Thread.currentThread().getName() + ":" + this + " loadClass: " + paramString);
    return super.loadClass(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.classloader.e
 * JD-Core Version:    0.6.2
 */