package com.alipay.mobile.alipassapp.ui.common;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import java.util.ArrayList;
import java.util.Iterator;

public final class ar extends Drawable
{
  private float[] a = { 0.0F, 0.2F, 0.3F, 0.4F, 0.6F, 0.8F, 1.0F };
  private int[] b = new int[7];
  private RectF c;
  private Paint d = new Paint();
  private ArrayList<PointF> e = new ArrayList();
  private ArrayList<PointF> f = new ArrayList();

  public ar(int paramInt)
  {
    for (int i = 0; i < 7; i++)
    {
      int[] arrayOfInt = this.b;
      float f1 = this.a[i];
      arrayOfInt[i] = Color.rgb((int)(Color.red(paramInt) * a(f1)), (int)(Color.green(paramInt) * a(f1)), (int)(Color.blue(paramInt) * a(f1)));
    }
    this.c = new RectF();
    this.d.setAntiAlias(true);
    this.d.setStyle(Paint.Style.FILL);
    this.d.setColor(paramInt);
  }

  private static float a(float paramFloat)
  {
    return 0.75F + 0.15F * paramFloat - paramFloat * (0.25F * paramFloat);
  }

  public final void draw(Canvas paramCanvas)
  {
    this.c.set(getBounds());
    this.e.clear();
    this.f.clear();
    int i = -1 + (int)(this.c.height() / 10.0F);
    for (int j = 0; j < i; j++)
    {
      this.e.add(new PointF(2.5F + this.c.left, this.c.top + 10 * (j + 1)));
      this.f.add(new PointF(this.c.right - 2.5F, this.c.top + 10 * (j + 1)));
    }
    this.c.left = (3.0F + this.c.left);
    this.c.right -= 3.0F;
    paramCanvas.drawRoundRect(this.c, 5.0F, 5.0F, this.d);
    Iterator localIterator1 = this.e.iterator();
    while (localIterator1.hasNext())
    {
      PointF localPointF2 = (PointF)localIterator1.next();
      paramCanvas.drawCircle(localPointF2.x, localPointF2.y, 2.5F, this.d);
    }
    Iterator localIterator2 = this.f.iterator();
    while (localIterator2.hasNext())
    {
      PointF localPointF1 = (PointF)localIterator2.next();
      paramCanvas.drawCircle(localPointF1.x, localPointF1.y, 2.5F, this.d);
    }
  }

  public final int getOpacity()
  {
    return 0;
  }

  public final void setAlpha(int paramInt)
  {
  }

  public final void setColorFilter(ColorFilter paramColorFilter)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ar
 * JD-Core Version:    0.6.2
 */