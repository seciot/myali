package com.alipay.mobile.common.transport.spdy.apache;

import com.alipay.mobile.common.transport.spdy.OkHttpClient;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.RequestLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.ResponseHandler;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public class OkApacheClient
  implements HttpClient
{
  private final HttpParams a = new OkApacheClient.1(this);
  protected final OkHttpClient client;

  public OkApacheClient()
  {
    this(new OkHttpClient());
  }

  public OkApacheClient(OkHttpClient paramOkHttpClient)
  {
    this.client = paramOkHttpClient;
  }

  private static void a(HttpResponse paramHttpResponse)
  {
    try
    {
      paramHttpResponse.getEntity().consumeContent();
      return;
    }
    catch (Throwable localThrowable)
    {
    }
  }

  public Object execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler)
  {
    return execute(paramHttpHost, paramHttpRequest, paramResponseHandler, null);
  }

  public Object execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext)
  {
    HttpResponse localHttpResponse = execute(paramHttpHost, paramHttpRequest, paramHttpContext);
    try
    {
      Object localObject2 = paramResponseHandler.handleResponse(localHttpResponse);
      return localObject2;
    }
    finally
    {
      a(localHttpResponse);
    }
  }

  public Object execute(HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler)
  {
    return execute(null, paramHttpUriRequest, paramResponseHandler, null);
  }

  public Object execute(HttpUriRequest paramHttpUriRequest, ResponseHandler paramResponseHandler, HttpContext paramHttpContext)
  {
    return execute(null, paramHttpUriRequest, paramResponseHandler, paramHttpContext);
  }

  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest)
  {
    return execute(paramHttpHost, paramHttpRequest, null);
  }

  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    RequestLine localRequestLine = paramHttpRequest.getRequestLine();
    HttpURLConnection localHttpURLConnection = openConnection(new URL(localRequestLine.getUri()), null);
    localHttpURLConnection.setRequestMethod(localRequestLine.getMethod());
    for (Header localHeader3 : paramHttpRequest.getAllHeaders())
      localHttpURLConnection.addRequestProperty(localHeader3.getName(), localHeader3.getValue());
    HttpEntity localHttpEntity;
    if ((paramHttpRequest instanceof HttpEntityEnclosingRequest))
    {
      localHttpEntity = ((HttpEntityEnclosingRequest)paramHttpRequest).getEntity();
      if (localHttpEntity != null)
      {
        localHttpURLConnection.setDoOutput(true);
        Header localHeader1 = localHttpEntity.getContentType();
        if (localHeader1 != null)
          localHttpURLConnection.addRequestProperty(localHeader1.getName(), localHeader1.getValue());
        Header localHeader2 = localHttpEntity.getContentEncoding();
        if (localHeader2 != null)
          localHttpURLConnection.addRequestProperty(localHeader2.getName(), localHeader2.getValue());
        if ((!localHttpEntity.isChunked()) && (localHttpEntity.getContentLength() >= 0L))
          break label358;
        localHttpURLConnection.setChunkedStreamingMode(0);
        localHttpEntity.writeTo(localHttpURLConnection.getOutputStream());
      }
    }
    int k = localHttpURLConnection.getResponseCode();
    String str1 = localHttpURLConnection.getResponseMessage();
    BasicHttpResponse localBasicHttpResponse = new BasicHttpResponse(HttpVersion.HTTP_1_1, k, str1);
    InputStream localInputStream;
    label276: InputStreamEntity localInputStreamEntity;
    int m;
    label296: String str2;
    BasicHeader localBasicHeader;
    if (k < 400)
    {
      localInputStream = localHttpURLConnection.getInputStream();
      localInputStreamEntity = new InputStreamEntity(localInputStream, localHttpURLConnection.getContentLength());
      m = 0;
      str2 = localHttpURLConnection.getHeaderFieldKey(m);
      if (str2 == null)
        break label438;
      localBasicHeader = new BasicHeader(str2, localHttpURLConnection.getHeaderField(m));
      localBasicHttpResponse.addHeader(localBasicHeader);
      if (!str2.equalsIgnoreCase("Content-Type"))
        break label418;
      localInputStreamEntity.setContentType(localBasicHeader);
    }
    while (true)
    {
      m++;
      break label296;
      label358: if (localHttpEntity.getContentLength() <= 8192L)
      {
        localHttpURLConnection.addRequestProperty("Content-Length", Long.toString(localHttpEntity.getContentLength()));
        break;
      }
      localHttpURLConnection.setFixedLengthStreamingMode((int)localHttpEntity.getContentLength());
      break;
      localInputStream = localHttpURLConnection.getErrorStream();
      break label276;
      label418: if (str2.equalsIgnoreCase("Content-Encoding"))
        localInputStreamEntity.setContentEncoding(localBasicHeader);
    }
    label438: localBasicHttpResponse.setEntity(localInputStreamEntity);
    return localBasicHttpResponse;
  }

  public HttpResponse execute(HttpUriRequest paramHttpUriRequest)
  {
    return execute(null, paramHttpUriRequest, null);
  }

  public HttpResponse execute(HttpUriRequest paramHttpUriRequest, HttpContext paramHttpContext)
  {
    return execute(null, paramHttpUriRequest, paramHttpContext);
  }

  public ClientConnectionManager getConnectionManager()
  {
    throw new UnsupportedOperationException();
  }

  public HttpParams getParams()
  {
    return this.a;
  }

  protected HttpURLConnection openConnection(URL paramURL, String paramString)
  {
    return this.client.open(paramURL, paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.apache.OkApacheClient
 * JD-Core Version:    0.6.2
 */