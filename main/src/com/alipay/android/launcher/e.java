package com.alipay.android.launcher;

import com.alipay.android.launcher.factory.XmlWidgetGroupFactory;
import dalvik.system.PathClassLoader;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

final class e extends ClassLoader
{
  e(TabLauncher paramTabLauncher, ClassLoader paramClassLoader, XmlWidgetGroupFactory paramXmlWidgetGroupFactory)
  {
    super(paramClassLoader);
  }

  public final Class<?> loadClass(String paramString)
  {
    Iterator localIterator1 = this.a.getClassloaders().iterator();
    Object localObject1 = null;
    ClassLoader localClassLoader2;
    do
    {
      if (!localIterator1.hasNext())
        break;
      localClassLoader2 = (ClassLoader)localIterator1.next();
    }
    while (localClassLoader2 == null);
    while (true)
    {
      Object localObject3;
      try
      {
        while (!(localClassLoader2 instanceof PathClassLoader))
        {
          localObject2 = (Class)localClassLoader2.getClass().getDeclaredMethod("loadClassFromCurrent", new Class[] { String.class }).invoke(localClassLoader2, new Object[] { paramString });
          ClassLoader localClassLoader1;
          if (localObject2 != null)
            if (localObject2 == null)
            {
              Iterator localIterator2 = this.a.getClassloaders().iterator();
              localObject3 = localObject2;
              do
              {
                if (!localIterator2.hasNext())
                  break;
                localClassLoader1 = (ClassLoader)localIterator2.next();
              }
              while (localClassLoader1 == null);
            }
          try
          {
            Class localClass = localClassLoader1.loadClass(paramString);
            localObject2 = localClass;
            if (localObject2 != null)
            {
              if (localObject2 == null)
                localObject2 = super.loadClass(paramString);
              if (localObject2 == null)
                new StringBuilder("TabLauncher ClassLoader  class Not Found ").append(paramString).append("!!!").toString();
              return localObject2;
              localObject1 = localObject2;
              break;
            }
            localObject3 = localObject2;
          }
          catch (Exception localException1)
          {
          }
        }
        continue;
      }
      catch (Exception localException2)
      {
      }
      break;
      Object localObject2 = localObject3;
      continue;
      localObject2 = localObject1;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.e
 * JD-Core Version:    0.6.2
 */