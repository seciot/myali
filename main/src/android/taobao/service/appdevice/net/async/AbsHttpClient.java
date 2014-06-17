package android.taobao.service.appdevice.net.async;

import java.util.HashMap;
import java.util.Map;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpVersion;
import org.apache.http.auth.AuthScope;
import org.apache.http.auth.UsernamePasswordCredentials;
import org.apache.http.client.CookieStore;
import org.apache.http.client.CredentialsProvider;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.HttpContext;
import org.apache.http.protocol.SyncBasicHttpContext;

public class AbsHttpClient
{
  protected static final String TAG = "HttpClient";
  private static int a = 10;
  private static int b = 10000;
  private final DefaultHttpClient c;
  private final HttpContext d;
  private final Map<String, String> e;

  public AbsHttpClient()
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    ConnManagerParams.setTimeout(localBasicHttpParams, b);
    ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(a));
    ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 10);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, b);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, b);
    HttpConnectionParams.setTcpNoDelay(localBasicHttpParams, true);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpProtocolParams.setVersion(localBasicHttpParams, HttpVersion.HTTP_1_1);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Double.valueOf(1.0D);
    HttpProtocolParams.setUserAgent(localBasicHttpParams, String.format("Agoo-sdk-%s", arrayOfObject));
    SchemeRegistry localSchemeRegistry = new SchemeRegistry();
    localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    localSchemeRegistry.register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    ThreadSafeClientConnManager localThreadSafeClientConnManager = new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry);
    this.e = new HashMap();
    this.d = new SyncBasicHttpContext(new BasicHttpContext());
    this.c = new DefaultHttpClient(localThreadSafeClientConnManager, localBasicHttpParams);
    this.c.addRequestInterceptor(new AbsHttpClient.1(this));
    this.c.addResponseInterceptor(new AbsHttpClient.2(this));
    this.c.setHttpRequestRetryHandler(new RetryHandler(3));
  }

  public void addHeader(String paramString1, String paramString2)
  {
    this.e.put(paramString1, paramString2);
  }

  public void addRequestInterceptor(HttpRequestInterceptor paramHttpRequestInterceptor)
  {
    this.c.addRequestInterceptor(paramHttpRequestInterceptor);
  }

  public DefaultHttpClient getHttpClient()
  {
    return this.c;
  }

  public HttpContext getHttpContext()
  {
    return this.d;
  }

  protected String getUrlWithQueryString(String paramString, RequestParams paramRequestParams)
  {
    if (paramRequestParams != null)
    {
      String str = paramRequestParams.getParamString();
      paramString = paramString + "?" + str;
    }
    return paramString;
  }

  public void setBasicAuth(String paramString1, String paramString2)
  {
    setBasicAuth(paramString1, paramString2, AuthScope.ANY);
  }

  public void setBasicAuth(String paramString1, String paramString2, AuthScope paramAuthScope)
  {
    UsernamePasswordCredentials localUsernamePasswordCredentials = new UsernamePasswordCredentials(paramString1, paramString2);
    this.c.getCredentialsProvider().setCredentials(paramAuthScope, localUsernamePasswordCredentials);
  }

  public void setCookieStore(CookieStore paramCookieStore)
  {
    this.d.setAttribute("http.cookie-store", paramCookieStore);
  }

  public void setSSLSocketFactory(SSLSocketFactory paramSSLSocketFactory)
  {
    this.c.getConnectionManager().getSchemeRegistry().register(new Scheme("https", paramSSLSocketFactory, 443));
  }

  public void setTimeout(int paramInt)
  {
    HttpParams localHttpParams = this.c.getParams();
    ConnManagerParams.setTimeout(localHttpParams, paramInt);
    HttpConnectionParams.setSoTimeout(localHttpParams, paramInt);
    HttpConnectionParams.setConnectionTimeout(localHttpParams, paramInt);
  }

  public void setUserAgent(String paramString)
  {
    HttpProtocolParams.setUserAgent(this.c.getParams(), paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.AbsHttpClient
 * JD-Core Version:    0.6.2
 */