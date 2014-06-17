package com.alipay.mobile.android.main.publichome.util;

import android.graphics.Bitmap;
import android.os.Handler;
import android.widget.ImageView;

final class ImageLoaderHelper$1 extends AbstructImageLoaderListener
{
  ImageLoaderHelper$1(Handler paramHandler, LoadImageCallback paramLoadImageCallback, ImageView paramImageView)
  {
  }

  public final void onCancelled(String paramString)
  {
    super.onCancelled(paramString);
  }

  public final void onFailed(String paramString1, int paramInt, String paramString2)
  {
    if (this.canceled)
      return;
    this.val$handler.post(new ImageLoaderHelper.1.2(this));
    this.canceled = true;
  }

  public final void onPostLoad(String paramString, Bitmap paramBitmap)
  {
    if (this.canceled)
      return;
    this.val$handler.post(new ImageLoaderHelper.1.1(this, paramBitmap));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.main.publichome.util.ImageLoaderHelper.1
 * JD-Core Version:    0.6.2
 */