package com.alipay.mobile.common.transport.http.legacy;

import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.protocol.HttpContext;

class AndroidHttpClient$CurlLogger
  implements HttpRequestInterceptor
{
  private AndroidHttpClient$CurlLogger(AndroidHttpClient paramAndroidHttpClient)
  {
  }

  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    AndroidHttpClient.LoggingConfiguration localLoggingConfiguration = AndroidHttpClient.access$300(this.this$0);
    if ((localLoggingConfiguration != null) && (AndroidHttpClient.LoggingConfiguration.access$400(localLoggingConfiguration)) && ((paramHttpRequest instanceof HttpUriRequest)))
      AndroidHttpClient.LoggingConfiguration.access$600(localLoggingConfiguration, AndroidHttpClient.access$500((HttpUriRequest)paramHttpRequest, false));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.legacy.AndroidHttpClient.CurlLogger
 * JD-Core Version:    0.6.2
 */