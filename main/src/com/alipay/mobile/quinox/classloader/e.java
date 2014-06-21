package com.alipay.mobile.quinox.classloader;

import com.alipay.mobile.quinox.LauncherApplication;
import com.alipay.mobile.quinox.bundle.BundlesManager;
import com.alipay.mobile.quinox.utils.ZLog;

import dalvik.system.PathClassLoader;

import java.lang.reflect.Method;
import java.util.HashSet;
import java.util.Set;

public final class e extends PathClassLoader
  implements Dependable
{
  private LauncherApplication a;
  private BootstrapClassloader b;
  private PathClassLoader c;
  private String[] d;
  private String[] e;

  public e(BootstrapClassloader parama, String paramString1, String paramString2, ClassLoader paramClassLoader, PathClassLoader paramPathClassLoader, BundlesManager paramb)
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
      ZLog.i("HostClassLoader", Thread.currentThread().getName() + ":" + this.c + " loadClass: " + paramString);
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
    	throw new RuntimeException(this + "can't find class: " + paramString);
    }
  }

	public final Set<Dependable> getDepends() {
		final Set<Dependable> depends = new HashSet<Dependable>();
		if (this.e != null) {
			for (final String s : this.e) {
				if (s != null && s.length() > 0) {
					final Dependable c = this.b.c(s.split("@")[0]);
					if (c != null) {
						depends.add(c);
					}
				}
			}
		}
		return depends;
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
            Dependable localh = this.b.c(str);
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

	public final Class<?> loadClassFromCurrent(String s) {
		if (this.a.patternHost(s)) {
			return this.a(s);
		}
		ZLog.i("HostClassLoader", Thread.currentThread().getName() + ":" + this
				+ " loadClass: " + s);
		try {
			return super.loadClass(s);
		} catch (ClassNotFoundException e) {
			throw new RuntimeException(e);
		}
	}
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.classloader.e
 * JD-Core Version:    0.6.2
 */