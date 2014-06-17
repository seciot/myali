package com.aps;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class l
{
  static int a(Object paramObject, String paramString, Object[] paramArrayOfObject)
  {
    Class localClass = paramObject.getClass();
    Class[] arrayOfClass = new Class[paramArrayOfObject.length];
    int i = 0;
    int j = paramArrayOfObject.length;
    while (i < j)
    {
      arrayOfClass[i] = paramArrayOfObject[i].getClass();
      i++;
    }
    return ((Integer)localClass.getMethod(paramString, arrayOfClass).invoke(paramObject, paramArrayOfObject)).intValue();
  }

  static Object a(String paramString1, String paramString2)
  {
    Class localClass = Class.forName(paramString1);
    return localClass.getField(paramString2).get(localClass);
  }

  static Object a(String paramString1, String paramString2, Object[] paramArrayOfObject, Class<?>[] paramArrayOfClass)
  {
    return Class.forName(paramString1).getMethod(paramString2, paramArrayOfClass).invoke(null, paramArrayOfObject);
  }

  static int b(String paramString1, String paramString2)
  {
    return ((Integer)a(paramString1, paramString2)).intValue();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.l
 * JD-Core Version:    0.6.2
 */