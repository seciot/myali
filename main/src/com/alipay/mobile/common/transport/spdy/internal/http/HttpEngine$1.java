package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.net.CacheResponse;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

final class HttpEngine$1 extends CacheResponse
{
  public final InputStream getBody()
  {
    return new ByteArrayInputStream(Util.EMPTY_BYTE_ARRAY);
  }

  public final Map getHeaders()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(null, Collections.singletonList("HTTP/1.1 504 Gateway Timeout"));
    return localHashMap;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.HttpEngine.1
 * JD-Core Version:    0.6.2
 */