package com.alipay.mobile.command.rpc.http;

import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.impl.client.DefaultRedirectHandler;
import org.apache.http.protocol.HttpContext;

class AndroidHttpClientExt$2$1 extends DefaultRedirectHandler
{
  int a;

  AndroidHttpClientExt$2$1(AndroidHttpClientExt.2 param2)
  {
  }

  public boolean isRedirectRequested(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    this.a = (1 + this.a);
    boolean bool = super.isRedirectRequested(paramHttpResponse, paramHttpContext);
    if ((!bool) && (this.a < 5))
    {
      int i = paramHttpResponse.getStatusLine().getStatusCode();
      if ((i == 301) || (i == 302))
        bool = true;
    }
    return bool;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.AndroidHttpClientExt.2.1
 * JD-Core Version:    0.6.2
 */