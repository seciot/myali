package com.alipay.mobile.common.misc;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.view.View.MeasureSpec;
import android.widget.ImageView;

public class CircularImageView extends ImageView
{
  private int a = 3;
  private int b = 0;
  private int c = 0;
  private Bitmap d = null;
  private Paint e = null;
  private Paint f = null;
  private BitmapShader g = null;

  public CircularImageView(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public CircularImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  public CircularImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }

  private void a()
  {
    this.e = new Paint();
    this.e.setAntiAlias(true);
    this.f = new Paint();
    this.f.setAntiAlias(true);
    setBorderColor(-1);
  }

  @SuppressLint({"DrawAllocation"})
  public void onDraw(Canvas paramCanvas)
  {
    BitmapDrawable localBitmapDrawable = (BitmapDrawable)getDrawable();
    if (localBitmapDrawable != null)
      this.d = localBitmapDrawable.getBitmap();
    if ((this.d != null) && (!this.d.isRecycled()))
    {
      this.g = new BitmapShader(Bitmap.createScaledBitmap(this.d, this.b + 2 * this.a, this.c + 2 * this.a, false), Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
      this.e.setShader(this.g);
      int i = this.b / 2;
      paramCanvas.drawCircle(i + this.a, i + this.a, i + this.a, this.f);
      paramCanvas.drawCircle(i + this.a, i + this.a, i, this.e);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    int m;
    if (i == 1073741824)
    {
      int k = View.MeasureSpec.getMode(paramInt2);
      m = View.MeasureSpec.getSize(paramInt2);
      if (k != 1073741824)
        break label80;
    }
    while (true)
    {
      this.b = (j - 2 * this.a);
      this.c = (m - 2 * this.a);
      setMeasuredDimension(j, m);
      return;
      j = this.b;
      break;
      label80: m = this.c;
    }
  }

  public void setBorderColor(int paramInt)
  {
    if (this.f != null)
    {
      this.f.setColor(paramInt);
      this.f.setAlpha(205);
    }
    invalidate();
  }

  public void setBorderWidth(int paramInt)
  {
    this.a = paramInt;
    invalidate();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.CircularImageView
 * JD-Core Version:    0.6.2
 */