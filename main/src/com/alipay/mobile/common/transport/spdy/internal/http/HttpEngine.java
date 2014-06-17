package com.alipay.mobile.common.transport.spdy.internal.http;

import android.text.TextUtils;
import com.alipay.mobile.common.transport.spdy.Address;
import com.alipay.mobile.common.transport.spdy.Connection;
import com.alipay.mobile.common.transport.spdy.ConnectionPool;
import com.alipay.mobile.common.transport.spdy.OkHttpClient;
import com.alipay.mobile.common.transport.spdy.OkResponseCache;
import com.alipay.mobile.common.transport.spdy.ResponseSource;
import com.alipay.mobile.common.transport.spdy.Route;
import com.alipay.mobile.common.transport.spdy.RouteDatabase;
import com.alipay.mobile.common.transport.spdy.TunnelRequest;
import com.alipay.mobile.common.transport.spdy.internal.Dns;
import com.alipay.mobile.common.transport.spdy.internal.Platform;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import com.alipay.mobile.common.transport.spdy.mwallet.NoRetrySpdyConnException;
import com.alipay.mobile.common.transport.spdy.mwallet.SpdyStrategy;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.zip.GZIPInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

public class HttpEngine
{
  public static final int HTTP_CONTINUE = 100;
  private static final CacheResponse a = new HttpEngine.1();
  private ResponseSource b;
  private OutputStream c;
  protected final OkHttpClient client;
  boolean connected;
  protected Connection connection;
  private Transport d;
  private InputStream e;
  private InputStream f;
  private CacheResponse g;
  private CacheRequest h;
  private boolean i;
  private ResponseHeaders j;
  private InputStream k;
  private boolean l;
  private boolean m;
  protected final String method;
  protected final Policy policy;
  final RequestHeaders requestHeaders;
  ResponseHeaders responseHeaders;
  protected RouteSelector routeSelector;
  long sentRequestMillis = -1L;
  final URI uri;

  public HttpEngine(OkHttpClient paramOkHttpClient, Policy paramPolicy, String paramString, RawHeaders paramRawHeaders, Connection paramConnection, RetryableOutputStream paramRetryableOutputStream)
  {
    this.client = paramOkHttpClient;
    this.policy = paramPolicy;
    this.method = paramString;
    this.connection = paramConnection;
    this.c = paramRetryableOutputStream;
    try
    {
      this.uri = Platform.get().toUriLenient(paramPolicy.getURL());
      this.requestHeaders = new RequestHeaders(this.uri, new RawHeaders(paramRawHeaders));
      return;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      throw new IOException(localURISyntaxException.getMessage());
    }
  }

  private void a(ResponseHeaders paramResponseHeaders, InputStream paramInputStream)
  {
    if (this.f != null)
      throw new IllegalStateException();
    this.responseHeaders = paramResponseHeaders;
    if (paramInputStream != null)
      a(paramInputStream);
  }

  private void a(InputStream paramInputStream)
  {
    this.e = paramInputStream;
    if ((this.i) && (this.responseHeaders.isContentEncodingGzip()))
    {
      this.responseHeaders.stripContentEncoding();
      this.responseHeaders.stripContentLength();
      this.f = new GZIPInputStream(paramInputStream);
      return;
    }
    this.f = paramInputStream;
  }

  public static String getDefaultUserAgent()
  {
    String str = System.getProperty("http.agent");
    if (str != null)
      return str;
    return "Java" + System.getProperty("java.version");
  }

  public static String getOriginAddress(URL paramURL)
  {
    int n = paramURL.getPort();
    String str = paramURL.getHost();
    if ((n > 0) && (n != Util.getDefaultPort(paramURL.getProtocol())))
      str = str + ":" + n;
    return str;
  }

  public static String requestPath(URL paramURL)
  {
    String str = paramURL.getFile();
    if (str == null)
      str = "/";
    while (str.startsWith("/"))
      return str;
    return "/" + str;
  }

  protected boolean acceptCacheResponseType(CacheResponse paramCacheResponse)
  {
    return true;
  }

  public final void automaticallyReleaseConnectionToPool()
  {
    this.l = true;
    if ((this.connection != null) && (this.m))
    {
      this.client.getConnectionPool().recycle(this.connection);
      this.connection = null;
    }
  }

  protected final void connect()
  {
    if (this.connection != null)
      return;
    String str;
    SSLSocketFactory localSSLSocketFactory;
    if (this.routeSelector == null)
    {
      str = this.uri.getHost();
      if (str == null)
        throw new UnknownHostException(this.uri.toString());
      if (!this.uri.getScheme().equalsIgnoreCase("https"))
        break label452;
      localSSLSocketFactory = this.client.getSslSocketFactory();
    }
    for (HostnameVerifier localHostnameVerifier = this.client.getHostnameVerifier(); ; localHostnameVerifier = null)
    {
      this.routeSelector = new RouteSelector(new Address(str, Util.getEffectivePort(this.uri), localSSLSocketFactory, localHostnameVerifier, this.client.getAuthenticator(), this.client.getProxy(), this.client.getTransports()), this.uri, this.client.getProxySelector(), this.client.getConnectionPool(), Dns.DEFAULT, this.client.getRoutesDatabase());
      try
      {
        if (!this.client.getClientLock().tryLock(SpdyStrategy.DEFAULT_CONNECTION_TIMEOUT, TimeUnit.MILLISECONDS))
          throw new NoRetrySpdyConnException("SPDY_ERROR_CONN_WAIT");
      }
      catch (InterruptedException localInterruptedException)
      {
        throw new NoRetrySpdyConnException("SPDY_ERROR_CONN_WAIT");
      }
      try
      {
        this.connection = this.routeSelector.next(this.method);
        boolean bool = this.connection.isConnected();
        if (bool)
          break label435;
        try
        {
          if (SpdyStrategy.getInstance().isNetTypeSpdyConnError(this.client.getNetType(), this.routeSelector.getSelectorID()))
            throw new NoRetrySpdyConnException("SPDY_ERROR_CONN_MSG");
        }
        catch (IOException localIOException)
        {
          if (!(localIOException instanceof NoRetrySpdyConnException))
            SpdyStrategy.getInstance().setNetTypeSpdyConnError(this.client.getNetType(), this.routeSelector.getSelectorID());
          throw localIOException;
        }
      }
      finally
      {
        this.client.getClientLock().unlock();
      }
      this.connection.connect(this.client.getConnectTimeout(), this.client.getReadTimeout(), getTunnelConfig());
      this.client.getConnectionPool().maybeShare(this.connection);
      this.client.getRoutesDatabase().connected(this.connection.getRoute());
      SpdyStrategy.getInstance().cancelNetTypeSpdyConnError(this.client.getNetType());
      while (true)
      {
        this.client.getClientLock().unlock();
        connected(this.connection);
        if (this.connection.getRoute().getProxy() == this.client.getProxy())
          break;
        this.requestHeaders.getHeaders().setRequestLine(getRequestLine());
        return;
        label435: this.connection.updateReadTimeout(this.client.getReadTimeout());
      }
      label452: localSSLSocketFactory = null;
    }
  }

  protected void connected(Connection paramConnection)
  {
    this.policy.setSelectedProxy(paramConnection.getRoute().getProxy());
    this.connected = true;
  }

  public final CacheResponse getCacheResponse()
  {
    return this.g;
  }

  public final Connection getConnection()
  {
    return this.connection;
  }

  public final OutputStream getRequestBody()
  {
    if (this.b == null)
      throw new IllegalStateException();
    return this.c;
  }

  public final RequestHeaders getRequestHeaders()
  {
    return this.requestHeaders;
  }

  String getRequestLine()
  {
    String str1;
    StringBuilder localStringBuilder;
    URL localURL;
    if ((this.connection == null) || (this.connection.getHttpMinorVersion() != 0))
    {
      str1 = "HTTP/1.1";
      localStringBuilder = new StringBuilder().append(this.method).append(" ");
      localURL = this.policy.getURL();
      if (!includeAuthorityInRequestLine())
        break label92;
    }
    label92: for (String str2 = localURL.toString(); ; str2 = requestPath(localURL))
    {
      return str2 + " " + str1;
      str1 = "HTTP/1.0";
      break;
    }
  }

  public final InputStream getResponseBody()
  {
    if (this.responseHeaders == null)
      throw new IllegalStateException();
    return this.f;
  }

  public final int getResponseCode()
  {
    if (this.responseHeaders == null)
      throw new IllegalStateException();
    return this.responseHeaders.getHeaders().getResponseCode();
  }

  public final ResponseHeaders getResponseHeaders()
  {
    if (this.responseHeaders == null)
      throw new IllegalStateException();
    return this.responseHeaders;
  }

  protected TunnelRequest getTunnelConfig()
  {
    return null;
  }

  public URI getUri()
  {
    return this.uri;
  }

  boolean hasRequestBody()
  {
    return (this.method.equals("POST")) || (this.method.equals("PUT")) || (this.method.equals("PATCH"));
  }

  public final boolean hasResponse()
  {
    return this.responseHeaders != null;
  }

  public final boolean hasResponseBody()
  {
    int n = this.responseHeaders.getHeaders().getResponseCode();
    if (this.method.equals("HEAD"));
    do
    {
      return false;
      if (((n < 100) || (n >= 200)) && (n != 204) && (n != 304))
        return true;
    }
    while ((this.responseHeaders.getContentLength() == -1) && (!this.responseHeaders.isChunked()));
    return true;
  }

  protected boolean includeAuthorityInRequestLine()
  {
    if (this.connection == null)
      return this.policy.usingProxy();
    return this.connection.getRoute().getProxy().type() == Proxy.Type.HTTP;
  }

  public final void readResponse()
  {
    if (hasResponse())
      this.responseHeaders.setResponseSource(this.b);
    do
    {
      return;
      if (this.b == null)
        throw new IllegalStateException("readResponse() without sendRequest()");
    }
    while (!this.b.requiresConnection());
    if (this.sentRequestMillis == -1L)
    {
      if ((this.c instanceof RetryableOutputStream))
      {
        int n = ((RetryableOutputStream)this.c).contentLength();
        this.requestHeaders.setContentLength(n);
      }
      this.d.writeRequestHeaders();
    }
    if (this.c != null)
    {
      this.c.close();
      if ((this.c instanceof RetryableOutputStream))
        this.d.writeRequestBody((RetryableOutputStream)this.c);
    }
    this.d.flushRequest();
    this.responseHeaders = this.d.readResponseHeaders();
    this.responseHeaders.setLocalTimestamps(this.sentRequestMillis, System.currentTimeMillis());
    this.responseHeaders.setResponseSource(this.b);
    if (this.b == ResponseSource.CONDITIONAL_CACHE)
    {
      if (this.j.validate(this.responseHeaders))
      {
        release(false);
        this.responseHeaders = this.j.combine(this.responseHeaders);
        OkResponseCache localOkResponseCache2 = this.client.getOkResponseCache();
        localOkResponseCache2.trackConditionalCacheHit();
        localOkResponseCache2.update(this.g, this.policy.getHttpConnectionToCache());
        a(this.k);
        return;
      }
      Util.closeQuietly(this.k);
    }
    OkResponseCache localOkResponseCache1;
    HttpURLConnection localHttpURLConnection;
    if ((hasResponseBody()) && (this.policy.getUseCaches()))
    {
      localOkResponseCache1 = this.client.getOkResponseCache();
      if (localOkResponseCache1 != null)
      {
        localHttpURLConnection = this.policy.getHttpConnectionToCache();
        if (this.responseHeaders.isCacheable(this.requestHeaders))
          break label366;
        localOkResponseCache1.maybeRemove(localHttpURLConnection.getRequestMethod(), this.uri);
      }
    }
    while (true)
    {
      a(this.d.getTransferStream(this.h));
      return;
      label366: this.h = localOkResponseCache1.put(this.uri, localHttpURLConnection);
    }
  }

  public void receiveHeaders(RawHeaders paramRawHeaders)
  {
    CookieHandler localCookieHandler = this.client.getCookieHandler();
    if (localCookieHandler != null)
      localCookieHandler.put(this.uri, paramRawHeaders.toMultimap(true));
  }

  public final void release(boolean paramBoolean)
  {
    if (this.f == this.k)
      Util.closeQuietly(this.f);
    if ((!this.m) && (this.connection != null))
    {
      this.m = true;
      if ((this.d != null) && (this.d.makeReusable(paramBoolean, this.c, this.e)))
        break label78;
      Util.closeQuietly(this.connection);
      this.connection = null;
    }
    label78: 
    while (!this.l)
      return;
    this.client.getConnectionPool().recycle(this.connection);
    this.connection = null;
  }

  public final void sendRequest()
  {
    if (this.b != null);
    label504: 
    do
    {
      do
      {
        return;
        this.requestHeaders.getHeaders().setRequestLine(getRequestLine());
        if ((this.requestHeaders.getUserAgent() == null) || (!TextUtils.equals(this.requestHeaders.getUserAgent(), "android")))
          this.requestHeaders.setUserAgent("android");
        if (this.requestHeaders.getHost() == null)
          this.requestHeaders.setHost(getOriginAddress(this.policy.getURL()));
        if (((this.connection == null) || (this.connection.getHttpMinorVersion() != 0)) && (this.requestHeaders.getConnection() == null))
          this.requestHeaders.setConnection("Keep-Alive");
        if (this.requestHeaders.getAcceptEncoding() == null)
        {
          this.i = true;
          this.requestHeaders.setAcceptEncoding("gzip");
        }
        if ((hasRequestBody()) && (this.requestHeaders.getContentType() == null))
          this.requestHeaders.setContentType("application/x-www-form-urlencoded");
        long l1 = this.policy.getIfModifiedSince();
        if (l1 != 0L)
          this.requestHeaders.setIfModifiedSince(new Date(l1));
        CookieHandler localCookieHandler = this.client.getCookieHandler();
        if (localCookieHandler != null)
          this.requestHeaders.addCookies(localCookieHandler.get(this.uri, this.requestHeaders.getHeaders().toMultimap(false)));
        this.b = ResponseSource.NETWORK;
        CacheResponse localCacheResponse;
        Map localMap;
        if (this.policy.getUseCaches())
        {
          OkResponseCache localOkResponseCache2 = this.client.getOkResponseCache();
          if (localOkResponseCache2 != null)
          {
            localCacheResponse = localOkResponseCache2.get(this.uri, this.method, this.requestHeaders.getHeaders().toMultimap(false));
            if (localCacheResponse != null)
            {
              localMap = localCacheResponse.getHeaders();
              this.k = localCacheResponse.getBody();
              if ((acceptCacheResponseType(localCacheResponse)) && (localMap != null) && (this.k != null))
                break label504;
              Util.closeQuietly(this.k);
            }
          }
        }
        while (true)
        {
          OkResponseCache localOkResponseCache1 = this.client.getOkResponseCache();
          if (localOkResponseCache1 != null)
            localOkResponseCache1.trackResponse(this.b);
          if ((this.requestHeaders.isOnlyIfCached()) && (this.b.requiresConnection()))
          {
            if (this.b == ResponseSource.CONDITIONAL_CACHE)
              Util.closeQuietly(this.k);
            this.b = ResponseSource.CACHE;
            this.g = a;
            RawHeaders localRawHeaders1 = RawHeaders.fromMultimap(this.g.getHeaders(), true);
            a(new ResponseHeaders(this.uri, localRawHeaders1), this.g.getBody());
          }
          if (!this.b.requiresConnection())
            break label672;
          if (this.connection == null)
            connect();
          if (this.d == null)
            break label629;
          throw new IllegalStateException();
          RawHeaders localRawHeaders2 = RawHeaders.fromMultimap(localMap, true);
          this.j = new ResponseHeaders(this.uri, localRawHeaders2);
          long l2 = System.currentTimeMillis();
          this.b = this.j.chooseResponseSource(l2, this.requestHeaders);
          if (this.b == ResponseSource.CACHE)
          {
            this.g = localCacheResponse;
            a(this.j, this.k);
          }
          else if (this.b == ResponseSource.CONDITIONAL_CACHE)
          {
            this.g = localCacheResponse;
          }
          else
          {
            if (this.b != ResponseSource.NETWORK)
              break;
            Util.closeQuietly(this.k);
          }
        }
        throw new AssertionError();
        this.d = ((Transport)this.connection.newTransport(this));
      }
      while ((!hasRequestBody()) || (this.c != null));
      this.c = this.d.createRequestBody();
      return;
    }
    while (this.connection == null);
    label629: this.client.getConnectionPool().recycle(this.connection);
    label672: this.connection = null;
  }

  public void writingRequestHeaders()
  {
    if (this.sentRequestMillis != -1L)
      throw new IllegalStateException();
    this.sentRequestMillis = System.currentTimeMillis();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpEngine
 * JD-Core Version:    0.6.2
 */