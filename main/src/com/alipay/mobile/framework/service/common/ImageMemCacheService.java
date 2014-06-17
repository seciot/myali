package com.alipay.mobile.framework.service.common;

import android.graphics.Bitmap;
import com.alipay.mobile.framework.service.CommonService;

public abstract class ImageMemCacheService extends CommonService
{
  public abstract Bitmap get(String paramString1, String paramString2);

  public abstract long getMaxsize();

  public abstract long getSize();

  public abstract void put(String paramString1, String paramString2, String paramString3, Bitmap paramBitmap);

  public abstract Bitmap remove(String paramString);

  public abstract void removeByGroup(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.ImageMemCacheService
 * JD-Core Version:    0.6.2
 */