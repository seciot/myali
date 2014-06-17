package com.alipay.android.app.net;

import android.os.Build.VERSION;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.exception.NetErrorException;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import java.io.IOException;
import java.net.ConnectException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.client.CookieStore;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.cookie.Cookie;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;

public final class MspHttpClient
{
  private static MspHttpClient a;
  private final DefaultHttpClient b;

  private MspHttpClient(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    this.b = new DefaultHttpClient(paramClientConnectionManager, paramHttpParams);
  }

  private MspHttpClient(HttpParams paramHttpParams)
  {
    this.b = new DefaultHttpClient(paramHttpParams);
  }

  public static MspHttpClient a()
  {
    BasicHttpParams localBasicHttpParams;
    if (a == null)
    {
      localBasicHttpParams = new BasicHttpParams();
      HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
      HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, true);
      localBasicHttpParams.setBooleanParameter("http.protocol.expect-continue", false);
      ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 50);
      ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(30));
      ConnManagerParams.setTimeout(localBasicHttpParams, 1000L);
      IAppConfig localIAppConfig = GlobalContext.a().c();
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, localIAppConfig.g());
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, localIAppConfig.h());
      HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, localIAppConfig.i());
      HttpProtocolParams.setUseExpectContinue(localBasicHttpParams, false);
      HttpClientParams.setRedirecting(localBasicHttpParams, true);
      HttpClientParams.setAuthenticating(localBasicHttpParams, false);
      HttpProtocolParams.setUserAgent(localBasicHttpParams, "msp");
    }
    try
    {
      SSLSocketFactory localSSLSocketFactory = SSLSocketFactory.getSocketFactory();
      localSSLSocketFactory.setHostnameVerifier(SSLSocketFactory.STRICT_HOSTNAME_VERIFIER);
      Scheme localScheme1 = new Scheme("https", localSSLSocketFactory, 443);
      Scheme localScheme2 = new Scheme("http", PlainSocketFactory.getSocketFactory(), 80);
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(localScheme1);
      localSchemeRegistry.register(localScheme2);
      a = new MspHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
      return a;
    }
    catch (Exception localException)
    {
      while (true)
      {
        MonitorThread.a().c(localException, "https cert check");
        LogUtils.a(localException);
        LogUtils.i();
        a = new MspHttpClient(localBasicHttpParams);
      }
    }
  }

  public final HttpResponse a(HttpUriRequest paramHttpUriRequest)
  {
    try
    {
      if (GlobalContext.a().d())
      {
        Iterator localIterator = this.b.getCookieStore().getCookies().iterator();
        while (localIterator.hasNext())
        {
          Cookie localCookie = (Cookie)localIterator.next();
          new StringBuilder("name: ").append(localCookie.getName()).append(" value: ").append(localCookie.getValue()).toString();
        }
      }
    }
    catch (ConnectException localConnectException)
    {
      MonitorThread.a().c(localConnectException, "ConnectException");
      throw new NetErrorException(localConnectException);
      HttpResponse localHttpResponse = this.b.execute(paramHttpUriRequest);
      return localHttpResponse;
    }
    catch (IOException localIOException)
    {
      MonitorThread.a().c(localIOException, "IOException");
      throw new NetErrorException(localIOException);
    }
  }

  public final void b()
  {
    ClientConnectionManager localClientConnectionManager = this.b.getConnectionManager();
    if (localClientConnectionManager != null)
    {
      localClientConnectionManager.closeExpiredConnections();
      if (Build.VERSION.SDK_INT >= 9)
        localClientConnectionManager.closeIdleConnections(30L, TimeUnit.MINUTES);
    }
  }

  public final void c()
  {
    ClientConnectionManager localClientConnectionManager = this.b.getConnectionManager();
    if (localClientConnectionManager != null)
    {
      localClientConnectionManager.shutdown();
      a = null;
    }
  }

  public final HttpParams d()
  {
    return this.b.getParams();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.net.MspHttpClient
 * JD-Core Version:    0.6.2
 */