package com.alipay.mobile.framework.service.common.impl;

import android.graphics.Bitmap;
import android.os.Bundle;
import com.alipay.mobile.common.cache.mem.lru.ImageCache;
import com.alipay.mobile.framework.service.common.ImageMemCacheService;

public class ImageMemCacheServiceImpl extends ImageMemCacheService
{
  private ImageCache a = ImageCache.getInstance();

  public Bitmap get(String paramString1, String paramString2)
  {
    return this.a.get(paramString1, paramString2);
  }

  public long getMaxsize()
  {
    return this.a.getMaxsize();
  }

  public long getSize()
  {
    return this.a.getSize();
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }

  public void put(String paramString1, String paramString2, String paramString3, Bitmap paramBitmap)
  {
    this.a.put(paramString1, paramString2, paramString3, paramBitmap);
  }

  public Bitmap remove(String paramString)
  {
    return this.a.remove(paramString);
  }

  public void removeByGroup(String paramString)
  {
    this.a.removeByGroup(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.ImageMemCacheServiceImpl
 * JD-Core Version:    0.6.2
 */