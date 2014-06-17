package com.alipay.mobile.security.gesture.component;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import com.alipay.mobile.a.g;

public class LockIndicator extends View
{
  public static int MAXTOTAL = 32;
  private int a = 3;
  private int b = 3;
  private int c = 0;
  private int d = 40;
  private int e = 40;
  private int f = 5;
  private int g = 5;
  private int h = 3;
  private Paint i = null;
  private Drawable j = null;
  private Drawable k = null;

  public LockIndicator(Context paramContext)
  {
    super(paramContext);
  }

  public LockIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet, 0);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, g.a);
    this.j = localTypedArray.getDrawable(0);
    this.k = localTypedArray.getDrawable(1);
    localTypedArray.recycle();
    this.i = new Paint();
    this.i.setAntiAlias(true);
    this.i.setStrokeWidth(this.h);
    this.i.setStyle(Paint.Style.STROKE);
    if (this.k != null)
    {
      this.d = this.k.getIntrinsicHeight();
      this.e = this.k.getIntrinsicHeight();
      this.f = (this.d / 2);
      this.g = (this.e / 4);
      this.k.setBounds(0, 0, this.d, this.e);
      this.j.setBounds(0, 0, this.d, this.e);
    }
  }

  public void clear()
  {
    if (this.c != 0)
    {
      this.c = 0;
      invalidate();
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if (this.a * this.b > MAXTOTAL);
    while (true)
    {
      return;
      if ((this.k != null) && (this.j != null))
        for (int m = 0; m < this.a; m++)
        {
          int n = 0;
          if (n < this.b)
          {
            this.i.setColor(-16777216);
            int i1 = m * this.d + m * this.f;
            int i2 = n * this.e + n * this.g;
            paramCanvas.save();
            paramCanvas.translate(i1, i2);
            if ((this.c & 1 << m + n * this.a) != 0)
              this.j.draw(paramCanvas);
            while (true)
            {
              paramCanvas.restore();
              n++;
              break;
              this.k.draw(paramCanvas);
            }
          }
        }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (this.k != null)
      setMeasuredDimension(this.a * this.d + this.f * (-1 + this.a), this.b * this.e + this.g * (-1 + this.b));
  }

  public void setPath(String paramString)
  {
    int m = 0;
    int n = paramString.length();
    this.c = 0;
    while (m < n)
    {
      this.c |= 1 << '\0*0' + paramString.charAt(m);
      m++;
    }
    if (this.c > 0)
      invalidate();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.component.LockIndicator
 * JD-Core Version:    0.6.2
 */