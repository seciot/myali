package com.alipay.mobile.command.rpc.http;

import org.apache.http.HttpResponse;
import org.apache.http.conn.ConnectionKeepAliveStrategy;
import org.apache.http.protocol.HttpContext;

class AndroidHttpClientExt$2$2
  implements ConnectionKeepAliveStrategy
{
  AndroidHttpClientExt$2$2(AndroidHttpClientExt.2 param2)
  {
  }

  public long getKeepAliveDuration(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    return 180000L;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.AndroidHttpClientExt.2.2
 * JD-Core Version:    0.6.2
 */