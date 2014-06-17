package com.alipay.mobile.quinox.engine;

import java.lang.reflect.Method;
import java.util.List;
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
    this.a.getClass().getDeclaredMethod("addExternelBundle", new Class[] { String.class }).invoke(this.a, new Object[] { paramString });
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
      localException.printStackTrace();
    }
    return null;
  }

  public Set findPackagesByBundleName(String paramString)
  {
    try
    {
      Set localSet = (Set)this.a.getClass().getDeclaredMethod("findPackagesByBundleName", new Class[] { String.class }).invoke(this.a, new Object[] { paramString });
      return localSet;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public Set getAllBundleNames()
  {
    try
    {
      Set localSet = (Set)this.a.getClass().getDeclaredMethod("getAllBundleNames", new Class[0]).invoke(this.a, new Object[0]);
      return localSet;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
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
      localException.printStackTrace();
    }
    return null;
  }

  public void removeExternelBundle(String paramString)
  {
    this.a.getClass().getDeclaredMethod("removeExternelBundle", new Class[] { String.class }).invoke(this.a, new Object[] { paramString });
  }

  public void updateBundles(List paramList1, List paramList2)
  {
    this.a.getClass().getDeclaredMethod("updateBundles", new Class[] { List.class, List.class }).invoke(this.a, new Object[] { paramList1, paramList2 });
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.engine.BundleContext
 * JD-Core Version:    0.6.2
 */