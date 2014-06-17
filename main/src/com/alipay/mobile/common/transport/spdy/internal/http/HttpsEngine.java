package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.Connection;
import com.alipay.mobile.common.transport.spdy.OkHttpClient;
import com.alipay.mobile.common.transport.spdy.TunnelRequest;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.net.CacheResponse;
import java.net.SecureCacheResponse;
import java.net.URL;
import javax.net.ssl.SSLSocket;

public final class HttpsEngine extends HttpEngine
{
  private SSLSocket a;

  public HttpsEngine(OkHttpClient paramOkHttpClient, Policy paramPolicy, String paramString, RawHeaders paramRawHeaders, Connection paramConnection, RetryableOutputStream paramRetryableOutputStream)
  {
    super(paramOkHttpClient, paramPolicy, paramString, paramRawHeaders, paramConnection, paramRetryableOutputStream);
    if (paramConnection != null);
    for (SSLSocket localSSLSocket = (SSLSocket)paramConnection.getSocket(); ; localSSLSocket = null)
    {
      this.a = localSSLSocket;
      return;
    }
  }

  protected final boolean acceptCacheResponseType(CacheResponse paramCacheResponse)
  {
    return paramCacheResponse instanceof SecureCacheResponse;
  }

  protected final void connected(Connection paramConnection)
  {
    this.a = ((SSLSocket)paramConnection.getSocket());
    super.connected(paramConnection);
  }

  public final SSLSocket getSslSocket()
  {
    return this.a;
  }

  protected final TunnelRequest getTunnelConfig()
  {
    String str = this.requestHeaders.getUserAgent();
    if (str == null)
      str = getDefaultUserAgent();
    URL localURL = this.policy.getURL();
    return new TunnelRequest(localURL.getHost(), Util.getEffectivePort(localURL), str, this.requestHeaders.getProxyAuthorization());
  }

  protected final boolean includeAuthorityInRequestLine()
  {
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpsEngine
 * JD-Core Version:    0.6.2
 */