package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.Snapshot;
import com.alipay.mobile.common.transport.spdy.internal.http.RawHeaders;
import java.io.InputStream;
import java.net.CacheResponse;
import java.util.Map;

class HttpResponseCache$EntryCacheResponse extends CacheResponse
{
  private final HttpResponseCache.Entry a;
  private final DiskLruCache.Snapshot b;
  private final InputStream c;

  public HttpResponseCache$EntryCacheResponse(HttpResponseCache.Entry paramEntry, DiskLruCache.Snapshot paramSnapshot)
  {
    this.a = paramEntry;
    this.b = paramSnapshot;
    this.c = HttpResponseCache.access$1000(paramSnapshot);
  }

  public InputStream getBody()
  {
    return this.c;
  }

  public Map getHeaders()
  {
    return HttpResponseCache.Entry.access$1100(this.a).toMultimap(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.HttpResponseCache.EntryCacheResponse
 * JD-Core Version:    0.6.2
 */