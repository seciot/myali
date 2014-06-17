package com.alipay.mobile.android.main.publichome.util;

import android.graphics.Bitmap;

class ImageLoaderHelper$1$1
  implements Runnable
{
  ImageLoaderHelper$1$1(ImageLoaderHelper.1 param1, Bitmap paramBitmap)
  {
  }

  public void run()
  {
    this.this$0.val$callback.loadSuccess(this.this$0.val$imageView, this.val$bitmap);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.main.publichome.util.ImageLoaderHelper.1.1
 * JD-Core Version:    0.6.2
 */