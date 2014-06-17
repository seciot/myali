package com.alipay.mobile.android.main.publichome.util;

import com.alipay.mobile.framework.service.common.ImageLoaderService;

final class ImageLoaderHelper$3
  implements Runnable
{
  ImageLoaderHelper$3(ImageLoaderService paramImageLoaderService, String paramString, ImageLoaderTag paramImageLoaderTag, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    this.val$imageLoaderService.startLoad(ImageLoaderHelper.IMAGE_STORAGE_OWNER, ImageLoaderHelper.IMAGE_STORAGE_GROUP, this.val$imageUrl, this.val$tag.getListener(), this.val$width, this.val$height);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.main.publichome.util.ImageLoaderHelper.3
 * JD-Core Version:    0.6.2
 */