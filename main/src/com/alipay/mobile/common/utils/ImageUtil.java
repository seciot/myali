package com.alipay.mobile.common.utils;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Matrix.ScaleToFit;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;

public class ImageUtil
{
  public static Bitmap getBitmapClippedCircle(Bitmap paramBitmap)
  {
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    Bitmap localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Path localPath = new Path();
    localPath.addCircle(i / 2, j / 2, Math.min(i, j / 2), Path.Direction.CCW);
    Canvas localCanvas = new Canvas(localBitmap);
    localCanvas.clipPath(localPath);
    localCanvas.drawBitmap(paramBitmap, 0.0F, 0.0F, null);
    return localBitmap;
  }

  public static Bitmap getRoundAngleImage(Bitmap paramBitmap, float paramFloat1, float paramFloat2)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    BitmapShader localBitmapShader = new BitmapShader(paramBitmap, Shader.TileMode.CLAMP, Shader.TileMode.CLAMP);
    int i = paramBitmap.getWidth();
    int j = paramBitmap.getHeight();
    RectF localRectF1 = new RectF(0.0F, 0.0F, i, j);
    RectF localRectF2 = new RectF(0.0F, 0.0F, i, j);
    Matrix localMatrix = new Matrix();
    localMatrix.setRectToRect(localRectF2, localRectF1, Matrix.ScaleToFit.CENTER);
    localBitmapShader.setLocalMatrix(localMatrix);
    Paint localPaint = new Paint();
    localPaint.setAntiAlias(true);
    localPaint.setShader(localBitmapShader);
    localCanvas.setDrawFilter(new PaintFlagsDrawFilter(0, 3));
    localCanvas.drawRoundRect(localRectF1, i / 12, j / 12, localPaint);
    return localBitmap;
  }

  public static Bitmap getRoundedCornerBitmap(Bitmap paramBitmap, int paramInt)
  {
    Bitmap localBitmap = Bitmap.createBitmap(paramBitmap.getWidth(), paramBitmap.getHeight(), Bitmap.Config.ARGB_8888);
    Canvas localCanvas = new Canvas(localBitmap);
    Paint localPaint = new Paint();
    Rect localRect = new Rect(0, 0, paramBitmap.getWidth(), paramBitmap.getHeight());
    RectF localRectF = new RectF(localRect);
    float f = paramInt;
    localPaint.setAntiAlias(true);
    localCanvas.drawARGB(0, 0, 0, 0);
    localPaint.setColor(-12434878);
    localCanvas.drawRoundRect(localRectF, f, f, localPaint);
    localPaint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
    localCanvas.drawBitmap(paramBitmap, localRect, localRect, localPaint);
    return localBitmap;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.ImageUtil
 * JD-Core Version:    0.6.2
 */