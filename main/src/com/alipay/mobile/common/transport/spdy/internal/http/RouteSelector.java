package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.Address;
import com.alipay.mobile.common.transport.spdy.Connection;
import com.alipay.mobile.common.transport.spdy.ConnectionPool;
import com.alipay.mobile.common.transport.spdy.Route;
import com.alipay.mobile.common.transport.spdy.RouteDatabase;
import com.alipay.mobile.common.transport.spdy.internal.Dns;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.UUID;

public final class RouteSelector
{
  private final Address a;
  private final URI b;
  private final ProxySelector c;
  private final ConnectionPool d;
  private final Dns e;
  private final RouteDatabase f;
  private Proxy g;
  private InetSocketAddress h;
  private boolean i;
  private Proxy j;
  private Iterator k;
  private InetAddress[] l;
  private int m;
  private int n;
  private int o = -1;
  private final List p;
  private String q;

  public RouteSelector(Address paramAddress, URI paramURI, ProxySelector paramProxySelector, ConnectionPool paramConnectionPool, Dns paramDns, RouteDatabase paramRouteDatabase)
  {
    this.a = paramAddress;
    this.b = paramURI;
    this.c = paramProxySelector;
    this.d = paramConnectionPool;
    this.e = paramDns;
    this.f = paramRouteDatabase;
    this.p = new LinkedList();
    this.q = UUID.randomUUID().toString();
    Proxy localProxy = paramAddress.getProxy();
    this.i = true;
    if (localProxy != null)
      this.j = localProxy;
    List localList;
    do
    {
      return;
      localList = this.c.select(paramURI);
    }
    while (localList == null);
    this.k = localList.iterator();
  }

  private Proxy a()
  {
    if (this.j != null)
    {
      this.i = false;
      return this.j;
    }
    if (this.k != null)
      while (this.k.hasNext())
      {
        Proxy localProxy = (Proxy)this.k.next();
        if (localProxy.type() != Proxy.Type.DIRECT)
          return localProxy;
      }
    this.i = false;
    return Proxy.NO_PROXY;
  }

  private boolean b()
  {
    return this.l != null;
  }

  private boolean c()
  {
    return this.o != -1;
  }

  private boolean d()
  {
    return !this.p.isEmpty();
  }

  public final void connectFailed(Connection paramConnection, IOException paramIOException)
  {
    Route localRoute = paramConnection.getRoute();
    if ((localRoute.getProxy().type() != Proxy.Type.DIRECT) && (this.c != null))
      this.c.connectFailed(this.b, localRoute.getProxy().address(), paramIOException);
    this.f.failed(localRoute, paramIOException);
  }

  public final String getSelectorID()
  {
    return this.q;
  }

  public final boolean hasNext()
  {
    return (c()) || (b()) || (this.i) || (d());
  }

  public final Connection next(String paramString)
  {
    new StringBuilder("当前pool中的连接数量：").append(this.d.getConnectionCount()).toString();
    while (true)
    {
      Connection localConnection = this.d.get(this.a);
      if (localConnection == null)
        break;
      if ((paramString.equals("GET")) || (localConnection.isReadable()))
        return localConnection;
      localConnection.close();
    }
    Proxy localProxy;
    Object localObject;
    label171: int i3;
    label270: int i1;
    if (!c())
    {
      if (!b())
      {
        if (!this.i)
        {
          if (!d())
            throw new NoSuchElementException();
          return new Connection((Route)this.p.remove(0));
        }
        this.g = a();
        localProxy = this.g;
        this.l = null;
        if (localProxy.type() == Proxy.Type.DIRECT)
        {
          localObject = this.b.getHost();
          this.n = Util.getEffectivePort(this.b);
          this.l = this.e.getAllByName((String)localObject);
          this.m = 0;
        }
      }
      else
      {
        InetAddress[] arrayOfInetAddress = this.l;
        int i2 = this.m;
        this.m = (i2 + 1);
        InetSocketAddress localInetSocketAddress1 = new InetSocketAddress(arrayOfInetAddress[i2], this.n);
        if (this.m == this.l.length)
        {
          this.l = null;
          this.m = 0;
        }
        this.h = localInetSocketAddress1;
        if (this.a.getSslSocketFactory() == null)
          break label424;
        i3 = 1;
        this.o = i3;
      }
    }
    else
    {
      if (this.o != 1)
        break label430;
      this.o = 0;
      i1 = 1;
      label292: if (i1 != 1)
        break label456;
    }
    Route localRoute;
    label424: label430: label456: for (boolean bool = true; ; bool = false)
    {
      localRoute = new Route(this.a, this.g, this.h, bool);
      if (!this.f.shouldPostpone(localRoute))
        break label462;
      this.p.add(localRoute);
      break;
      SocketAddress localSocketAddress = localProxy.address();
      if (!(localSocketAddress instanceof InetSocketAddress))
        throw new IllegalArgumentException("Proxy.address() is not an InetSocketAddress: " + localSocketAddress.getClass());
      InetSocketAddress localInetSocketAddress2 = (InetSocketAddress)localSocketAddress;
      String str = localInetSocketAddress2.getHostName();
      this.n = localInetSocketAddress2.getPort();
      localObject = str;
      break label171;
      i3 = 0;
      break label270;
      if (this.o == 0)
      {
        this.o = -1;
        i1 = 0;
        break label292;
      }
      throw new AssertionError();
    }
    label462: return new Connection(localRoute);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.RouteSelector
 * JD-Core Version:    0.6.2
 */