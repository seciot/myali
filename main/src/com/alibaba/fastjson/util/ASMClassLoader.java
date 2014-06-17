package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import java.security.AccessController;
import java.security.ProtectionDomain;

public class ASMClassLoader extends ClassLoader
{
  private static ProtectionDomain DOMAIN = (ProtectionDomain)AccessController.doPrivileged(new ASMClassLoader.1());

  public ASMClassLoader()
  {
    super(Thread.currentThread().getContextClassLoader());
  }

  public static Class<?> forName(String paramString)
  {
    try
    {
      Class localClass = Thread.currentThread().getContextClassLoader().loadClass(paramString);
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
    }
    throw new JSONException("class nout found : " + paramString);
  }

  public Class<?> defineClassPublic(String paramString, byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return defineClass(paramString, paramArrayOfByte, paramInt1, paramInt2, DOMAIN);
  }

  public boolean isExternalClass(Class<?> paramClass)
  {
    ClassLoader localClassLoader = paramClass.getClassLoader();
    if (localClassLoader == null)
      return false;
    do
    {
      this = getParent();
      if (this == null)
        break;
    }
    while (this != localClassLoader);
    return false;
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.ASMClassLoader
 * JD-Core Version:    0.6.2
 */