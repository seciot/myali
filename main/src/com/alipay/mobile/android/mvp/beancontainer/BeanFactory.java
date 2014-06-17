package com.alipay.mobile.android.mvp.beancontainer;

import java.lang.ref.SoftReference;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

public final class BeanFactory
{
  private static SoftReference<Map<String, SoftReference<Object>>> a;
  private static final Object b = new Object();

  private static final Map<String, SoftReference<Object>> a()
  {
    if (b());
    synchronized (b)
    {
      if (b())
        a = new SoftReference(new HashMap());
      return (Map)a.get();
    }
  }

  private static boolean a(SoftReference<Object> paramSoftReference)
  {
    return (paramSoftReference == null) || (paramSoftReference.get() == null);
  }

  private static boolean b()
  {
    return (a == null) || (a.get() == null);
  }

  public static final <T> T getBean(Class<T> paramClass)
  {
    SoftReference localSoftReference1;
    try
    {
      Map localMap = a();
      localSoftReference1 = (SoftReference)localMap.get(paramClass.getName());
      if (a(localSoftReference1))
        try
        {
          SoftReference localSoftReference2 = (SoftReference)localMap.get(paramClass.getName());
          if (a(localSoftReference2))
          {
            Constructor localConstructor = paramClass.getDeclaredConstructor(new Class[0]);
            localConstructor.setAccessible(true);
            localSoftReference2 = new SoftReference(localConstructor.newInstance(new Object[0]));
            localMap.put(paramClass.getName(), localSoftReference2);
          }
          Object localObject3 = localSoftReference2.get();
          return localObject3;
        }
        finally
        {
        }
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
    Object localObject1 = localSoftReference1.get();
    return localObject1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.beancontainer.BeanFactory
 * JD-Core Version:    0.6.2
 */