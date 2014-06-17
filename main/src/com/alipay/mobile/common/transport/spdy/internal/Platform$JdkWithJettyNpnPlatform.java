package com.alipay.mobile.common.transport.spdy.internal;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLSocket;

class Platform$JdkWithJettyNpnPlatform extends Platform.Java6
{
  private final Method a;
  private final Method b;
  private final Class c;
  private final Class d;

  public Platform$JdkWithJettyNpnPlatform(Method paramMethod1, Method paramMethod2, Method paramMethod3, Class paramClass1, Class paramClass2)
  {
    super(paramMethod1, null);
    this.b = paramMethod2;
    this.a = paramMethod3;
    this.c = paramClass1;
    this.d = paramClass2;
  }

  public byte[] getNpnSelectedProtocol(SSLSocket paramSSLSocket)
  {
    try
    {
      Platform.JettyNpnProvider localJettyNpnProvider = (Platform.JettyNpnProvider)Proxy.getInvocationHandler(this.a.invoke(null, new Object[] { paramSSLSocket }));
      if ((!Platform.JettyNpnProvider.access$300(localJettyNpnProvider)) && (Platform.JettyNpnProvider.access$400(localJettyNpnProvider) == null))
      {
        Logger.getLogger("com.squareup.okhttp.OkHttpClient").log(Level.INFO, "NPN callback dropped so SPDY is disabled. Is npn-boot on the boot class path?");
        return null;
      }
      if (Platform.JettyNpnProvider.access$300(localJettyNpnProvider))
        return null;
      byte[] arrayOfByte = Platform.JettyNpnProvider.access$400(localJettyNpnProvider).getBytes("US-ASCII");
      return arrayOfByte;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new AssertionError();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
    }
    throw new AssertionError();
  }

  public void setNpnProtocols(SSLSocket paramSSLSocket, byte[] paramArrayOfByte)
  {
    int i = 0;
    try
    {
      ArrayList localArrayList = new ArrayList();
      while (i < paramArrayOfByte.length)
      {
        int j = i + 1;
        int k = paramArrayOfByte[i];
        localArrayList.add(new String(paramArrayOfByte, j, k, "US-ASCII"));
        i = k + j;
      }
      ClassLoader localClassLoader = Platform.class.getClassLoader();
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = this.c;
      arrayOfClass[1] = this.d;
      Object localObject = Proxy.newProxyInstance(localClassLoader, arrayOfClass, new Platform.JettyNpnProvider(localArrayList));
      this.b.invoke(null, new Object[] { paramSSLSocket, localObject });
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new AssertionError(localInvocationTargetException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.Platform.JdkWithJettyNpnPlatform
 * JD-Core Version:    0.6.2
 */