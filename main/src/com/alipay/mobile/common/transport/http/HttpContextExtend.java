package com.alipay.mobile.common.transport.http;

import com.alipay.mobile.common.cache.disk.lru.DefaultLruDiskCache;
import com.alipay.mobile.common.cache.disk.lru.LruDiskCache;

public class HttpContextExtend
{
  public static int MAX_HTTP_REQUEST_COUNT_PER_BATCH = 4;
  private static HttpContextExtend a = null;
  private LruDiskCache b = DefaultLruDiskCache.getInstance();

  private HttpContextExtend()
  {
    this.b.open();
  }

  public static HttpContextExtend getInstance()
  {
    try
    {
      if (a == null)
        a = new HttpContextExtend();
      HttpContextExtend localHttpContextExtend = a;
      return localHttpContextExtend;
    }
    finally
    {
    }
  }

  public LruDiskCache getDiskCache()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.HttpContextExtend
 * JD-Core Version:    0.6.2
 */