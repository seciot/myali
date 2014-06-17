package com.alipay.mobile.common.transport.spdy;

import java.net.InetSocketAddress;
import java.net.Proxy;

public class Route
{
  final Address address;
  final InetSocketAddress inetSocketAddress;
  final boolean modernTls;
  final Proxy proxy;

  public Route(Address paramAddress, Proxy paramProxy, InetSocketAddress paramInetSocketAddress, boolean paramBoolean)
  {
    if (paramAddress == null)
      throw new NullPointerException("address == null");
    if (paramProxy == null)
      throw new NullPointerException("proxy == null");
    if (paramInetSocketAddress == null)
      throw new NullPointerException("inetSocketAddress == null");
    this.address = paramAddress;
    this.proxy = paramProxy;
    this.inetSocketAddress = paramInetSocketAddress;
    this.modernTls = paramBoolean;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool1 = paramObject instanceof Route;
    boolean bool2 = false;
    if (bool1)
    {
      Route localRoute = (Route)paramObject;
      boolean bool3 = this.address.equals(localRoute.address);
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = this.proxy.equals(localRoute.proxy);
        bool2 = false;
        if (bool4)
        {
          boolean bool5 = this.inetSocketAddress.equals(localRoute.inetSocketAddress);
          bool2 = false;
          if (bool5)
          {
            boolean bool6 = this.modernTls;
            boolean bool7 = localRoute.modernTls;
            bool2 = false;
            if (bool6 == bool7)
              bool2 = true;
          }
        }
      }
    }
    return bool2;
  }

  Route flipTlsMode()
  {
    Address localAddress = this.address;
    Proxy localProxy = this.proxy;
    InetSocketAddress localInetSocketAddress = this.inetSocketAddress;
    if (!this.modernTls);
    for (boolean bool = true; ; bool = false)
      return new Route(localAddress, localProxy, localInetSocketAddress, bool);
  }

  public Address getAddress()
  {
    return this.address;
  }

  public Proxy getProxy()
  {
    return this.proxy;
  }

  public InetSocketAddress getSocketAddress()
  {
    return this.inetSocketAddress;
  }

  public int hashCode()
  {
    int i = 31 * (31 * (527 + this.address.hashCode()) + this.proxy.hashCode()) + this.inetSocketAddress.hashCode();
    if (this.modernTls);
    for (int j = i * 31; ; j = 0)
      return j + i;
  }

  public boolean isModernTls()
  {
    return this.modernTls;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Route
 * JD-Core Version:    0.6.2
 */