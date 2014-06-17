package com.alipay.mobile.common.transport.spdy.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import javax.net.ssl.SSLSocket;

class Platform$Android41 extends Platform.Android23
{
  private final Method a;
  private final Method b;

  private Platform$Android41(Method paramMethod1, Class paramClass, Method paramMethod2, Method paramMethod3, Method paramMethod4, Method paramMethod5)
  {
    super(paramMethod1, paramClass, paramMethod2, paramMethod3, null);
    this.a = paramMethod4;
    this.b = paramMethod5;
  }

  public byte[] getNpnSelectedProtocol(SSLSocket paramSSLSocket)
  {
    if (!this.openSslSocketClass.isInstance(paramSSLSocket))
      return null;
    try
    {
      byte[] arrayOfByte = (byte[])this.b.invoke(paramSSLSocket, new Object[0]);
      return arrayOfByte;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new RuntimeException(localInvocationTargetException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
  }

  public void setNpnProtocols(SSLSocket paramSSLSocket, byte[] paramArrayOfByte)
  {
    if (!this.openSslSocketClass.isInstance(paramSSLSocket))
      return;
    try
    {
      this.a.invoke(paramSSLSocket, new Object[] { paramArrayOfByte });
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new RuntimeException(localInvocationTargetException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.Platform.Android41
 * JD-Core Version:    0.6.2
 */