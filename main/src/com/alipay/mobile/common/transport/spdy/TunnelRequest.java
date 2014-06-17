package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import com.alipay.mobile.common.transport.spdy.internal.http.RawHeaders;

public final class TunnelRequest
{
  final String host;
  final int port;
  final String proxyAuthorization;
  final String userAgent;

  public TunnelRequest(String paramString1, int paramInt, String paramString2, String paramString3)
  {
    if (paramString1 == null)
      throw new NullPointerException("host == null");
    if (paramString2 == null)
      throw new NullPointerException("userAgent == null");
    this.host = paramString1;
    this.port = paramInt;
    this.userAgent = paramString2;
    this.proxyAuthorization = paramString3;
  }

  final RawHeaders getRequestHeaders()
  {
    RawHeaders localRawHeaders = new RawHeaders();
    localRawHeaders.setRequestLine("CONNECT " + this.host + ":" + this.port + " HTTP/1.1");
    if (this.port == Util.getDefaultPort("https"));
    for (String str = this.host; ; str = this.host + ":" + this.port)
    {
      localRawHeaders.set("Host", str);
      localRawHeaders.set("User-Agent", this.userAgent);
      if (this.proxyAuthorization != null)
        localRawHeaders.set("Proxy-Authorization", this.proxyAuthorization);
      localRawHeaders.set("Proxy-Connection", "Keep-Alive");
      return localRawHeaders;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.TunnelRequest
 * JD-Core Version:    0.6.2
 */