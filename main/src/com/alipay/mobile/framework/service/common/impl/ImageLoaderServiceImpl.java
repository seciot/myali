package com.alipay.mobile.framework.service.common.impl;

import android.os.Bundle;
import com.alipay.mobile.common.cache.disk.lru.DefaultLruDiskCache;
import com.alipay.mobile.common.cache.mem.lru.ImageCache;
import com.alipay.mobile.common.image.ImageCacheListener;
import com.alipay.mobile.common.image.ImageLoader;
import com.alipay.mobile.common.task.TaskManager;
import com.alipay.mobile.common.transport.http.HttpManager;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;
import com.alipay.mobile.framework.service.common.ImageLoaderService;

public class ImageLoaderServiceImpl extends ImageLoaderService
{
  private ImageLoader a = new ImageLoader(new HttpManager(AlipayApplication.getInstance()), DefaultLruDiskCache.getInstance(), ImageCache.getInstance(), TaskManager.getInstance());
  private ImageLoaderServiceImpl.ImageStrategy b = new DefaultImageStrategy();

  public void cancel(String paramString, ImageLoaderListener paramImageLoaderListener)
  {
    this.a.cancel(paramString, paramImageLoaderListener);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void startLoad(String paramString1, String paramString2, String paramString3, ImageLoaderListener paramImageLoaderListener, int paramInt1, int paramInt2)
  {
    startLoad(paramString1, paramString2, paramString3, paramImageLoaderListener, paramInt1, paramInt2, null);
  }

  public void startLoad(String paramString1, String paramString2, String paramString3, ImageLoaderListener paramImageLoaderListener, int paramInt1, int paramInt2, ImageCacheListener paramImageCacheListener)
  {
    if (this.b.loadAssetImage(paramString3, paramImageLoaderListener))
      return;
    String str = this.b.preferImageUrl(paramString3, paramInt1, paramInt2);
    ImageLoaderServiceImpl.1 local1 = new ImageLoaderServiceImpl.1(this, paramImageLoaderListener, paramString3);
    this.a.startLoad(paramString1, paramString2, str, local1, paramInt1, paramInt2, paramImageCacheListener);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.ImageLoaderServiceImpl
 * JD-Core Version:    0.6.2
 */