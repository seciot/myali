package com.alipay.mobile.common.misc;

import android.graphics.Bitmap;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;

public abstract class ImageLoaderListenerAdapter
  implements ImageLoaderListener
{
  public void onCancelled(String paramString)
  {
  }

  public void onFailed(String paramString1, int paramInt, String paramString2)
  {
  }

  public void onPostLoad(String paramString, Bitmap paramBitmap)
  {
  }

  public void onPreLoad(String paramString)
  {
  }

  public void onProgressUpdate(String paramString, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ImageLoaderListenerAdapter
 * JD-Core Version:    0.6.2
 */