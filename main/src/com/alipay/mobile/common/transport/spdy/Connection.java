package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Platform;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpAuthenticator;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpEngine;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpTransport;
import com.alipay.mobile.common.transport.spdy.internal.http.RawHeaders;
import com.alipay.mobile.common.transport.spdy.internal.http.SpdyTransport;
import com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection;
import com.alipay.mobile.common.transport.spdy.internal.spdy.SpdyConnection.Builder;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.URL;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

public final class Connection
  implements Closeable
{
  private static final byte[] a = { 6, 115, 112, 100, 121, 47, 51, 8, 104, 116, 116, 112, 47, 49, 46, 49 };
  private static final byte[] b = { 115, 112, 100, 121, 47, 51 };
  private static final byte[] c = { 104, 116, 116, 112, 47, 49, 46, 49 };
  private final Route d;
  private Socket e;
  private InputStream f;
  private OutputStream g;
  private boolean h = false;
  private SpdyConnection i;
  private int j = 1;
  private long k;

  public Connection(Route paramRoute)
  {
    this.d = paramRoute;
  }

  private void a()
  {
    int m = 8192;
    int n = 1024;
    int i1 = Platform.get().getMtu(this.e);
    if (i1 < n);
    while (true)
    {
      if (n > m);
      while (true)
      {
        this.f = new BufferedInputStream(this.f, m);
        this.g = new BufferedOutputStream(this.g, m);
        return;
        m = n;
      }
      n = i1;
    }
  }

  private void a(TunnelRequest paramTunnelRequest)
  {
    RawHeaders localRawHeaders2;
    for (Object localObject = paramTunnelRequest.getRequestHeaders(); ; localObject = localRawHeaders2)
    {
      this.g.write(((RawHeaders)localObject).toBytes());
      RawHeaders localRawHeaders1 = RawHeaders.fromBytes(this.f);
      switch (localRawHeaders1.getResponseCode())
      {
      default:
        throw new IOException("Unexpected response code for CONNECT: " + localRawHeaders1.getResponseCode());
      case 407:
        localRawHeaders2 = new RawHeaders((RawHeaders)localObject);
        URL localURL = new URL("https", paramTunnelRequest.host, paramTunnelRequest.port, "/");
        if (!HttpAuthenticator.processAuthHeader(this.d.address.authenticator, 407, localRawHeaders1, localRawHeaders2, this.d.proxy, localURL))
          throw new IOException("Failed to authenticate with proxy");
        break;
      case 200:
        return;
      }
    }
  }

  public final void close()
  {
    this.e.close();
  }

  public final void connect(int paramInt1, int paramInt2, TunnelRequest paramTunnelRequest)
  {
    if (this.h)
      throw new IllegalStateException("already connected");
    this.h = true;
    Socket localSocket;
    Platform localPlatform;
    SSLSocket localSSLSocket;
    if (this.d.proxy.type() != Proxy.Type.HTTP)
    {
      localSocket = new Socket(this.d.proxy);
      this.e = localSocket;
      this.e.setTcpNoDelay(true);
      Platform.get().connectSocket(this.e, this.d.inetSocketAddress, paramInt1);
      this.e.setSoTimeout(paramInt2);
      this.f = this.e.getInputStream();
      this.g = this.e.getOutputStream();
      if (this.d.address.sslSocketFactory == null)
        break label399;
      localPlatform = Platform.get();
      if (requiresTunnel())
        a(paramTunnelRequest);
      this.e = this.d.address.sslSocketFactory.createSocket(this.e, this.d.address.uriHost, this.d.address.uriPort, true);
      localSSLSocket = (SSLSocket)this.e;
      if (!this.d.modernTls)
        break label314;
      localPlatform.enableTlsExtensions(localSSLSocket, this.d.address.uriHost);
    }
    while (true)
    {
      localSSLSocket.startHandshake();
      if (this.d.address.hostnameVerifier.verify(this.d.address.uriHost, localSSLSocket.getSession()))
        break label324;
      throw new IOException("Hostname '" + this.d.address.uriHost + "' was not verified");
      localSocket = new Socket();
      break;
      label314: localPlatform.supportTlsIntolerantServer(localSSLSocket);
    }
    label324: this.g = localSSLSocket.getOutputStream();
    this.f = localSSLSocket.getInputStream();
    a();
    if (AlipayOkHttpClientConfig.isNotUseNpn)
    {
      localSSLSocket.setSoTimeout(0);
      this.i = new SpdyConnection.Builder(this.d.address.getUriHost(), true, this.f, this.g).build();
      this.i.sendConnectionHeader();
    }
    return;
    label399: a();
  }

  public final int getHttpMinorVersion()
  {
    return this.j;
  }

  public final long getIdleStartTimeNs()
  {
    if (this.i == null)
      return this.k;
    return this.i.getIdleStartTimeNs();
  }

  public final Route getRoute()
  {
    return this.d;
  }

  public final Socket getSocket()
  {
    return this.e;
  }

  public final SpdyConnection getSpdyConnection()
  {
    return this.i;
  }

  public final boolean isAlive()
  {
    return (!this.e.isClosed()) && (!this.e.isInputShutdown()) && (!this.e.isOutputShutdown());
  }

  public final boolean isConnected()
  {
    return this.h;
  }

  public final boolean isExpired(long paramLong)
  {
    return getIdleStartTimeNs() < System.nanoTime() - paramLong;
  }

  public final boolean isIdle()
  {
    return (this.i == null) || (this.i.isIdle());
  }

  public final boolean isReadable()
  {
    if (!(this.f instanceof BufferedInputStream))
      return true;
    if (isSpdy())
      return true;
    BufferedInputStream localBufferedInputStream = (BufferedInputStream)this.f;
    try
    {
      int m = this.e.getSoTimeout();
      try
      {
        this.e.setSoTimeout(1);
        localBufferedInputStream.mark(1);
        int n = localBufferedInputStream.read();
        if (n == -1)
          return false;
        localBufferedInputStream.reset();
        return true;
      }
      finally
      {
        this.e.setSoTimeout(m);
      }
    }
    catch (SocketTimeoutException localSocketTimeoutException)
    {
      return true;
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  public final boolean isSpdy()
  {
    return this.i != null;
  }

  public final Object newTransport(HttpEngine paramHttpEngine)
  {
    if (this.i != null)
      return new SpdyTransport(paramHttpEngine, this.i);
    return new HttpTransport(paramHttpEngine, this.g, this.f);
  }

  public final boolean requiresTunnel()
  {
    return (this.d.address.sslSocketFactory != null) && (this.d.proxy.type() == Proxy.Type.HTTP);
  }

  public final void resetIdleStartTime()
  {
    if (this.i != null)
      throw new IllegalStateException("spdyConnection != null");
    this.k = System.nanoTime();
  }

  public final void setHttpMinorVersion(int paramInt)
  {
    this.j = paramInt;
  }

  public final void updateReadTimeout(int paramInt)
  {
    if (!this.h)
      throw new IllegalStateException("updateReadTimeout - not connected");
    this.e.setSoTimeout(paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Connection
 * JD-Core Version:    0.6.2
 */