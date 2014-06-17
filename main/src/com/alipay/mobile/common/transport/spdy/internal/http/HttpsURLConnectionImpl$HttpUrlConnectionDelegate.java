package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.OkHttpClient;
import java.net.HttpURLConnection;
import java.net.SecureCacheResponse;
import java.net.URL;

final class HttpsURLConnectionImpl$HttpUrlConnectionDelegate extends HttpURLConnectionImpl
{
  private HttpsURLConnectionImpl$HttpUrlConnectionDelegate(HttpsURLConnectionImpl paramHttpsURLConnectionImpl, URL paramURL, OkHttpClient paramOkHttpClient)
  {
    super(paramURL, paramOkHttpClient);
  }

  public final HttpURLConnection getHttpConnectionToCache()
  {
    return this.this$0;
  }

  public final SecureCacheResponse getSecureCacheResponse()
  {
    if ((this.httpEngine instanceof HttpsEngine))
      return (SecureCacheResponse)this.httpEngine.getCacheResponse();
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpsURLConnectionImpl.HttpUrlConnectionDelegate
 * JD-Core Version:    0.6.2
 */