package com.alipay.mobile.alipassapp.ui.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public final class a extends Drawable
{
  private RectF a = new RectF();
  private Paint b = new Paint();

  public a(int paramInt)
  {
    this.b.setAntiAlias(true);
    this.b.setStyle(Paint.Style.FILL);
    this.b.setColor(paramInt);
  }

  public final void draw(Canvas paramCanvas)
  {
    this.a.set(getBounds());
    paramCanvas.drawRoundRect(this.a, 10.0F, 10.0F, this.b);
    float f = this.a.height() / 2.0F;
    this.a.top = (f + this.a.top);
    paramCanvas.drawRect(this.a, this.b);
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
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.widget.a
 * JD-Core Version:    0.6.2
 */