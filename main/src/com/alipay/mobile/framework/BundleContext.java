package com.alipay.mobile.framework;

import java.lang.reflect.Method;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class BundleContext
{
  private Object a;

  public BundleContext(Object paramObject)
  {
    this.a = paramObject;
  }

  public void addExternelBundle(String paramString)
  {
    String str = (String)this.a.getClass().getDeclaredMethod("addExternelBundle", new Class[] { String.class }).invoke(this.a, new Object[] { paramString });
    AlipayApplication.getInstance().getMicroApplicationContext().loadBundle(str);
  }

  public String findBundleNameByAppId(String paramString)
  {
    Map localMap = AlipayApplication.getInstance().getLazyBundles();
    Iterator localIterator;
    if (localMap != null)
      localIterator = localMap.keySet().iterator();
    String str;
    do
    {
      if (!localIterator.hasNext())
        return null;
      str = (String)localIterator.next();
    }
    while (!((Set)localMap.get(str)).contains(paramString));
    return str;
  }

  public String findBundleNameByServiceName(String paramString)
  {
    return findBundleNameByAppId(paramString);
  }

  public ClassLoader findClassLoaderByBundleName(String paramString)
  {
    try
    {
      ClassLoader localClassLoader = (ClassLoader)this.a.getClass().getDeclaredMethod("findClassLoaderByBundleName", new Class[] { String.class }).invoke(this.a, new Object[] { paramString });
      return localClassLoader;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public Set<String> findPackagesByBundleName(String paramString)
  {
    try
    {
      Set localSet = (Set)this.a.getClass().getDeclaredMethod("findPackagesByBundleName", new Class[] { String.class }).invoke(this.a, new Object[] { paramString });
      return localSet;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public Set<String> getAllBundleNames()
  {
    try
    {
      Set localSet = (Set)this.a.getClass().getDeclaredMethod("getAllBundleNames", new Class[0]).invoke(this.a, new Object[0]);
      return localSet;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public String getBundleNameByComponent(String paramString)
  {
    try
    {
      String str = (String)this.a.getClass().getDeclaredMethod("getBundleNameByComponent", new Class[] { String.class }).invoke(this.a, new Object[] { paramString });
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public void init(String paramString)
  {
    try
    {
      this.a.getClass().getDeclaredMethod("init", new Class[] { String.class }).invoke(this.a, new Object[] { paramString });
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public boolean isLazyBundleByAppId(String paramString)
  {
    Map localMap = AlipayApplication.getInstance().getLazyBundles();
    Iterator localIterator;
    if (localMap != null)
      localIterator = localMap.values().iterator();
    do
      if (!localIterator.hasNext())
        return false;
    while (!((Set)localIterator.next()).contains(paramString));
    return true;
  }

  public boolean isLazyBundleByBundleName(String paramString)
  {
    Map localMap = AlipayApplication.getInstance().getLazyBundles();
    boolean bool = false;
    if (localMap != null)
    {
      bool = false;
      if (paramString != null)
        bool = localMap.containsKey(paramString);
    }
    return bool;
  }

  public boolean isLazyBundleByServiceName(String paramString)
  {
    return isLazyBundleByAppId(paramString);
  }

  public void loadBundle(String paramString)
  {
    try
    {
      init(paramString);
      AlipayApplication.getInstance().getMicroApplicationContext().loadBundle(paramString);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void removeExternelBundle(String paramString)
  {
    this.a.getClass().getDeclaredMethod("removeExternelBundle", new Class[] { String.class }).invoke(this.a, new Object[] { paramString });
  }

  public void updateBundles(List<String> paramList1, List<String> paramList2)
  {
    this.a.getClass().getDeclaredMethod("updateBundles", new Class[] { List.class, List.class }).invoke(this.a, new Object[] { paramList1, paramList2 });
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.BundleContext
 * JD-Core Version:    0.6.2
 */