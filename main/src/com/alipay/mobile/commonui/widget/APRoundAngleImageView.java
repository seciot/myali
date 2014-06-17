package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import com.alipay.mobile.ui.R.styleable;

public class APRoundAngleImageView extends APImageView
{
  private String a = "RoundAngleImageView";
  private int b = 5;
  private int c = 5;
  private boolean d = false;
  private int e = 5;
  private int f = 0;

  public APRoundAngleImageView(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }

  public APRoundAngleImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }

  public APRoundAngleImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }

  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet != null)
    {
      TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.RoundAngleImageView);
      this.b = localTypedArray.getDimensionPixelSize(3, this.b);
      this.c = localTypedArray.getDimensionPixelSize(2, this.c);
      this.d = localTypedArray.getBoolean(4, this.d);
      this.e = localTypedArray.getDimensionPixelSize(1, this.e);
      this.f = localTypedArray.getColor(0, this.f);
      return;
    }
    float f1 = paramContext.getResources().getDisplayMetrics().density;
    this.b = ((int)(f1 * this.b));
    this.c = ((int)(f1 * this.c));
  }

  protected void onDraw(Canvas paramCanvas)
  {
    BitmapDrawable localBitmapDrawable = (BitmapDrawable)getDrawable();
    if (localBitmapDrawable != null)
    {
      BitmapShader localBitmapShader = new BitmapShader(localBitmapDrawable.getBitmap(), Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
      RectF localRectF1 = new RectF(0.0F, 0.0F, getWidth(), getHeight());
      int i = localBitmapDrawable.getBitmap().getWidth();
      int j = localBitmapDrawable.getBitmap().getHeight();
      RectF localRectF2 = new RectF(0.0F, 0.0F, i, j);
      Matrix localMatrix = new Matrix();
      localMatrix.setRectToRect(localRectF2, localRectF1, Matrix.ScaleToFit.CENTER);
      localBitmapShader.setLocalMatrix(localMatrix);
      Paint localPaint1 = new Paint();
      localPaint1.setAntiAlias(true);
      localPaint1.setShader(localBitmapShader);
      paramCanvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
      if (this.d)
      {
        Paint localPaint2 = new Paint();
        localPaint1.setAntiAlias(true);
        localPaint2.setColor(this.f);
        paramCanvas.drawCircle(getHeight() / 2, getWidth() / 2, getWidth() / 2 - this.e, localPaint2);
        paramCanvas.drawCircle(getHeight() / 2, getWidth() / 2, getWidth() / 2 - this.e, localPaint1);
        return;
      }
      paramCanvas.drawRoundRect(localRectF1, this.b, this.c, localPaint1);
      return;
    }
    super.onDraw(paramCanvas);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APRoundAngleImageView
 * JD-Core Version:    0.6.2
 */