package com.alipay.mobile.common.image;

import android.graphics.Bitmap;

public abstract interface ImageLoaderListener
{
  public abstract void onCancelled(String paramString);

  public abstract void onFailed(String paramString1, int paramInt, String paramString2);

  public abstract void onPostLoad(String paramString, Bitmap paramBitmap);

  public abstract void onPreLoad(String paramString);

  public abstract void onProgressUpdate(String paramString, double paramDouble);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.image.ImageLoaderListener
 * JD-Core Version:    0.6.2
 */