package com.alipay.mobile.android.main.publichome.util;

import com.alipay.mobile.framework.service.common.ImageLoaderListener;

public class ImageLoaderTag
{
  private String a;
  private ImageLoaderListener b;

  public ImageLoaderListener getListener()
  {
    return this.b;
  }

  public String getUrl()
  {
    return this.a;
  }

  public void setListener(ImageLoaderListener paramImageLoaderListener)
  {
    this.b = paramImageLoaderListener;
  }

  public void setUrl(String paramString)
  {
    this.a = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.main.publichome.util.ImageLoaderTag
 * JD-Core Version:    0.6.2
 */