package com.alipay.mobile.framework.service.common.impl;

import com.alipay.mobile.framework.service.common.ImageLoaderListener;

public abstract interface ImageLoaderServiceImpl$ImageStrategy
{
  public abstract boolean loadAssetImage(String paramString, ImageLoaderListener paramImageLoaderListener);

  public abstract String preferImageUrl(String paramString, int paramInt1, int paramInt2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.ImageLoaderServiceImpl.ImageStrategy
 * JD-Core Version:    0.6.2
 */