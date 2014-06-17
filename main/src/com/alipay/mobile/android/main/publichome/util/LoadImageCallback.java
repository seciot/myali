package com.alipay.mobile.android.main.publichome.util;

import android.graphics.Bitmap;
import android.widget.ImageView;

public abstract class LoadImageCallback
{
  public abstract boolean isNeedShowLoading();

  public abstract void loadDefaultImage(ImageView paramImageView);

  public abstract void loadLoadingImage(ImageView paramImageView);

  public abstract void loadSuccess(ImageView paramImageView, Bitmap paramBitmap);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.main.publichome.util.LoadImageCallback
 * JD-Core Version:    0.6.2
 */