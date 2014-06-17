package com.alipay.mobile.framework.service.common.impl;

import android.graphics.Bitmap;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;

class ImageLoaderServiceImpl$1
  implements ImageLoaderListener
{
  ImageLoaderServiceImpl$1(ImageLoaderServiceImpl paramImageLoaderServiceImpl, ImageLoaderListener paramImageLoaderListener, String paramString)
  {
  }

  public void onCancelled(String paramString)
  {
    this.val$listener.onCancelled(this.val$imagePath);
  }

  public void onFailed(String paramString1, int paramInt, String paramString2)
  {
    this.val$listener.onFailed(this.val$imagePath, paramInt, paramString2);
  }

  public void onPostLoad(String paramString, Bitmap paramBitmap)
  {
    this.val$listener.onPostLoad(this.val$imagePath, paramBitmap);
  }

  public void onPreLoad(String paramString)
  {
    this.val$listener.onPreLoad(this.val$imagePath);
  }

  public void onProgressUpdate(String paramString, double paramDouble)
  {
    this.val$listener.onProgressUpdate(this.val$imagePath, paramDouble);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.ImageLoaderServiceImpl.1
 * JD-Core Version:    0.6.2
 */