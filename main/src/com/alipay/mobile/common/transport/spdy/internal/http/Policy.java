package com.alipay.mobile.common.transport.spdy.internal.http;

import java.net.HttpURLConnection;
import java.net.Proxy;
import java.net.URL;

public abstract interface Policy
{
  public abstract int getChunkLength();

  public abstract long getFixedContentLength();

  public abstract HttpURLConnection getHttpConnectionToCache();

  public abstract long getIfModifiedSince();

  public abstract URL getURL();

  public abstract boolean getUseCaches();

  public abstract void setSelectedProxy(Proxy paramProxy);

  public abstract boolean usingProxy();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.Policy
 * JD-Core Version:    0.6.2
 */