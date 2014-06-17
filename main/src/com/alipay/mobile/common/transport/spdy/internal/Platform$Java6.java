package com.alipay.mobile.common.transport.spdy.internal;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.NetworkInterface;
import java.net.Socket;
import java.net.SocketException;

class Platform$Java6 extends Platform
{
  private final Method a;

  private Platform$Java6(Method paramMethod)
  {
    this.a = paramMethod;
  }

  public int getMtu(Socket paramSocket)
  {
    try
    {
      NetworkInterface localNetworkInterface = NetworkInterface.getByInetAddress(paramSocket.getLocalAddress());
      if (localNetworkInterface == null)
        return super.getMtu(paramSocket);
      int i = ((Integer)this.a.invoke(localNetworkInterface, new Object[0])).intValue();
      return i;
    }
    catch (NullPointerException localNullPointerException)
    {
      return super.getMtu(paramSocket);
    }
    catch (SocketException localSocketException)
    {
      return super.getMtu(paramSocket);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new AssertionError(localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      if ((localInvocationTargetException.getCause() instanceof IOException))
        throw ((IOException)localInvocationTargetException.getCause());
      throw new RuntimeException(localInvocationTargetException.getCause());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.Platform.Java6
 * JD-Core Version:    0.6.2
 */