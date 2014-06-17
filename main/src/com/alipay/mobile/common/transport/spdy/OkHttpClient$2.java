package com.alipay.mobile.common.transport.spdy;

import java.net.Proxy;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLStreamHandler;

class OkHttpClient$2 extends URLStreamHandler
{
  OkHttpClient$2(OkHttpClient paramOkHttpClient, String paramString)
  {
  }

  protected int getDefaultPort()
  {
    if (this.val$protocol.equals("http"))
      return 80;
    if (this.val$protocol.equals("https"))
      return 443;
    throw new AssertionError();
  }

  protected URLConnection openConnection(URL paramURL)
  {
    return this.this$0.open(paramURL, null);
  }

  protected URLConnection openConnection(URL paramURL, Proxy paramProxy)
  {
    return this.this$0.open(paramURL, paramProxy, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.OkHttpClient.2
 * JD-Core Version:    0.6.2
 */