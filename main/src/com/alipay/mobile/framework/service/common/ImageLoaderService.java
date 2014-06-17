package com.alipay.mobile.framework.service.common;

import com.alipay.mobile.common.image.ImageCacheListener;
import com.alipay.mobile.framework.service.CommonService;

public abstract class ImageLoaderService extends CommonService
{
  public abstract void cancel(String paramString, ImageLoaderListener paramImageLoaderListener);

  public abstract void startLoad(String paramString1, String paramString2, String paramString3, ImageLoaderListener paramImageLoaderListener, int paramInt1, int paramInt2);

  public abstract void startLoad(String paramString1, String paramString2, String paramString3, ImageLoaderListener paramImageLoaderListener, int paramInt1, int paramInt2, ImageCacheListener paramImageCacheListener);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.ImageLoaderService
 * JD-Core Version:    0.6.2
 */