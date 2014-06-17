package com.alipay.mobile.alipassapp.ui.widget;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

public final class e extends Drawable
{
  private Paint a = new Paint();
  private RectF b = new RectF();
  private boolean c;
  private Bitmap d;
  private boolean e;
  private Bitmap f;
  private int g;

  public e(int paramInt, boolean paramBoolean)
  {
    this.c = paramBoolean;
    this.a.setColor(paramInt);
    this.a.setAntiAlias(true);
    this.e = false;
  }

  public e(Bitmap paramBitmap, boolean paramBoolean, int paramInt)
  {
    this.c = paramBoolean;
    this.d = paramBitmap;
    this.e = true;
    this.g = paramInt;
  }

  private void a(Canvas paramCanvas)
  {
    paramCanvas.drawRoundRect(new RectF(this.b.left, this.b.top, this.b.right, this.b.bottom), 15.0F, 15.0F, this.a);
    if (this.c)
      paramCanvas.drawRect(this.b.left, this.b.height() / 2.0F, this.b.right, this.b.bottom, this.a);
  }

  public final void draw(Canvas paramCanvas)
  {
    try
    {
      this.b.set(getBounds());
      if (this.e)
      {
        if (this.f == null)
          this.f = Bitmap.createBitmap((int)this.b.width(), (int)this.b.height(), Bitmap.Config.ARGB_8888);
        Canvas localCanvas = new Canvas(this.f);
        localCanvas.save();
        Path localPath = new Path();
        if (this.c)
          localPath.addRoundRect(this.b, new float[] { 15.0F, 15.0F, 15.0F, 15.0F, 0.0F, 0.0F, 0.0F, 0.0F }, Path.Direction.CCW);
        while (true)
        {
          localCanvas.clipPath(localPath);
          localCanvas.drawColor(this.g);
          if (this.d != null)
          {
            localMatrix = new Matrix();
            if (!this.c)
              break;
            localMatrix.setTranslate(-(this.d.getWidth() - this.b.width()) / 2.0F, 0.0F);
            localMatrix.postScale(this.b.width() / this.d.getWidth(), 2.0F * this.b.height() / this.d.getHeight(), this.b.width() / 2.0F, 0.0F);
            localCanvas.drawBitmap(this.d, localMatrix, null);
            localCanvas.restore();
          }
          paramCanvas.drawBitmap(this.f, 0.0F, 0.0F, null);
          return;
          localPath.addRoundRect(new RectF(this.b.left, this.b.top, this.b.right, this.b.bottom), new float[] { 15.0F, 15.0F, 15.0F, 15.0F, 15.0F, 15.0F, 15.0F, 15.0F }, Path.Direction.CCW);
        }
      }
    }
    catch (OutOfMemoryError localOutOfMemoryError)
    {
      while (true)
      {
        Matrix localMatrix;
        a(paramCanvas);
        return;
        localMatrix.setTranslate(-(this.d.getWidth() - this.b.width()) / 2.0F, -(this.d.getHeight() - this.b.height()) / 2.0F);
        localMatrix.postScale(this.b.width() / this.d.getWidth(), this.b.height() / this.d.getHeight(), this.b.width() / 2.0F, this.b.height() / 2.0F);
      }
    }
    catch (Exception localException)
    {
      a(paramCanvas);
      return;
    }
    a(paramCanvas);
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
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.widget.e
 * JD-Core Version:    0.6.2
 */