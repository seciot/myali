package com.alipay.mobile.command.rpc.http;

import android.content.ContentResolver;
import android.content.Context;
import android.net.SSLCertificateSocketFactory;
import android.net.SSLSessionCache;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.entity.AbstractHttpEntity;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;

public final class AndroidHttpClientExt
  implements HttpClient
{
  public static final String CONTENT_ENCODING = "content-encoding";
  public static final String CONTENT_TYPE = "content-type";
  public static long DEFAULT_SYNC_MIN_GZIP_BYTES = 256L;
  private static String[] a = { "text/", "application/xml", "application/json" };
  private static final HttpRequestInterceptor b = new AndroidHttpClientExt.1();
  private final HttpClient c;
  private RuntimeException d = new IllegalStateException("AndroidHttpClient created and never closed");
  private volatile AndroidHttpClientExt.LoggingConfiguration e;

  private AndroidHttpClientExt(ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    this.c = new AndroidHttpClientExt.2(this, paramClientConnectionManager, paramHttpParams);
  }

  private static boolean b(HttpUriRequest paramHttpUriRequest)
  {
    Header[] arrayOfHeader1 = paramHttpUriRequest.getHeaders("content-encoding");
    int i1;
    if (arrayOfHeader1 != null)
    {
      int n = arrayOfHeader1.length;
      i1 = 0;
      if (i1 < n)
        if (!"gzip".equalsIgnoreCase(arrayOfHeader1[i1].getValue()));
    }
    while (true)
    {
      return true;
      i1++;
      break;
      Header[] arrayOfHeader2 = paramHttpUriRequest.getHeaders("content-type");
      if (arrayOfHeader2 != null)
      {
        int i = arrayOfHeader2.length;
        for (int j = 0; j < i; j++)
        {
          Header localHeader = arrayOfHeader2[j];
          for (String str : a)
            if (localHeader.getValue().startsWith(str))
              return false;
        }
      }
    }
  }

  public static AbstractHttpEntity getCompressedEntity(byte[] paramArrayOfByte, ContentResolver paramContentResolver)
  {
    if (paramArrayOfByte.length < getMinGzipSize(paramContentResolver))
      return new ByteArrayEntity(paramArrayOfByte);
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    GZIPOutputStream localGZIPOutputStream = new GZIPOutputStream(localByteArrayOutputStream);
    localGZIPOutputStream.write(paramArrayOfByte);
    localGZIPOutputStream.close();
    ByteArrayEntity localByteArrayEntity = new ByteArrayEntity(localByteArrayOutputStream.toByteArray());
    localByteArrayEntity.setContentEncoding("gzip");
    return localByteArrayEntity;
  }

  public static long getMinGzipSize(ContentResolver paramContentResolver)
  {
    return DEFAULT_SYNC_MIN_GZIP_BYTES;
  }

  public static InputStream getUngzippedContent(HttpEntity paramHttpEntity)
  {
    InputStream localInputStream = paramHttpEntity.getContent();
    if (localInputStream == null);
    String str;
    do
    {
      Header localHeader;
      do
      {
        return localInputStream;
        localHeader = paramHttpEntity.getContentEncoding();
      }
      while (localHeader == null);
      str = localHeader.getValue();
    }
    while (str == null);
    if (str.contains("gzip"));
    for (Object localObject = new GZIPInputStream(localInputStream); ; localObject = localInputStream)
      return localObject;
  }

  public static void modifyRequestToAcceptGzipResponse(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.addHeader("Accept-Encoding", "gzip");
  }

  public static void modifyRequestToKeepAlive(HttpRequest paramHttpRequest)
  {
    paramHttpRequest.addHeader("Connection", "Keep-Alive");
  }

  public static AndroidHttpClientExt newInstance(String paramString)
  {
    return newInstance(paramString, null);
  }

  public static AndroidHttpClientExt newInstance(String paramString, Context paramContext)
  {
    BasicHttpParams localBasicHttpParams = new BasicHttpParams();
    HttpConnectionParams.setStaleCheckingEnabled(localBasicHttpParams, false);
    HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, 20000);
    HttpConnectionParams.setSoTimeout(localBasicHttpParams, 30000);
    HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
    HttpClientParams.setRedirecting(localBasicHttpParams, true);
    if (paramContext == null);
    for (SSLSessionCache localSSLSessionCache = null; ; localSSLSessionCache = new SSLSessionCache(paramContext))
    {
      HttpProtocolParams.setUserAgent(localBasicHttpParams, paramString);
      SchemeRegistry localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
      localSchemeRegistry.register(new Scheme("https", SSLCertificateSocketFactory.getHttpSocketFactory(30000, localSSLSessionCache), 443));
      ThreadSafeClientConnManager localThreadSafeClientConnManager = new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry);
      ConnManagerParams.setTimeout(localBasicHttpParams, 60000L);
      ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(10));
      ConnManagerParams.setMaxTotalConnections(localBasicHttpParams, 50);
      return new AndroidHttpClientExt(localThreadSafeClientConnManager, localBasicHttpParams);
    }
  }

  public static long parseDate(String paramString)
  {
    return HttpDateTime.parse(paramString);
  }

  public final void close()
  {
    if (this.d != null)
    {
      getConnectionManager().shutdown();
      this.d = null;
    }
  }

  public final void disableCurlLogging()
  {
    this.e = null;
  }

  public final void enableCurlLogging(String paramString, int paramInt)
  {
    if (paramString == null)
      throw new NullPointerException("name");
    if ((paramInt < 2) || (paramInt > 7))
      throw new IllegalArgumentException("Level is out of range [2..7]");
    this.e = new AndroidHttpClientExt.LoggingConfiguration(paramString, paramInt, (byte)0);
  }

  public final <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest, paramResponseHandler);
  }

  public final <T> T execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest, paramResponseHandler, paramHttpContext);
  }

  public final <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler)
  {
    return this.c.execute(paramHttpUriRequest, paramResponseHandler);
  }

  public final <T> T execute(HttpUriRequest paramHttpUriRequest, ResponseHandler<? extends T> paramResponseHandler, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }

  public final HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest);
  }

  public final HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
  }

  public final HttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    return this.c.execute(paramHttpUriRequest);
  }

  public final HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
  {
    return this.c.execute(paramHttpUriRequest, paramHttpContext);
  }

  protected final void finalize()
  {
    super.finalize();
    if (this.d != null)
      this.d = null;
  }

  public final ClientConnectionManager getConnectionManager()
  {
    return this.c.getConnectionManager();
  }

  public final HttpParams getParams()
  {
    return this.c.getParams();
  }

  public final void setHttpRequestRetryHandler(HttpRequestRetryHandler paramHttpRequestRetryHandler)
  {
    ((DefaultHttpClient)this.c).setHttpRequestRetryHandler(paramHttpRequestRetryHandler);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.AndroidHttpClientExt
 * JD-Core Version:    0.6.2
 */