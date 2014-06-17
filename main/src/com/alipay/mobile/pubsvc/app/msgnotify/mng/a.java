package com.alipay.mobile.pubsvc.app.msgnotify.mng;

import com.alipay.mobile.common.logging.LogCatLog;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;

public class a
{
  private static a b;
  private Map<String, Object> a = new HashMap();

  public static final a a()
  {
    if (b == null);
    try
    {
      if (b == null)
        b = new a();
      return b;
    }
    finally
    {
    }
  }

  public final <T> T a(Class<T> paramClass)
  {
    return a(paramClass, null);
  }

  public final <T> T a(Class<T> paramClass, Object[] paramArrayOfObject)
  {
    String str = paramClass.getName();
    Object localObject1 = this.a.get(str);
    if (localObject1 == null)
      synchronized (this.a)
      {
        Object localObject3 = this.a.get(str);
        if (localObject3 == null)
        {
          if ((paramArrayOfObject == null) || (paramArrayOfObject.length <= 0))
            break label146;
          Class[] arrayOfClass = new Class[paramArrayOfObject.length];
          for (int i = 0; i < paramArrayOfObject.length; i++)
            arrayOfClass[i] = paramArrayOfObject[i].getClass();
          localObject3 = paramClass.getConstructor(arrayOfClass).newInstance(paramArrayOfObject);
          this.a.put(str, localObject3);
          if (LogCatLog.isSwitch())
            new StringBuilder("event=[BeanFactory#getBean]  new instance: ").append(str).toString();
        }
        return localObject3;
        label146: Object localObject4 = paramClass.newInstance();
        localObject3 = localObject4;
      }
    return localObject1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.mng.a
 * JD-Core Version:    0.6.2
 */