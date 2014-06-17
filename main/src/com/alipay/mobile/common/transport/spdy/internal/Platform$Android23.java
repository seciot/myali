package com.alipay.mobile.common.transport.spdy.internal;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import javax.net.ssl.SSLSocket;

class Platform$Android23 extends Platform.Java6
{
  private final Method a;
  private final Method b;
  protected final Class openSslSocketClass;

  private Platform$Android23(Method paramMethod1, Class paramClass, Method paramMethod2, Method paramMethod3)
  {
    super(paramMethod1, null);
    this.openSslSocketClass = paramClass;
    this.a = paramMethod2;
    this.b = paramMethod3;
  }

  public void connectSocket(Socket paramSocket, InetSocketAddress paramInetSocketAddress, int paramInt)
  {
    try
    {
      paramSocket.connect(paramInetSocketAddress, paramInt);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      IOException localIOException = new IOException("Exception in connect");
      localIOException.initCause(localSecurityException);
      throw localIOException;
    }
  }

  public void enableTlsExtensions(SSLSocket paramSSLSocket, String paramString)
  {
    super.enableTlsExtensions(paramSSLSocket, paramString);
    if (this.openSslSocketClass.isInstance(paramSSLSocket));
    try
    {
      Method localMethod = this.a;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(true);
      localMethod.invoke(paramSSLSocket, arrayOfObject);
      this.b.invoke(paramSSLSocket, new Object[] { paramString });
      return;
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
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.Platform.Android23
 * JD-Core Version:    0.6.2
 */