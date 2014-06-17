package com.alipay.mobile.common.transport.spdy;

import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URLConnection;
import java.util.Map;

public abstract interface OkResponseCache
{
  public abstract CacheResponse get(URI paramURI, String paramString, Map paramMap);

  public abstract void maybeRemove(String paramString, URI paramURI);

  public abstract CacheRequest put(URI paramURI, URLConnection paramURLConnection);

  public abstract void trackConditionalCacheHit();

  public abstract void trackResponse(ResponseSource paramResponseSource);

  public abstract void update(CacheResponse paramCacheResponse, HttpURLConnection paramHttpURLConnection);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.OkResponseCache
 * JD-Core Version:    0.6.2
 */