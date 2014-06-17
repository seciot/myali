package com.alipay.mobile.common.image;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public class ImageDrawable extends BitmapDrawable
{
  private Drawable a;

  public ImageDrawable(Resources paramResources, Bitmap paramBitmap, int paramInt)
  {
    super(paramResources, paramBitmap);
    this.a = paramResources.getDrawable(paramInt);
  }

  public ImageDrawable(Resources paramResources, Bitmap paramBitmap1, Bitmap paramBitmap2)
  {
    super(paramResources, paramBitmap1);
    this.a = new BitmapDrawable(paramResources, paramBitmap2);
  }

  public void draw(Canvas paramCanvas)
  {
    if ((getBitmap() == null) || (getBitmap().isRecycled()))
    {
      this.a.setBounds(copyBounds());
      this.a.draw(paramCanvas);
      return;
    }
    super.draw(paramCanvas);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.image.ImageDrawable
 * JD-Core Version:    0.6.2
 */