package com.androidquery.util;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import java.lang.ref.WeakReference;

public class RatioDrawable extends BitmapDrawable
{
  private float a;
  private WeakReference<ImageView> b;
  private boolean c;
  private Matrix d;
  private int e;
  private float f;

  public RatioDrawable(Resources paramResources, Bitmap paramBitmap, ImageView paramImageView, float paramFloat1, float paramFloat2)
  {
    super(paramResources, paramBitmap);
    this.b = new WeakReference(paramImageView);
    this.a = paramFloat1;
    this.f = paramFloat2;
    paramImageView.setScaleType(ImageView.ScaleType.MATRIX);
    paramImageView.setImageMatrix(new Matrix());
    adjust(paramImageView, paramBitmap, false);
  }

  private void adjust(ImageView paramImageView, Bitmap paramBitmap, boolean paramBoolean)
  {
    int i = getWidth(paramImageView);
    if (i <= 0);
    do
    {
      int j;
      ViewGroup.LayoutParams localLayoutParams;
      do
      {
        return;
        j = targetHeight(paramBitmap.getWidth(), paramBitmap.getHeight(), i) + paramImageView.getPaddingTop() + paramImageView.getPaddingBottom();
        localLayoutParams = paramImageView.getLayoutParams();
      }
      while (localLayoutParams == null);
      if (j != localLayoutParams.height)
      {
        localLayoutParams.height = j;
        paramImageView.setLayoutParams(localLayoutParams);
      }
    }
    while (!paramBoolean);
    this.c = true;
  }

  private void draw(Canvas paramCanvas, ImageView paramImageView, Bitmap paramBitmap)
  {
    Matrix localMatrix = getMatrix(paramImageView, paramBitmap);
    if (localMatrix != null)
    {
      int i = paramImageView.getPaddingTop() + paramImageView.getPaddingBottom();
      int j = paramImageView.getPaddingLeft() + paramImageView.getPaddingRight();
      if ((i > 0) || (j > 0))
        paramCanvas.clipRect(0, 0, paramImageView.getWidth() - j, paramImageView.getHeight() - i);
      paramCanvas.drawBitmap(paramBitmap, localMatrix, getPaint());
    }
    if (!this.c)
      adjust(paramImageView, paramBitmap, true);
  }

  private Matrix getMatrix(ImageView paramImageView, Bitmap paramBitmap)
  {
    float f1 = 0.0F;
    int i = paramBitmap.getWidth();
    if ((this.d != null) && (i == this.e))
      return this.d;
    int j = paramBitmap.getHeight();
    int k = getWidth(paramImageView);
    int m = targetHeight(i, j, k);
    if ((i <= 0) || (j <= 0) || (k <= 0) || (m <= 0))
      return null;
    float f2;
    if ((this.d == null) || (i != this.e))
    {
      this.d = new Matrix();
      if (i * m < k * j)
        break label173;
      f2 = m / j;
    }
    for (float f3 = 0.5F * (k - f2 * i); ; f3 = 0.0F)
    {
      this.d.setScale(f2, f2);
      this.d.postTranslate(f3, f1);
      this.e = i;
      return this.d;
      label173: f2 = k / i;
      f1 = getYOffset(i, j) * (m - f2 * j);
    }
  }

  private int getWidth(ImageView paramImageView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramImageView.getLayoutParams();
    int i = 0;
    if (localLayoutParams != null)
      i = localLayoutParams.width;
    if (i <= 0)
      i = paramImageView.getWidth();
    if (i > 0)
      i = i - paramImageView.getPaddingLeft() - paramImageView.getPaddingRight();
    return i;
  }

  private float getYOffset(int paramInt1, int paramInt2)
  {
    if (this.f != 3.4028235E+38F)
      return (1.0F - this.f) / 2.0F;
    return 0.25F + (1.5F - Math.max(1.0F, Math.min(1.5F, paramInt2 / paramInt1))) / 2.0F;
  }

  private int targetHeight(int paramInt1, int paramInt2, int paramInt3)
  {
    float f1 = this.a;
    if (this.a == 3.4028235E+38F)
      f1 = paramInt2 / paramInt1;
    return (int)(f1 * paramInt3);
  }

  public void draw(Canvas paramCanvas)
  {
    WeakReference localWeakReference = this.b;
    ImageView localImageView = null;
    if (localWeakReference != null)
      localImageView = (ImageView)this.b.get();
    if ((this.a == 0.0F) || (localImageView == null))
    {
      super.draw(paramCanvas);
      return;
    }
    draw(paramCanvas, localImageView, getBitmap());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.util.RatioDrawable
 * JD-Core Version:    0.6.2
 */