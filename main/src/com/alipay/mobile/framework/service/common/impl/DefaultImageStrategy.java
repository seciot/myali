package com.alipay.mobile.framework.service.common.impl;

import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.common.ImageLoaderListener;
import java.io.IOException;
import java.io.InputStream;

public class DefaultImageStrategy
  implements ImageLoaderServiceImpl.ImageStrategy
{
  private static int[][] a = { { 40, 40 }, { 80, 80 }, { 160, 160 }, { -1, -1 } };

  public boolean loadAssetImage(String paramString, ImageLoaderListener paramImageLoaderListener)
  {
    boolean bool1 = paramString.contains("[asset]");
    boolean bool2 = false;
    AssetManager localAssetManager;
    InputStream localInputStream;
    if (bool1)
    {
      localAssetManager = AlipayApplication.getInstance().getAssets();
      localInputStream = null;
    }
    try
    {
      paramImageLoaderListener.onPreLoad(paramString);
      localInputStream = localAssetManager.open(paramString.substring(16));
      Bitmap localBitmap = BitmapFactory.decodeStream(localInputStream);
      paramImageLoaderListener.onProgressUpdate(paramString, 1.0D);
      paramImageLoaderListener.onPostLoad(paramString, localBitmap);
      if (localInputStream != null);
      try
      {
        localInputStream.close();
        bool2 = true;
        return bool2;
      }
      catch (IOException localIOException4)
      {
        while (true)
          new StringBuilder().append(localIOException4).toString();
      }
    }
    catch (IOException localIOException2)
    {
      while (true)
      {
        paramImageLoaderListener.onFailed(paramString, 0, localIOException2);
        new StringBuilder().append(localIOException2).toString();
        if (localInputStream != null)
          try
          {
            localInputStream.close();
          }
          catch (IOException localIOException3)
          {
            new StringBuilder().append(localIOException3).toString();
          }
      }
    }
    finally
    {
      if (localInputStream == null);
    }
    try
    {
      localInputStream.close();
      throw localObject;
    }
    catch (IOException localIOException1)
    {
      while (true)
        new StringBuilder().append(localIOException1).toString();
    }
  }

  public String preferImageUrl(String paramString, int paramInt1, int paramInt2)
  {
    if (paramString.contains("[imgWidth]"))
    {
      localSize1 = new DefaultImageStrategy.Size(paramInt1, paramInt2);
      i = localSize1.mWidth;
      j = localSize1.mHeight;
      k = i;
      m = j;
      n = 2147483647;
      for (i1 = 0; a[i1][0] > 0; i1++)
      {
        i2 = (a[i1][0] - localSize1.mWidth) * (a[i1][0] - localSize1.mWidth) + (a[i1][1] - localSize1.mHeight) * (a[i1][1] - localSize1.mHeight);
        if (i2 < n)
        {
          k = a[i1][0];
          m = a[i1][1];
          n = i2;
        }
      }
      localSize2 = new DefaultImageStrategy.Size(k, m);
      paramString = paramString.replace("[imgWidth]", localSize2.mWidth).replace("[imgHeight]", localSize2.mHeight);
    }
    while (!paramString.contains("[pixelWidth]"))
    {
      DefaultImageStrategy.Size localSize1;
      int i;
      int j;
      int k;
      int m;
      int n;
      int i1;
      int i2;
      DefaultImageStrategy.Size localSize2;
      return paramString;
    }
    String str = paramString.replace("[pixelWidth]", paramInt1);
    if (paramString.contains("[pixelHeight]"))
      return str.replace("[pixelHeight]", paramInt2);
    return str;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.DefaultImageStrategy
 * JD-Core Version:    0.6.2
 */