package com.alipay.mobile.common.transport.http;

import android.content.Context;
import com.alipay.mobile.common.transport.spdy.OkHttpClient;
import com.alipay.mobile.common.transport.spdy.mwallet.NoRetrySpdyConnException;
import com.alipay.mobile.common.transport.spdy.mwallet.SpdyStrategy;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;
import org.apache.http.Header;
import org.apache.http.HeaderIterator;
import org.apache.http.HttpEntity;
import org.apache.http.HttpEntityEnclosingRequest;
import org.apache.http.HttpHost;
import org.apache.http.HttpRequest;
import org.apache.http.HttpResponse;
import org.apache.http.HttpVersion;
import org.apache.http.RequestLine;
import org.apache.http.client.CookieStore;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.entity.InputStreamEntity;
import org.apache.http.impl.cookie.BestMatchSpec;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;

public class AndroidSpdyHttpClient
{
  private AndroidHttpClient a;
  private OkHttpClient b;
  private final HttpParams c = new AndroidSpdyHttpClient.1(this);

  private AndroidSpdyHttpClient(AndroidHttpClient paramAndroidHttpClient, Context paramContext)
  {
    com.alipay.mobile.common.transport.spdy.AlipayOkHttpClientConfig.isNotUseNpn = true;
    this.b = new OkHttpClient();
    this.a = paramAndroidHttpClient;
    this.b.setContext(paramContext);
  }

  private static void a(HeaderIterator paramHeaderIterator, CookieSpec paramCookieSpec, CookieOrigin paramCookieOrigin, CookieStore paramCookieStore)
  {
    while (true)
    {
      Header localHeader;
      if (paramHeaderIterator.hasNext())
        localHeader = paramHeaderIterator.nextHeader();
      try
      {
        Iterator localIterator = paramCookieSpec.parse(localHeader, paramCookieOrigin).iterator();
        while (localIterator.hasNext())
        {
          Cookie localCookie = (Cookie)localIterator.next();
          try
          {
            paramCookieSpec.validate(localCookie, paramCookieOrigin);
            paramCookieStore.addCookie(localCookie);
          }
          catch (MalformedCookieException localMalformedCookieException2)
          {
          }
        }
        return;
      }
      catch (MalformedCookieException localMalformedCookieException1)
      {
      }
    }
  }

  public static AndroidSpdyHttpClient newInstance(Context paramContext, String paramString, AndroidHttpClient paramAndroidHttpClient)
  {
    return new AndroidSpdyHttpClient(paramAndroidHttpClient, paramContext);
  }

  public HttpResponse execute(HttpHost paramHttpHost, HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    try
    {
      NetCallGrapher localNetCallGrapher2 = (NetCallGrapher)paramHttpContext.removeAttribute("NET_CALL_GRAPHER");
      BasicHttpResponse localBasicHttpResponse;
      InputStreamEntity localInputStreamEntity;
      String str2;
      BasicHeader localBasicHeader;
      while (true)
      {
        HttpURLConnection localHttpURLConnection;
        HttpEntity localHttpEntity;
        try
        {
          RequestLine localRequestLine = paramHttpRequest.getRequestLine();
          new URL(localRequestLine.getUri());
          localHttpURLConnection = openConnection(new URL(localNetCallGrapher2.getCallUrl()), localNetCallGrapher2.getNetKey());
          localHttpURLConnection.setRequestMethod(localRequestLine.getMethod());
          Header[] arrayOfHeader = paramHttpRequest.getAllHeaders();
          int i = arrayOfHeader.length;
          int j = 0;
          if (j < i)
          {
            Header localHeader1 = arrayOfHeader[j];
            localHttpURLConnection.addRequestProperty(localHeader1.getName(), localHeader1.getValue());
            j++;
            continue;
          }
          if ((paramHttpRequest instanceof HttpEntityEnclosingRequest))
          {
            localHttpEntity = ((HttpEntityEnclosingRequest)paramHttpRequest).getEntity();
            if (localHttpEntity != null)
            {
              localHttpURLConnection.setDoOutput(true);
              Header localHeader2 = localHttpEntity.getContentType();
              if (localHeader2 != null)
                localHttpURLConnection.addRequestProperty(localHeader2.getName(), localHeader2.getValue());
              Header localHeader3 = localHttpEntity.getContentEncoding();
              if (localHeader3 != null)
                localHttpURLConnection.addRequestProperty(localHeader3.getName(), localHeader3.getValue());
              if ((!localHttpEntity.isChunked()) && (localHttpEntity.getContentLength() >= 0L))
                continue;
              localHttpURLConnection.setChunkedStreamingMode(0);
              localHttpEntity.writeTo(localHttpURLConnection.getOutputStream());
            }
          }
          int k = localHttpURLConnection.getResponseCode();
          String str1 = localHttpURLConnection.getResponseMessage();
          localBasicHttpResponse = new BasicHttpResponse(HttpVersion.HTTP_1_1, k, str1);
          if (k >= 400)
            break label503;
          localInputStream = localHttpURLConnection.getInputStream();
          if ((k == 304) && (localInputStream.available() == 0))
            break label541;
          localInputStreamEntity = new InputStreamEntity(localInputStream, localHttpURLConnection.getContentLength());
          m = 0;
          str2 = localHttpURLConnection.getHeaderFieldKey(m);
          if (str2 == null)
            break label534;
          localBasicHeader = new BasicHeader(str2, localHttpURLConnection.getHeaderField(m));
          localBasicHttpResponse.addHeader(localBasicHeader);
          if (!str2.equalsIgnoreCase("Content-Type"))
            break;
          localInputStreamEntity.setContentType(localBasicHeader);
          break label577;
          if (localHttpEntity.getContentLength() <= 8192L)
          {
            localHttpURLConnection.addRequestProperty("Content-Length", Long.toString(localHttpEntity.getContentLength()));
            continue;
          }
        }
        catch (Exception localException3)
        {
          localNetCallGrapher1 = localNetCallGrapher2;
          Exception localException1 = localException3;
          localNetCallGrapher1.setDownHttpsCall(localException1);
          if (!(localException1 instanceof NoRetrySpdyConnException))
            SpdyStrategy.getInstance().spdyExcuteTimesSave(this.b.getContext(), localNetCallGrapher1, false);
          return this.a.execute(paramHttpHost, paramHttpRequest, paramHttpContext);
        }
        localHttpURLConnection.setFixedLengthStreamingMode((int)localHttpEntity.getContentLength());
        continue;
        label503: InputStream localInputStream = localHttpURLConnection.getErrorStream();
      }
      if (str2.equalsIgnoreCase("Content-Encoding"))
      {
        localInputStreamEntity.setContentEncoding(localBasicHeader);
        break label577;
        label534: localBasicHttpResponse.setEntity(localInputStreamEntity);
        label541: process(localBasicHttpResponse, paramHttpContext, localNetCallGrapher2);
        SpdyStrategy.getInstance().spdyExcuteTimesSave(this.b.getContext(), localNetCallGrapher2, true);
        return localBasicHttpResponse;
      }
    }
    catch (Exception localException2)
    {
      while (true)
      {
        int m;
        NetCallGrapher localNetCallGrapher1 = null;
        continue;
        label577: m++;
      }
    }
  }

  public OkHttpClient getClient()
  {
    return this.b;
  }

  public AndroidHttpClient getDelegate()
  {
    return this.a;
  }

  public HttpParams getParams()
  {
    return this.c;
  }

  public HttpURLConnection openConnection(URL paramURL, String paramString)
  {
    return this.b.open(paramURL, paramString);
  }

  public void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext, NetCallGrapher paramNetCallGrapher)
  {
    BestMatchSpec localBestMatchSpec = new BestMatchSpec();
    CookieStore localCookieStore = (CookieStore)paramHttpContext.getAttribute("http.cookie-store");
    if (localCookieStore == null);
    CookieOrigin localCookieOrigin;
    do
    {
      return;
      localCookieOrigin = new CookieOrigin(paramNetCallGrapher.getCookieOrigin(), 443, "/", false);
      a(paramHttpResponse.headerIterator("Set-Cookie"), localBestMatchSpec, localCookieOrigin, localCookieStore);
    }
    while (localBestMatchSpec.getVersion() <= 0);
    a(paramHttpResponse.headerIterator("Set-Cookie2"), localBestMatchSpec, localCookieOrigin, localCookieStore);
  }

  public void setDelegate(AndroidHttpClient paramAndroidHttpClient)
  {
    this.a = paramAndroidHttpClient;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.AndroidSpdyHttpClient
 * JD-Core Version:    0.6.2
 */