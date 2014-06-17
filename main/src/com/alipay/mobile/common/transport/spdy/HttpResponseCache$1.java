package com.alipay.mobile.common.transport.spdy;

import java.net.CacheRequest;
import java.net.CacheResponse;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URLConnection;
import java.util.Map;

class HttpResponseCache$1
  implements OkResponseCache
{
  HttpResponseCache$1(HttpResponseCache paramHttpResponseCache)
  {
  }

  public CacheResponse get(URI paramURI, String paramString, Map paramMap)
  {
    return this.this$0.get(paramURI, paramString, paramMap);
  }

  public void maybeRemove(String paramString, URI paramURI)
  {
    HttpResponseCache.access$000(this.this$0, paramString, paramURI);
  }

  public CacheRequest put(URI paramURI, URLConnection paramURLConnection)
  {
    return this.this$0.put(paramURI, paramURLConnection);
  }

  public void trackConditionalCacheHit()
  {
    HttpResponseCache.access$200(this.this$0);
  }

  public void trackResponse(ResponseSource paramResponseSource)
  {
    HttpResponseCache.access$300(this.this$0, paramResponseSource);
  }

  public void update(CacheResponse paramCacheResponse, HttpURLConnection paramHttpURLConnection)
  {
    HttpResponseCache.access$100(this.this$0, paramCacheResponse, paramHttpURLConnection);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.HttpResponseCache.1
 * JD-Core Version:    0.6.2
 */