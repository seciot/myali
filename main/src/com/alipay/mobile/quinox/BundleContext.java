package com.alipay.mobile.quinox;

import android.os.Looper;
import com.alipay.mobile.quinox.bundle.b;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class BundleContext
{
  private LauncherApplication a;

  public BundleContext(LauncherApplication paramLauncherApplication)
  {
    this.a = paramLauncherApplication;
  }

  public String addExternelBundle(String paramString)
  {
    if ((Looper.myLooper() != null) && (Looper.myLooper() == Looper.getMainLooper()))
      throw new RuntimeException("can't in main thread");
    return this.a.getBundlesManager().d(paramString);
  }

  public ClassLoader findClassLoaderByBundleName(String paramString)
  {
    ClassLoader localClassLoader = this.a.getClassLoader();
    if ((localClassLoader instanceof com.alipay.mobile.quinox.classloader.a))
      localClassLoader = (ClassLoader)((com.alipay.mobile.quinox.classloader.a)localClassLoader).b(paramString);
    return localClassLoader;
  }

  public Set findPackagesByBundleName(String paramString)
  {
    String[] arrayOfString = this.a.getBundlesManager().a(paramString).g();
    Object localObject;
    if (arrayOfString == null)
      localObject = null;
    while (true)
    {
      return localObject;
      localObject = new HashSet();
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        ((Set)localObject).add(arrayOfString[j]);
    }
  }

  public Set getAllBundleNames()
  {
    Set localSet = this.a.getBundlesManager().i();
    HashSet localHashSet = new HashSet();
    Iterator localIterator = localSet.iterator();
    while (localIterator.hasNext())
      localHashSet.add(((com.alipay.mobile.quinox.bundle.a)localIterator.next()).c());
    return localHashSet;
  }

  public String getBundleNameByComponent(String paramString)
  {
    com.alipay.mobile.quinox.bundle.a locala = this.a.getBundlesManager().c(paramString);
    if (locala == null)
      return null;
    return locala.c();
  }

  public void init(String paramString)
  {
    b localb = this.a.getBundlesManager();
    com.alipay.mobile.quinox.bundle.a locala = localb.a(paramString);
    com.alipay.mobile.quinox.classloader.a locala1 = localb.j();
    if (locala1.b(paramString) == null)
    {
      locala1.a(locala);
      locala1.b(paramString);
    }
  }

  public void removeExternelBundle(String paramString)
  {
    this.a.getBundlesManager().e(paramString);
  }

  public void updateBundles(List paramList1, List paramList2)
  {
    if ((Looper.myLooper() != null) && (Looper.myLooper() == Looper.getMainLooper()))
      throw new RuntimeException("can't in main thread");
    this.a.getBundlesManager().a(paramList1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.BundleContext
 * JD-Core Version:    0.6.2
 */