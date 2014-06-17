package com.alipay.mobile.common.transport.http;

import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.protocol.HttpContext;

class AndroidHttpClient$2$1 extends DefaultRedirectHandler
{
  int mRedirects;

  AndroidHttpClient$2$1(AndroidHttpClient.2 param2)
  {
  }

  public boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    this.mRedirects = (1 + this.mRedirects);
    boolean bool = super.isRedirectRequested(paramHttpResponse, paramHttpContext);
    if ((!bool) && (this.mRedirects < 5))
    {
      int i = paramHttpResponse.getStatusLine().getStatusCode();
      if ((i == 301) || (i == 302))
        bool = true;
    }
    return bool;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.AndroidHttpClient.2.1
 * JD-Core Version:    0.6.2
 */