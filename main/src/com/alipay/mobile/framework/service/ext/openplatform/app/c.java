package com.alipay.mobile.framework.service.ext.openplatform.app;

import com.alipay.mobile.common.image.ImageCacheListener;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.common.transport.http.HttpUrlResponse;

final class c
  implements ImageCacheListener
{
  c(a parama)
  {
  }

  public final long getCachePeriod(HttpUrlRequest paramHttpUrlRequest, HttpUrlResponse paramHttpUrlResponse)
  {
    return 315360000000L;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.app.c
 * JD-Core Version:    0.6.2
 */