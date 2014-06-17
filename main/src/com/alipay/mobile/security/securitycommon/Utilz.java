package com.alipay.mobile.security.securitycommon;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Matrix;
import android.graphics.RectF;
import java.io.ByteArrayInputStream;

public class Utilz
{
  private static int a(BitmapFactory.Options paramOptions, int paramInt1, int paramInt2)
  {
    int i = paramOptions.outHeight;
    int j = paramOptions.outWidth;
    int k = 1;
    if ((i > paramInt2) || (j > paramInt1))
    {
      int m = i / 2;
      int n = j / 2;
      while ((m / k > paramInt2) && (n / k > paramInt1))
        k *= 2;
    }
    return k;
  }

  public static Bitmap a(Bitmap paramBitmap, float paramFloat)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.postRotate(paramFloat);
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, false);
      return localBitmap;
    }
    catch (Error localError)
    {
      localError.printStackTrace();
    }
    return null;
  }

  public static Bitmap a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      BitmapFactory.decodeStream(new ByteArrayInputStream(paramArrayOfByte), null, localOptions);
      localOptions.inSampleSize = a(localOptions, paramInt1, paramInt2);
      localOptions.inJustDecodeBounds = false;
      Bitmap localBitmap = BitmapFactory.decodeStream(new ByteArrayInputStream(paramArrayOfByte), null, localOptions);
      return localBitmap;
    }
    catch (Error localError)
    {
      localError.printStackTrace();
    }
    return null;
  }

  public static RectF a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    float f1 = Math.max(paramInt3 / paramInt1, paramInt4 / paramInt2);
    float f2 = f1 * paramInt1;
    float f3 = f1 * paramInt2;
    float f4 = (paramInt3 - f2) / 2.0F;
    float f5 = (paramInt4 - f3) / 2.0F;
    RectF localRectF = new RectF();
    localRectF.left = f4;
    localRectF.right = (f2 + f4);
    localRectF.top = f5;
    localRectF.bottom = (f3 + f5);
    return localRectF;
  }

  public static void a(Bitmap paramBitmap)
  {
    if (paramBitmap != null);
    try
    {
      if (!paramBitmap.isRecycled())
        paramBitmap.recycle();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public static Bitmap b(Bitmap paramBitmap, float paramFloat)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.postScale(-1.0F, 1.0F);
    localMatrix.postRotate(paramFloat);
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, false);
      return localBitmap;
    }
    catch (Error localError)
    {
      localError.printStackTrace();
    }
    return null;
  }

  public static Bitmap c(Bitmap paramBitmap, float paramFloat)
  {
    Matrix localMatrix = new Matrix();
    localMatrix.postRotate(paramFloat);
    localMatrix.postScale(-1.0F, 1.0F);
    try
    {
      Bitmap localBitmap = Bitmap.createBitmap(paramBitmap, 0, 0, paramBitmap.getWidth(), paramBitmap.getHeight(), localMatrix, false);
      return localBitmap;
    }
    catch (Error localError)
    {
      localError.printStackTrace();
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.Utilz
 * JD-Core Version:    0.6.2
 */