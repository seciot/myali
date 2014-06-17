package com.squareup.picasso;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.widget.ImageView;

final class d extends Drawable
{
  private static final Paint d = new Paint();
  Drawable a;
  BitmapDrawable b;
  boolean c;
  private final Context e;
  private final boolean f;
  private final float g;
  private g h;
  private int i;
  private long j;

  private d(Context paramContext, Bitmap paramBitmap, g paramg, boolean paramBoolean1, boolean paramBoolean2)
  {
    Resources localResources = paramContext.getResources();
    this.e = paramContext.getApplicationContext();
    this.h = paramg;
    this.g = localResources.getDisplayMetrics().density;
    this.b = new BitmapDrawable(localResources, paramBitmap);
    this.f = paramBoolean2;
    if ((paramg != g.a) && (!paramBoolean1))
    {
      this.j = 0L;
      this.c = true;
    }
  }

  private void a(Drawable paramDrawable)
  {
    Rect localRect = getBounds();
    int k = localRect.width();
    int m = localRect.height();
    float f1 = k / m;
    int n = paramDrawable.getIntrinsicWidth();
    int i1 = paramDrawable.getIntrinsicHeight();
    if (n / i1 < f1)
    {
      int i5 = (int)(m / i1 * n);
      int i6 = localRect.left - (i5 - k) / 2;
      int i7 = i5 + i6;
      paramDrawable.setBounds(i6, localRect.top, i7, localRect.bottom);
      return;
    }
    int i2 = (int)(k / n * i1);
    int i3 = localRect.top - (i2 - m) / 2;
    int i4 = i2 + i3;
    paramDrawable.setBounds(localRect.left, i3, localRect.right, i4);
  }

  static void a(ImageView paramImageView, Context paramContext, Bitmap paramBitmap, g paramg, boolean paramBoolean1, boolean paramBoolean2)
  {
    Drawable localDrawable = paramImageView.getDrawable();
    d locald;
    if ((localDrawable instanceof d))
    {
      locald = (d)localDrawable;
      if (locald == null)
        break label132;
      if ((paramg == g.a) || (paramBoolean1))
        break label126;
    }
    label126: for (boolean bool = true; ; bool = false)
    {
      if ((locald.b != null) && (bool))
        locald.a = locald.b;
      locald.b = new BitmapDrawable(locald.e.getResources(), paramBitmap);
      locald.a(locald.b);
      locald.h = paramg;
      locald.j = 0L;
      locald.c = bool;
      locald.invalidateSelf();
      return;
      locald = null;
      break;
    }
    label132: paramImageView.setImageDrawable(new d(paramContext, paramBitmap, paramg, paramBoolean1, paramBoolean2));
  }

  public final void draw(Canvas paramCanvas)
  {
    int k = 1;
    if (this.b == null)
      this.a.draw(paramCanvas);
    label260: 
    while (true)
    {
      return;
      if (this.c)
      {
        if (this.j == 0L)
        {
          this.j = SystemClock.uptimeMillis();
          this.i = 0;
          k = 0;
        }
      }
      else
      {
        if (k == 0)
          break label204;
        this.b.draw(paramCanvas);
      }
      while (true)
      {
        if (!this.f)
          break label260;
        paramCanvas.save();
        paramCanvas.rotate(45.0F);
        d.setColor(-1);
        paramCanvas.drawRect(0.0F, -10.0F * this.g, 7.5F * this.g, 10.0F * this.g, d);
        d.setColor(this.h.d);
        paramCanvas.drawRect(0.0F, -9.0F * this.g, 6.5F * this.g, 9.0F * this.g, d);
        paramCanvas.restore();
        return;
        float f1 = (float)(SystemClock.uptimeMillis() - this.j) / 200.0F;
        if (f1 >= 1.0F);
        while (true)
        {
          this.i = ((int)(255.0F * Math.min(f1, 1.0F)));
          break;
          k = 0;
        }
        label204: if (this.a != null)
          this.a.draw(paramCanvas);
        if (this.i > 0)
        {
          this.b.setAlpha(this.i);
          this.b.draw(paramCanvas);
          this.b.setAlpha(255);
        }
        invalidateSelf();
      }
    }
  }

  public final int getIntrinsicHeight()
  {
    if (this.b != null)
      return this.b.getIntrinsicHeight();
    return -1;
  }

  public final int getIntrinsicWidth()
  {
    if (this.b != null)
      return this.b.getIntrinsicWidth();
    return -1;
  }

  public final int getOpacity()
  {
    return -1;
  }

  protected final void onBoundsChange(Rect paramRect)
  {
    super.onBoundsChange(paramRect);
    if (this.b != null)
      a(this.b);
    if (this.a != null)
      this.a.setBounds(getBounds());
  }

  public final void setAlpha(int paramInt)
  {
  }

  public final void setColorFilter(ColorFilter paramColorFilter)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.d
 * JD-Core Version:    0.6.2
 */