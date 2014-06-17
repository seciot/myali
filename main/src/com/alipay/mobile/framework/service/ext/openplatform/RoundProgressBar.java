package com.alipay.mobile.framework.service.ext.openplatform;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.Style;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;

public class RoundProgressBar extends View
{
  public static final int FILL = 1;
  public static final int STROKE;
  private static Bitmap mask = null;
  private int max = 100;
  private Paint paint = new Paint();
  private int progress;
  private int roundColor = 0;
  private int roundProgressColor = 1677721600;
  private float roundWidth = 0.0F;

  public RoundProgressBar(Context paramContext)
  {
    this(paramContext, null);
  }

  public RoundProgressBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public RoundProgressBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public int getCricleColor()
  {
    return this.roundColor;
  }

  public int getCricleProgressColor()
  {
    return this.roundProgressColor;
  }

  protected Bitmap getMask(int paramInt)
  {
    if (mask != null)
      return mask;
    float f1 = getWidth();
    Bitmap localBitmap = Bitmap.createBitmap((int)f1, (int)f1, Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    localCanvas.drawColor(0);
    int i = (int)(0.15D * f1);
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setColor(this.roundProgressColor);
    localPaint.setStyle(Paint.Style.FILL_AND_STROKE);
    localCanvas.drawRoundRect(new RectF(0.0F, 0.0F, f1, f1), i, i, localPaint);
    float f2 = (float)(0.375D * f1);
    localPaint.setColor(0);
    localPaint.setStyle(Paint.Style.FILL_AND_STROKE);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
    localCanvas.drawArc(new RectF(f1 / 2.0F - f2, f1 / 2.0F - f2, f2 + f1 / 2.0F, f2 + f1 / 2.0F), -90.0F, 360 * (paramInt - this.max) / this.max, true, localPaint);
    return localBitmap;
  }

  public int getMax()
  {
    try
    {
      int i = this.max;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int getProgress()
  {
    try
    {
      int i = this.progress;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public float getRoundWidth()
  {
    return this.roundWidth;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    paramCanvas.drawColor(0);
    paramCanvas.drawBitmap(getMask(this.progress), 0.0F, 0.0F, null);
    invalidate();
  }

  public void setCricleColor(int paramInt)
  {
    this.roundColor = paramInt;
  }

  public void setCricleProgressColor(int paramInt)
  {
    this.roundProgressColor = paramInt;
  }

  public void setMax(int paramInt)
  {
    if (paramInt < 0)
      try
      {
        throw new IllegalArgumentException("max not less than 0");
      }
      finally
      {
      }
    this.max = paramInt;
  }

  public void setProgress(int paramInt)
  {
    if (paramInt < 0)
      try
      {
        throw new IllegalArgumentException("progress not less than 0");
      }
      finally
      {
      }
    if (paramInt > this.max)
      paramInt = this.max;
    if (paramInt <= this.max)
    {
      this.progress = paramInt;
      postInvalidate();
    }
  }

  public void setRoundWidth(float paramFloat)
  {
    this.roundWidth = paramFloat;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.RoundProgressBar
 * JD-Core Version:    0.6.2
 */