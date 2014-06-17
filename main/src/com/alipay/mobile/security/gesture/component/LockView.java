package com.alipay.mobile.security.gesture.component;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import com.alipay.mobile.a.g;

public class LockView extends View
{
  public static int MINSELECTED = 4;
  private Paint a;
  private int b = 20;
  private int c = 20;
  private int d = 60;
  private int e = 50;
  private int f = 50;
  private int g = 9;
  private int h = 3;
  private int i = 0;
  private int[] j;
  private int k;
  private boolean l = false;
  private boolean m = false;
  int mGridBetweenX = 0;
  int mGridBetweenY = 0;
  int mGridHeight = 0;
  int mGridMargin = 0;
  int mGridWidth = 0;
  private Point n = new Point();
  private boolean o = false;
  private m p = null;
  private l q = null;
  private Drawable r = null;
  private Drawable s = null;
  private int t = 0;
  private boolean u = false;
  private boolean v = true;

  public LockView(Context paramContext)
  {
    super(paramContext);
  }

  public LockView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, g.b);
    this.r = localTypedArray.getDrawable(0);
    this.s = localTypedArray.getDrawable(1);
    localTypedArray.recycle();
    a();
  }

  public LockView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext);
    a();
  }

  private void a()
  {
    this.a = new Paint();
    this.a.setAntiAlias(true);
    this.v = true;
    this.j = new int[this.g];
    for (int i1 = 0; i1 < this.g; i1++)
      this.j[i1] = -1;
    this.k = 0;
    DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
    if ((240 > localDisplayMetrics.densityDpi) || (728 == localDisplayMetrics.heightPixels))
    {
      this.u = true;
      this.a.setStrokeWidth(9.0F);
      return;
    }
    if ((960 == localDisplayMetrics.heightPixels) && (640 == localDisplayMetrics.widthPixels))
      this.u = true;
    this.a.setStrokeWidth(18.0F);
  }

  private void a(int paramInt)
  {
    int[] arrayOfInt = this.j;
    int i1 = this.k;
    this.k = (i1 + 1);
    arrayOfInt[i1] = paramInt;
    this.i |= 1 << paramInt + 1;
  }

  private boolean a(float paramFloat1, float paramFloat2)
  {
    for (int i1 = 0; ; i1++)
    {
      int i4;
      int i8;
      label119: int i14;
      if (i1 < this.g)
      {
        if (!b(i1))
          continue;
        int i3 = this.mGridMargin + this.mGridBetweenX * (i1 % this.h) + this.mGridWidth / 2;
        if (!this.u)
          break label240;
        i4 = 0;
        int i5 = i4 + this.mGridBetweenY * (i1 / this.h) + this.mGridWidth / 2;
        int i6 = (int)(i3 - paramFloat1);
        int i7 = (int)(i5 - paramFloat2);
        if (Math.sqrt(i6 * i6 + i7 * i7) > this.t)
          break label249;
        i8 = 1;
        if (i8 == 0)
          continue;
        if (this.k > 0)
        {
          int i9 = this.j[(-1 + this.k)];
          int i10 = i9 % 3;
          int i11 = i9 / 3;
          int i12 = i1 % 3;
          int i13 = i1 / 3;
          if (((i10 - i12) % 2 != 0) || ((i11 - i13) % 2 != 0))
            break label255;
          i14 = (i9 + i1) / 2;
          if (!b(i14))
            break label255;
        }
      }
      while (true)
      {
        if (-1 != i14)
          a(i14);
        a(i1);
        int i2 = this.k;
        boolean bool = false;
        if (i2 > 0)
          bool = true;
        return bool;
        label240: i4 = this.mGridMargin;
        break;
        label249: i8 = 0;
        break label119;
        label255: i14 = -1;
      }
    }
  }

  private boolean b(int paramInt)
  {
    return (this.i & 1 << paramInt + 1) == 0;
  }

  private int c(int paramInt)
  {
    return this.mGridMargin + this.mGridBetweenX * (paramInt % this.h) + this.t;
  }

  private int d(int paramInt)
  {
    if (this.u);
    for (int i1 = 0; ; i1 = this.mGridMargin)
      return i1 + this.mGridBetweenY * (paramInt / this.h) + this.t;
  }

  public void clear()
  {
    this.i = 0;
    this.m = false;
    this.v = true;
    if (this.k != 0)
    {
      this.k = 0;
      invalidate();
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    int i1 = 0;
    if (i1 < this.g)
    {
      float f1 = this.mGridMargin + this.mGridBetweenX * (i1 % this.h);
      int i3;
      if (this.u)
      {
        i3 = 0;
        label39: float f2 = i3 + this.mGridBetweenY * (i1 / this.h);
        int i4 = this.i & 1 << i1 + 1;
        paramCanvas.save();
        paramCanvas.translate(f1, f2);
        if (i4 <= 0)
          break label141;
        this.r.draw(paramCanvas);
        if ((this.v) && (this.q != null))
        {
          this.v = false;
          this.q.a();
        }
      }
      while (true)
      {
        paramCanvas.restore();
        i1++;
        break;
        i3 = this.mGridMargin;
        break label39;
        label141: this.s.draw(paramCanvas);
      }
    }
    for (int i2 = 0; i2 < -1 + this.k; i2++)
      paramCanvas.drawLine(c(this.j[i2]), d(this.j[i2]), c(this.j[(i2 + 1)]), d(this.j[(i2 + 1)]), this.a);
    if ((this.l) && (this.k > 0))
    {
      this.a.setColor(Color.argb(153, 0, 210, 255));
      paramCanvas.drawLine(c(this.j[(-1 + this.k)]), d(this.j[(-1 + this.k)]), this.n.x, this.n.y, this.a);
    }
    super.onDraw(paramCanvas);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i1 = 2;
    int i2 = getDefaultSize(getSuggestedMinimumWidth(), paramInt1);
    this.mGridWidth = (i2 / (-1 + 2 * this.h));
    this.mGridHeight = this.mGridWidth;
    this.mGridMargin = ((i2 - this.mGridWidth * this.h) / (2 + 2 * (-1 + this.h)));
    this.mGridBetweenX = (this.mGridWidth + 2 * this.mGridMargin);
    int i3 = this.mGridHeight;
    if (this.u);
    for (int i4 = 1; ; i4 = i1)
    {
      this.mGridBetweenY = (i3 + i4 * this.mGridMargin);
      this.t = (this.mGridWidth / 2);
      int i5 = this.mGridBetweenY * (-1 + this.h) + this.mGridHeight;
      if (this.u)
        i1 = 0;
      setMeasuredDimension(i2, i5 + i1 * this.mGridMargin);
      this.r.setBounds(0, 0, this.mGridWidth, this.mGridHeight);
      this.s.setBounds(0, 0, this.mGridWidth, this.mGridHeight);
      return;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    case 3:
    default:
    case 1:
    case 0:
    case 2:
    }
    label204: label248: 
    do
    {
      do
      {
        return true;
        this.m = true;
        if (this.p != null)
        {
          String str = "";
          for (int i3 = 0; i3 < this.k; i3++)
            str = str + this.j[i3];
          if (str.length() > 0)
            this.p.a(str);
        }
        this.l = false;
        invalidate();
        return true;
        if (this.m)
        {
          this.i = 0;
          this.k = 0;
          this.m = false;
        }
      }
      while (!a(paramMotionEvent.getX(), paramMotionEvent.getY()));
      invalidate();
      return true;
      this.l = false;
      int i1 = paramMotionEvent.getHistorySize();
      int i2 = 0;
      if (i2 < i1 + 1)
      {
        float f1;
        if (i2 < i1)
        {
          f1 = paramMotionEvent.getHistoricalX(i2);
          if (i2 >= i1)
            break label248;
        }
        for (float f2 = paramMotionEvent.getHistoricalY(i2); ; f2 = paramMotionEvent.getY())
        {
          this.l |= a(f1, f2);
          i2++;
          break;
          f1 = paramMotionEvent.getX();
          break label204;
        }
      }
    }
    while (!this.l);
    this.n.x = ((int)paramMotionEvent.getX());
    this.n.y = ((int)paramMotionEvent.getY());
    invalidate();
    return true;
  }

  public void setOnFirstInputListener(l paraml)
  {
    this.q = paraml;
  }

  public void setOnLockInputListener(m paramm)
  {
    this.p = paramm;
  }

  public void setQuitOnDone(boolean paramBoolean)
  {
    this.o = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.component.LockView
 * JD-Core Version:    0.6.2
 */