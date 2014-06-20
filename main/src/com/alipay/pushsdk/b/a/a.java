package com.alipay.pushsdk.b.a;

import javax.net.ssl.HttpsURLConnection;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

public final class a
  implements HttpClient
{
  private final DefaultHttpClient a;

  private a(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    this.a = new BundlesManager(paramClientConnectionManager, paramHttpParams, (byte)0);
  }

  public static AppBundle a(String paramString)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, true);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 60000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 45000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 16384);
    HttpClientParams.setRedirecting(localBasicHttpParams, false);
    HttpClientParams.setAuthenticating(localBasicHttpParams, false);
    if (paramString != null)
      HttpProtocolParams.setUserAgent(localBasicHttpParams, paramString);
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    SSLSocketFactory localSSLSocketFactory = SSLSocketFactory.getSocketFactory();
    X509HostnameVerifier localX509HostnameVerifier = SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER;
    localSSLSocketFactory.setHostnameVerifier((X509HostnameVerifier)localX509HostnameVerifier);
    HttpsURLConnection.setDefaultHostnameVerifier(localX509HostnameVerifier);
    localSchemeRegistry.register(new Scheme("https", localSSLSocketFactory, 443));
    return new AppBundle(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
  }

  public final Object execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler)
  {
    return this.a.execute(paramHttpHost, paramHttpRequest, paramResponseHandler);
  }

  public final Object execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext)
  {
    return this.a.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }

  public final Object execute(HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler)
  {
    return this.a.execute(paramHttpUriRequest, paramResponseHandler);
  }

  public final Object execute(HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext)
  {
    return this.a.execute(paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }

  public final HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
  {
    return this.a.execute(paramHttpHost, paramHttpRequest);
  }

  public final HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return this.a.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }

  public final HttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    return this.a.execute(paramHttpUriRequest);
  }

  public final HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
  {
    return this.a.execute(paramHttpUriRequest, paramHttpContext);
  }

  public final ClientConnectionManager getConnectionManager()
  {
    return this.a.getConnectionManager();
  }

  public final HttpParams getParams()
  {
    return this.a.getParams();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.b.a.a
 * JD-Core Version:    0.6.2
 */