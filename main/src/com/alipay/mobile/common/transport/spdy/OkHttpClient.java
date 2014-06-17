package com.alipay.mobile.common.transport.spdy;

import android.content.Context;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpAuthenticator;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpURLConnectionImpl;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpsURLConnectionImpl;
import com.alipay.mobile.common.transport.spdy.internal.http.OkResponseCacheAdapter;
import com.alipay.mobile.common.transport.spdy.internal.tls.OkHostnameVerifier;
import java.net.CookieHandler;
import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.ResponseCache;
import java.net.URL;
import java.net.URLStreamHandler;
import java.net.URLStreamHandlerFactory;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

public final class OkHttpClient
  implements URLStreamHandlerFactory
{
  private static final List a = Util.immutableList(Arrays.asList(new String[] { "spdy/3", "http/1.1" }));
  private final RouteDatabase b;
  private final Dispatcher c;
  private Proxy d;
  private List e;
  private ProxySelector f;
  private CookieHandler g;
  private ResponseCache h;
  private SSLSocketFactory i;
  private HostnameVerifier j;
  private OkAuthenticator k;
  private ConnectionPool l;
  private boolean m = true;
  private int n;
  private int o;
  private Context p;
  private Lock q;
  private String r;

  public OkHttpClient()
  {
    this.b = new RouteDatabase();
    this.c = new Dispatcher();
    this.q = new ReentrantLock(true);
  }

  private OkHttpClient(OkHttpClient paramOkHttpClient)
  {
    this.b = paramOkHttpClient.b;
    this.c = paramOkHttpClient.c;
    this.q = paramOkHttpClient.q;
  }

  private OkHttpClient a()
  {
    OkHttpClient localOkHttpClient = new OkHttpClient(this);
    localOkHttpClient.d = this.d;
    ProxySelector localProxySelector;
    CookieHandler localCookieHandler;
    label46: ResponseCache localResponseCache;
    label64: SSLSocketFactory localSSLSocketFactory;
    label89: Object localObject;
    label108: OkAuthenticator localOkAuthenticator;
    label127: ConnectionPool localConnectionPool;
    if (this.f != null)
    {
      localProxySelector = this.f;
      localOkHttpClient.f = localProxySelector;
      if (this.g == null)
        break label204;
      localCookieHandler = this.g;
      localOkHttpClient.g = localCookieHandler;
      if (this.h == null)
        break label211;
      localResponseCache = this.h;
      localOkHttpClient.h = localResponseCache;
      if (AlipayOkHttpClientConfig.isTrustAll)
        break label227;
      if (this.i == null)
        break label219;
      localSSLSocketFactory = this.i;
      localOkHttpClient.i = localSSLSocketFactory;
      if (this.j == null)
        break label311;
      localObject = this.j;
      localOkHttpClient.j = ((HostnameVerifier)localObject);
      if (this.k == null)
        break label319;
      localOkAuthenticator = this.k;
      localOkHttpClient.k = localOkAuthenticator;
      if (this.l == null)
        break label327;
      localConnectionPool = this.l;
      label146: localOkHttpClient.l = localConnectionPool;
      localOkHttpClient.m = this.m;
      if (this.e == null)
        break label335;
    }
    label204: label335: for (List localList = this.e; ; localList = a)
    {
      localOkHttpClient.e = localList;
      localOkHttpClient.n = this.n;
      localOkHttpClient.o = this.o;
      return localOkHttpClient;
      localProxySelector = ProxySelector.getDefault();
      break;
      localCookieHandler = CookieHandler.getDefault();
      break label46;
      label211: localResponseCache = ResponseCache.getDefault();
      break label64;
      label219: localSSLSocketFactory = HttpsURLConnection.getDefaultSSLSocketFactory();
      break label89;
      label227: if (this.i != null)
        localOkHttpClient.i = this.i;
      while (true)
      {
        this.i = localOkHttpClient.i;
        break;
        localOkHttpClient.i = HttpsURLConnection.getDefaultSSLSocketFactory();
        try
        {
          SSLContext localSSLContext = SSLContext.getInstance("TLSv1");
          TrustManager[] arrayOfTrustManager = new TrustManager[1];
          arrayOfTrustManager[0] = new OkHttpClient.1(this);
          localSSLContext.init(null, arrayOfTrustManager, null);
          localOkHttpClient.i = localSSLContext.getSocketFactory();
        }
        catch (Exception localException)
        {
        }
      }
      localObject = OkHostnameVerifier.INSTANCE;
      break label108;
      localOkAuthenticator = HttpAuthenticator.SYSTEM_DEFAULT;
      break label127;
      localConnectionPool = ConnectionPool.getDefault();
      break label146;
    }
  }

  final void cancel(Object paramObject)
  {
    this.c.cancel(paramObject);
  }

  public final URLStreamHandler createURLStreamHandler(String paramString)
  {
    if ((!paramString.equals("http")) && (!paramString.equals("https")))
      return null;
    return new OkHttpClient.2(this, paramString);
  }

  final void enqueue(Request paramRequest, Response.Receiver paramReceiver)
  {
    this.c.enqueue(open(paramRequest.url(), null), paramRequest, paramReceiver);
  }

  public final OkAuthenticator getAuthenticator()
  {
    return this.k;
  }

  public final Lock getClientLock()
  {
    return this.q;
  }

  public final int getConnectTimeout()
  {
    return this.n;
  }

  public final ConnectionPool getConnectionPool()
  {
    return this.l;
  }

  public final Context getContext()
  {
    return this.p;
  }

  public final CookieHandler getCookieHandler()
  {
    return this.g;
  }

  public final boolean getFollowProtocolRedirects()
  {
    return this.m;
  }

  public final HostnameVerifier getHostnameVerifier()
  {
    return this.j;
  }

  public final String getNetType()
  {
    return this.r;
  }

  public final OkResponseCache getOkResponseCache()
  {
    if ((this.h instanceof HttpResponseCache))
      return ((HttpResponseCache)this.h).okResponseCache;
    if (this.h != null)
      return new OkResponseCacheAdapter(this.h);
    return null;
  }

  public final Proxy getProxy()
  {
    return this.d;
  }

  public final ProxySelector getProxySelector()
  {
    return this.f;
  }

  public final int getReadTimeout()
  {
    return this.o;
  }

  public final ResponseCache getResponseCache()
  {
    return this.h;
  }

  public final RouteDatabase getRoutesDatabase()
  {
    return this.b;
  }

  public final SSLSocketFactory getSslSocketFactory()
  {
    return this.i;
  }

  public final List getTransports()
  {
    return this.e;
  }

  public final HttpURLConnection open(URL paramURL, String paramString)
  {
    return open(paramURL, this.d, paramString);
  }

  final HttpURLConnection open(URL paramURL, Proxy paramProxy, String paramString)
  {
    String str = paramURL.getProtocol();
    OkHttpClient localOkHttpClient = a();
    localOkHttpClient.d = paramProxy;
    localOkHttpClient.r = paramString;
    if (str.equals("http"))
      return new HttpURLConnectionImpl(paramURL, localOkHttpClient);
    if (str.equals("https"))
      return new HttpsURLConnectionImpl(paramURL, localOkHttpClient);
    throw new IllegalArgumentException("Unexpected protocol: " + str);
  }

  public final OkHttpClient setAuthenticator(OkAuthenticator paramOkAuthenticator)
  {
    this.k = paramOkAuthenticator;
    return this;
  }

  public final void setClientLock(Lock paramLock)
  {
    this.q = paramLock;
  }

  public final void setConnectTimeout(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("timeout < 0");
    if (paramTimeUnit == null)
      throw new IllegalArgumentException("unit == null");
    long l1 = paramTimeUnit.toMillis(paramLong);
    if (l1 > 2147483647L)
      throw new IllegalArgumentException("Timeout too large.");
    this.n = ((int)l1);
  }

  public final OkHttpClient setConnectionPool(ConnectionPool paramConnectionPool)
  {
    this.l = paramConnectionPool;
    return this;
  }

  public final void setContext(Context paramContext)
  {
    this.p = paramContext;
  }

  public final OkHttpClient setCookieHandler(CookieHandler paramCookieHandler)
  {
    this.g = paramCookieHandler;
    return this;
  }

  public final OkHttpClient setFollowProtocolRedirects(boolean paramBoolean)
  {
    this.m = paramBoolean;
    return this;
  }

  public final OkHttpClient setHostnameVerifier(HostnameVerifier paramHostnameVerifier)
  {
    this.j = paramHostnameVerifier;
    return this;
  }

  public final void setNetType(String paramString)
  {
    this.r = paramString;
  }

  public final OkHttpClient setProxy(Proxy paramProxy)
  {
    this.d = paramProxy;
    return this;
  }

  public final OkHttpClient setProxySelector(ProxySelector paramProxySelector)
  {
    this.f = paramProxySelector;
    return this;
  }

  public final void setReadTimeout(long paramLong, TimeUnit paramTimeUnit)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("timeout < 0");
    if (paramTimeUnit == null)
      throw new IllegalArgumentException("unit == null");
    long l1 = paramTimeUnit.toMillis(paramLong);
    if (l1 > 2147483647L)
      throw new IllegalArgumentException("Timeout too large.");
    this.o = ((int)l1);
  }

  public final OkHttpClient setResponseCache(ResponseCache paramResponseCache)
  {
    this.h = paramResponseCache;
    return this;
  }

  public final OkHttpClient setSslSocketFactory(SSLSocketFactory paramSSLSocketFactory)
  {
    this.i = paramSSLSocketFactory;
    return this;
  }

  public final OkHttpClient setTransports(List paramList)
  {
    List localList = Util.immutableList(paramList);
    if (!localList.contains("http/1.1"))
      throw new IllegalArgumentException("transports doesn't contain http/1.1: " + localList);
    if (localList.contains(null))
      throw new IllegalArgumentException("transports must not contain null");
    if (localList.contains(""))
      throw new IllegalArgumentException("transports contains an empty string");
    this.e = localList;
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.OkHttpClient
 * JD-Core Version:    0.6.2
 */