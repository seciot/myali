package com.alipay.mobile.common.image;

import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.common.transport.http.HttpUrlResponse;

public abstract interface ImageCacheListener
{
  public abstract long getCachePeriod(HttpUrlRequest paramHttpUrlRequest, HttpUrlResponse paramHttpUrlResponse);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.image.ImageCacheListener
 * JD-Core Version:    0.6.2
 */