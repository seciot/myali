package com.alipay.mobile.common.transport.http;

import org.apache.http.client.RedirectHandler;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.BasicHttpContext;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.HttpContext;

class AndroidHttpClient$2 extends DefaultHttpClient
{
  AndroidHttpClient$2(AndroidHttpClient paramAndroidHttpClient, ClientConnectionManager paramClientConnectionManager, HttpParams paramHttpParams)
  {
    super(paramClientConnectionManager, paramHttpParams);
  }

  protected ConnectionKeepAliveStrategy createConnectionKeepAliveStrategy()
  {
    return new AndroidHttpClient.2.2(this);
  }

  protected HttpContext createHttpContext()
  {
    BasicHttpContext localBasicHttpContext = new BasicHttpContext();
    localBasicHttpContext.setAttribute("http.authscheme-registry", getAuthSchemes());
    localBasicHttpContext.setAttribute("http.cookiespec-registry", getCookieSpecs());
    localBasicHttpContext.setAttribute("http.auth.credentials-provider", getCredentialsProvider());
    return localBasicHttpContext;
  }

  protected BasicHttpProcessor createHttpProcessor()
  {
    BasicHttpProcessor localBasicHttpProcessor = super.createHttpProcessor();
    localBasicHttpProcessor.addRequestInterceptor(AndroidHttpClient.access$000());
    localBasicHttpProcessor.addRequestInterceptor(new AndroidHttpClient.CurlLogger(this.this$0, null));
    return localBasicHttpProcessor;
  }

  protected RedirectHandler createRedirectHandler()
  {
    return new AndroidHttpClient.2.1(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.AndroidHttpClient.2
 * JD-Core Version:    0.6.2
 */