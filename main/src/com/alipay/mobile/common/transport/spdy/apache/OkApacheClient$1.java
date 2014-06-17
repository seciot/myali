package com.alipay.mobile.common.transport.spdy.apache;

import com.alipay.mobile.common.transport.spdy.OkHttpClient;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Proxy.Type;
import org.apache.http.HttpHost;
import org.apache.http.params.AbstractHttpParams;
import org.apache.http.params.HttpParams;

class OkApacheClient$1 extends AbstractHttpParams
{
  OkApacheClient$1(OkApacheClient paramOkApacheClient)
  {
  }

  public HttpParams copy()
  {
    throw new UnsupportedOperationException();
  }

  public Object getParameter(String paramString)
  {
    if (paramString.equals("http.route.default-proxy"))
    {
      Proxy localProxy = this.this$0.client.getProxy();
      if (localProxy == null)
        return null;
      InetSocketAddress localInetSocketAddress = (InetSocketAddress)localProxy.address();
      return new HttpHost(localInetSocketAddress.getHostName(), localInetSocketAddress.getPort());
    }
    throw new IllegalArgumentException(paramString);
  }

  public boolean removeParameter(String paramString)
  {
    throw new UnsupportedOperationException();
  }

  public HttpParams setParameter(String paramString, Object paramObject)
  {
    if (paramString.equals("http.route.default-proxy"))
    {
      HttpHost localHttpHost = (HttpHost)paramObject;
      Proxy localProxy = null;
      if (localHttpHost != null)
        localProxy = new Proxy(Proxy.Type.HTTP, new InetSocketAddress(localHttpHost.getHostName(), localHttpHost.getPort()));
      this.this$0.client.setProxy(localProxy);
      return this;
    }
    throw new IllegalArgumentException(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.apache.OkApacheClient.1
 * JD-Core Version:    0.6.2
 */