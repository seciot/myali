package com.alipay.mobile.longlink.b.a.a;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import javax.net.SocketFactory;

final class a extends SocketFactory
{
  public final Socket createSocket(String paramString, int paramInt)
  {
    Socket localSocket = new Socket(Proxy.NO_PROXY);
    localSocket.connect(new InetSocketAddress(paramString, paramInt), 30000);
    return localSocket;
  }

  public final Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    return new Socket(paramString, paramInt1, paramInetAddress, paramInt2);
  }

  public final Socket createSocket(InetAddress paramInetAddress, int paramInt)
  {
    Socket localSocket = new Socket(Proxy.NO_PROXY);
    localSocket.connect(new InetSocketAddress(paramInetAddress, paramInt));
    return localSocket;
  }

  public final Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
  {
    return new Socket(paramInetAddress1, paramInt1, paramInetAddress2, paramInt2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.a.a.a
 * JD-Core Version:    0.6.2
 */