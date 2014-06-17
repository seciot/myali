package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.Connection;
import com.alipay.mobile.common.transport.spdy.OkHttpClient;
import com.alipay.mobile.common.transport.spdy.Route;
import com.alipay.mobile.common.transport.spdy.internal.Platform;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import com.alipay.mobile.common.transport.spdy.mwallet.NoRetrySpdyConnException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpRetryException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Proxy.Type;
import java.net.SocketPermission;
import java.net.URL;
import java.security.Permission;
import java.security.cert.CertificateException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.SSLHandshakeException;

public class HttpURLConnectionImpl extends HttpURLConnection
  implements Policy
{
  static final int HTTP_TEMP_REDIRECT = 307;
  private final RawHeaders a = new RawHeaders();
  private long b = -1L;
  private int c;
  final OkHttpClient client;
  private Proxy d;
  protected HttpEngine httpEngine;
  protected IOException httpEngineFailure;

  public HttpURLConnectionImpl(URL paramURL, OkHttpClient paramOkHttpClient)
  {
    super(paramURL);
    this.client = paramOkHttpClient;
  }

  private HttpEngine a(String paramString, RawHeaders paramRawHeaders, Connection paramConnection, RetryableOutputStream paramRetryableOutputStream)
  {
    if (this.url.getProtocol().equals("http"))
      return new HttpEngine(this.client, this, paramString, paramRawHeaders, paramConnection, paramRetryableOutputStream);
    if (this.url.getProtocol().equals("https"))
      return new HttpsEngine(this.client, this, paramString, paramRawHeaders, paramConnection, paramRetryableOutputStream);
    throw new AssertionError();
  }

  private void a()
  {
    if (this.httpEngineFailure != null)
      throw this.httpEngineFailure;
    if (this.httpEngine != null)
      return;
    this.connected = true;
    do
      try
      {
        if (this.doOutput)
        {
          if (this.method.equals("GET"))
            this.method = "POST";
        }
        else
        {
          this.httpEngine = a(this.method, this.a, null, null);
          return;
        }
      }
      catch (IOException localIOException)
      {
        this.httpEngineFailure = localIOException;
        throw localIOException;
      }
    while ((this.method.equals("POST")) || (this.method.equals("PUT")) || (this.method.equals("PATCH")));
    throw new ProtocolException(this.method + " does not support writing");
  }

  private void a(String paramString, boolean paramBoolean)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramBoolean)
      localArrayList.addAll(this.client.getTransports());
    String[] arrayOfString = paramString.split(",", -1);
    int i = arrayOfString.length;
    for (int j = 0; j < i; j++)
      localArrayList.add(arrayOfString[j]);
    this.client.setTransports(localArrayList);
  }

  private static boolean a(Proxy paramProxy)
  {
    return (paramProxy != null) && (paramProxy.type() != Proxy.Type.DIRECT);
  }

  private boolean a(boolean paramBoolean)
  {
    boolean bool1 = true;
    try
    {
      this.httpEngine.sendRequest();
      if (paramBoolean)
        this.httpEngine.readResponse();
      return bool1;
    }
    catch (IOException localIOException)
    {
      RouteSelector localRouteSelector = this.httpEngine.routeSelector;
      if ((localRouteSelector != null) && (this.httpEngine.connection != null))
        localRouteSelector.connectFailed(this.httpEngine.connection, localIOException);
      OutputStream localOutputStream = this.httpEngine.getRequestBody();
      boolean bool2;
      boolean bool3;
      label133: boolean bool6;
      if ((localOutputStream == null) || ((localOutputStream instanceof RetryableOutputStream)))
      {
        bool2 = bool1;
        if (((localRouteSelector != null) || (this.httpEngine.connection != null)) && ((localRouteSelector == null) || (localRouteSelector.hasNext())))
        {
          if ((!(localIOException instanceof SSLHandshakeException)) || (!(localIOException.getCause() instanceof CertificateException)))
            break label192;
          bool3 = bool1;
          boolean bool4 = localIOException instanceof ProtocolException;
          boolean bool5 = localIOException instanceof NoRetrySpdyConnException;
          if ((bool3) || (bool4) || (bool5))
            break label198;
          bool6 = bool1;
          label163: if ((bool6) && (bool2))
            break label204;
        }
        this.httpEngineFailure = localIOException;
        bool1 = false;
      }
      while (true)
      {
        if (!bool1)
          break label250;
        return false;
        bool2 = false;
        break;
        label192: bool3 = false;
        break label133;
        label198: bool6 = false;
        break label163;
        label204: this.httpEngine.release(bool1);
        RetryableOutputStream localRetryableOutputStream = (RetryableOutputStream)localOutputStream;
        this.httpEngine = a(this.method, this.a, null, localRetryableOutputStream);
        this.httpEngine.routeSelector = localRouteSelector;
      }
      label250: throw localIOException;
    }
  }

  private HttpEngine b()
  {
    a();
    if (this.httpEngine.hasResponse())
      return this.httpEngine;
    OutputStream localOutputStream;
    label188: 
    do
    {
      HttpURLConnectionImpl.Retry localRetry;
      if (localRetry == HttpURLConnectionImpl.Retry.DIFFERENT_CONNECTION)
        this.httpEngine.automaticallyReleaseConnectionToPool();
      this.httpEngine.release(false);
      this.httpEngine = a(str2, this.a, this.httpEngine.getConnection(), (RetryableOutputStream)localOutputStream);
      if (localOutputStream == null)
        this.httpEngine.getRequestHeaders().removeContentLength();
      while (!a(true));
      Proxy localProxy;
      int i;
      if (this.httpEngine.connection != null)
      {
        localProxy = this.httpEngine.connection.getRoute().getProxy();
        i = getResponseCode();
        switch (i)
        {
        default:
          localRetry = HttpURLConnectionImpl.Retry.NONE;
        case 407:
        case 401:
        case 300:
        case 301:
        case 302:
        case 303:
        case 307:
        }
      }
      while (true)
      {
        if (localRetry != HttpURLConnectionImpl.Retry.NONE)
          break label551;
        this.httpEngine.automaticallyReleaseConnectionToPool();
        return this.httpEngine;
        localProxy = this.client.getProxy();
        break;
        if (localProxy.type() != Proxy.Type.HTTP)
          throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
        if (HttpAuthenticator.processAuthHeader(this.client.getAuthenticator(), getResponseCode(), this.httpEngine.getResponseHeaders().getHeaders(), this.a, localProxy, this.url))
        {
          localRetry = HttpURLConnectionImpl.Retry.SAME_CONNECTION;
        }
        else
        {
          localRetry = HttpURLConnectionImpl.Retry.NONE;
          continue;
          if (!getInstanceFollowRedirects())
            break label188;
          int j = 1 + this.c;
          this.c = j;
          if (j > 20)
            throw new ProtocolException("Too many redirects: " + this.c);
          if ((i == 307) && (!this.method.equals("GET")) && (!this.method.equals("HEAD")))
            break label188;
          String str1 = getHeaderField("Location");
          if (str1 == null)
            break label188;
          URL localURL = this.url;
          this.url = new URL(localURL, str1);
          if ((!this.url.getProtocol().equals("https")) && (!this.url.getProtocol().equals("http")))
            break label188;
          boolean bool1 = localURL.getProtocol().equals(this.url.getProtocol());
          if ((!bool1) && (!this.client.getFollowProtocolRedirects()))
            break label188;
          boolean bool2 = localURL.getHost().equals(this.url.getHost());
          if (Util.getEffectivePort(localURL) == Util.getEffectivePort(this.url));
          for (int k = 1; ; k = 0)
          {
            if ((!bool2) || (k == 0) || (!bool1))
              break label543;
            localRetry = HttpURLConnectionImpl.Retry.SAME_CONNECTION;
            break;
          }
          localRetry = HttpURLConnectionImpl.Retry.DIFFERENT_CONNECTION;
        }
      }
      String str2 = this.method;
      localOutputStream = this.httpEngine.getRequestBody();
      int m = getResponseCode();
      if ((m == 300) || (m == 301) || (m == 302) || (m == 303))
      {
        str2 = "GET";
        localOutputStream = null;
      }
    }
    while ((localOutputStream == null) || ((localOutputStream instanceof RetryableOutputStream)));
    label543: label551: throw new HttpRetryException("Cannot retry streamed HTTP body", this.httpEngine.getResponseCode());
  }

  public final void addRequestProperty(String paramString1, String paramString2)
  {
    if (this.connected)
      throw new IllegalStateException("Cannot add request property after connection is made");
    if (paramString1 == null)
      throw new NullPointerException("field == null");
    if (paramString2 == null)
    {
      Platform.get().logW("Ignoring header " + paramString1 + " because its value was null.");
      return;
    }
    if ("X-Android-Transports".equals(paramString1))
    {
      a(paramString2, true);
      return;
    }
    this.a.add(paramString1, paramString2);
  }

  public final void connect()
  {
    a();
    while (!a(false));
  }

  public final void disconnect()
  {
    if (this.httpEngine != null)
    {
      if (this.httpEngine.hasResponse())
        Util.closeQuietly(this.httpEngine.getResponseBody());
      this.httpEngine.release(true);
    }
  }

  public final int getChunkLength()
  {
    return this.chunkLength;
  }

  public int getConnectTimeout()
  {
    return this.client.getConnectTimeout();
  }

  public final InputStream getErrorStream()
  {
    try
    {
      HttpEngine localHttpEngine = b();
      boolean bool = localHttpEngine.hasResponseBody();
      Object localObject = null;
      if (bool)
      {
        int i = localHttpEngine.getResponseCode();
        localObject = null;
        if (i >= 400)
        {
          InputStream localInputStream = localHttpEngine.getResponseBody();
          localObject = localInputStream;
        }
      }
      return localObject;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final long getFixedContentLength()
  {
    return this.b;
  }

  public final String getHeaderField(int paramInt)
  {
    try
    {
      String str = b().getResponseHeaders().getHeaders().getValue(paramInt);
      return str;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final String getHeaderField(String paramString)
  {
    try
    {
      RawHeaders localRawHeaders = b().getResponseHeaders().getHeaders();
      if (paramString == null)
        return localRawHeaders.getStatusLine();
      String str = localRawHeaders.get(paramString);
      return str;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final String getHeaderFieldKey(int paramInt)
  {
    try
    {
      String str = b().getResponseHeaders().getHeaders().getFieldName(paramInt);
      return str;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final Map getHeaderFields()
  {
    try
    {
      Map localMap = b().getResponseHeaders().getHeaders().toMultimap(true);
      return localMap;
    }
    catch (IOException localIOException)
    {
    }
    return Collections.emptyMap();
  }

  public HttpURLConnection getHttpConnectionToCache()
  {
    return this;
  }

  public HttpEngine getHttpEngine()
  {
    return this.httpEngine;
  }

  public final InputStream getInputStream()
  {
    if (!this.doInput)
      throw new ProtocolException("This protocol does not support input");
    HttpEngine localHttpEngine = b();
    if (getResponseCode() >= 400)
      throw new FileNotFoundException(this.url.toString());
    InputStream localInputStream = localHttpEngine.getResponseBody();
    if (localInputStream == null)
      throw new ProtocolException("No response body exists; responseCode=" + getResponseCode());
    return localInputStream;
  }

  public final OutputStream getOutputStream()
  {
    connect();
    OutputStream localOutputStream = this.httpEngine.getRequestBody();
    if (localOutputStream == null)
      throw new ProtocolException("method does not support a request body: " + this.method);
    if (this.httpEngine.hasResponse())
      throw new ProtocolException("cannot write request body after response has been read");
    return localOutputStream;
  }

  public final Permission getPermission()
  {
    String str = getURL().getHost();
    int i = Util.getEffectivePort(getURL());
    if (usingProxy())
    {
      InetSocketAddress localInetSocketAddress = (InetSocketAddress)this.client.getProxy().address();
      str = localInetSocketAddress.getHostName();
      i = localInetSocketAddress.getPort();
    }
    return new SocketPermission(str + ":" + i, "connect, resolve");
  }

  public int getReadTimeout()
  {
    return this.client.getReadTimeout();
  }

  public final Map getRequestProperties()
  {
    if (this.connected)
      throw new IllegalStateException("Cannot access request header fields after connection is set");
    return this.a.toMultimap(false);
  }

  public final String getRequestProperty(String paramString)
  {
    if (paramString == null)
      return null;
    return this.a.get(paramString);
  }

  public final int getResponseCode()
  {
    return b().getResponseCode();
  }

  public String getResponseMessage()
  {
    return b().getResponseHeaders().getHeaders().getResponseMessage();
  }

  public void setConnectTimeout(int paramInt)
  {
    this.client.setConnectTimeout(paramInt, TimeUnit.MILLISECONDS);
  }

  public void setFixedLengthStreamingMode(int paramInt)
  {
    setFixedLengthStreamingMode(paramInt);
  }

  public void setFixedLengthStreamingMode(long paramLong)
  {
    if (this.connected)
      throw new IllegalStateException("Already connected");
    if (this.chunkLength > 0)
      throw new IllegalStateException("Already in chunked mode");
    if (paramLong < 0L)
      throw new IllegalArgumentException("contentLength < 0");
    this.b = paramLong;
    this.fixedContentLength = ((int)Math.min(paramLong, 2147483647L));
  }

  public void setReadTimeout(int paramInt)
  {
    this.client.setReadTimeout(paramInt, TimeUnit.MILLISECONDS);
  }

  public final void setRequestProperty(String paramString1, String paramString2)
  {
    if (this.connected)
      throw new IllegalStateException("Cannot set request property after connection is made");
    if (paramString1 == null)
      throw new NullPointerException("field == null");
    if (paramString2 == null)
    {
      Platform.get().logW("Ignoring header " + paramString1 + " because its value was null.");
      return;
    }
    if ("X-Android-Transports".equals(paramString1))
    {
      a(paramString2, false);
      return;
    }
    this.a.set(paramString1, paramString2);
  }

  public final void setSelectedProxy(Proxy paramProxy)
  {
    this.d = paramProxy;
  }

  public final boolean usingProxy()
  {
    if (this.d != null)
      return a(this.d);
    return a(this.client.getProxy());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpURLConnectionImpl
 * JD-Core Version:    0.6.2
 */