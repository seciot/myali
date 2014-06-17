package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.OkResponseCache;
import com.alipay.mobile.common.transport.spdy.ResponseSource;
import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.ResponseCache;
import java.net.URI;
import java.net.URLConnection;
import java.util.Map;

public final class OkResponseCacheAdapter
  implements OkResponseCache
{
  private final ResponseCache a;

  public OkResponseCacheAdapter(ResponseCache paramResponseCache)
  {
    this.a = paramResponseCache;
  }

  public final CacheResponse get(URI paramURI, String paramString, Map paramMap)
  {
    return this.a.get(paramURI, paramString, paramMap);
  }

  public final void maybeRemove(String paramString, URI paramURI)
  {
  }

  public final CacheRequest put(URI paramURI, URLConnection paramURLConnection)
  {
    return this.a.put(paramURI, paramURLConnection);
  }

  public final void trackConditionalCacheHit()
  {
  }

  public final void trackResponse(ResponseSource paramResponseSource)
  {
  }

  public final void update(CacheResponse paramCacheResponse, HttpURLConnection paramHttpURLConnection)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.OkResponseCacheAdapter
 * JD-Core Version:    0.6.2
 */