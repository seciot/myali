package com.alipay.mobile.common.reflect;

public class ReflectUtil
{
  public static final Object getInstance(Class paramClass)
  {
    return paramClass.newInstance();
  }

  public static final Object getInstance(ClassLoader paramClassLoader, String paramString)
  {
    return paramClassLoader.loadClass(paramString).newInstance();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.reflect.ReflectUtil
 * JD-Core Version:    0.6.2
 */