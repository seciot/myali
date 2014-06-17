package com.alipay.mobile.command.rpc.http;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

class AndroidHttpClientExt$CurlLogger
  implements HttpRequestInterceptor
{
  private AndroidHttpClientExt$CurlLogger(AndroidHttpClientExt paramAndroidHttpClientExt)
  {
  }

  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    AndroidHttpClientExt.LoggingConfiguration localLoggingConfiguration = AndroidHttpClientExt.a(this.a);
    if ((localLoggingConfiguration != null) && (AndroidHttpClientExt.LoggingConfiguration.a(localLoggingConfiguration)) && ((paramHttpRequest instanceof HttpUriRequest)))
      AndroidHttpClientExt.LoggingConfiguration.a(localLoggingConfiguration, AndroidHttpClientExt.a((HttpUriRequest)paramHttpRequest));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.AndroidHttpClientExt.CurlLogger
 * JD-Core Version:    0.6.2
 */