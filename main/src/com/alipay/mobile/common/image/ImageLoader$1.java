package com.alipay.mobile.common.image;

import android.graphics.Bitmap;
import com.alipay.mobile.common.cache.mem.MemCache;

class ImageLoader$1
  implements Runnable
{
  ImageLoader$1(ImageLoader paramImageLoader, ImageLoaderListener paramImageLoaderListener, String paramString1, int paramInt1, int paramInt2, String paramString2, String paramString3)
  {
  }

  public void run()
  {
    this.val$listener.onPreLoad(this.val$path);
    Bitmap localBitmap = ImageLoader.access$000(this.this$0, this.val$path, this.val$width, this.val$height);
    if (localBitmap != null)
    {
      this.val$listener.onPostLoad(this.val$path, localBitmap);
      ImageLoader.access$100(this.this$0).put(this.val$owner, this.val$group, this.val$path, localBitmap);
      return;
    }
    this.val$listener.onFailed(this.val$path, 0, "can't load.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.image.ImageLoader.1
 * JD-Core Version:    0.6.2
 */