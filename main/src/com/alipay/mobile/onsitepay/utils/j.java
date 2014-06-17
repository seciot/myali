package com.alipay.mobile.onsitepay.utils;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.text.TextUtils;
import android.widget.ImageView;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;

public final class j
{
  private static Bitmap a(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
  {
    Bitmap localBitmap;
    if (paramString == null)
      localBitmap = null;
    while (true)
    {
      return localBitmap;
      MultiFormatWriter localMultiFormatWriter = new MultiFormatWriter();
      Object localObject;
      int i;
      int j;
      int[] arrayOfInt;
      while (true)
      {
        int k;
        try
        {
          BitMatrix localBitMatrix1;
          if (paramBarcodeFormat == BarcodeFormat.QR_CODE)
          {
            BitMatrix localBitMatrix2 = localMultiFormatWriter.encode(paramString, paramBarcodeFormat, paramInt1, paramInt2);
            localObject = localBitMatrix2;
            i = ((BitMatrix)localObject).getWidth();
            j = ((BitMatrix)localObject).getHeight();
            arrayOfInt = new int[i * j];
            k = 0;
            if (k >= j)
              break;
            int i3 = k * i;
            int i4 = 0;
            if (i4 >= i)
              break label156;
            int i5 = i3 + i4;
            if (((BitMatrix)localObject).get(i4, k))
            {
              i6 = -16777216;
              arrayOfInt[i5] = i6;
              i4++;
              continue;
            }
          }
          else
          {
            localBitMatrix1 = localMultiFormatWriter.encode(paramString, paramBarcodeFormat, paramInt1, paramInt2);
            localObject = localBitMatrix1;
            continue;
          }
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          return null;
        }
        int i6 = 16777215;
        continue;
        label156: k++;
      }
      localBitmap = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
      localBitmap.setPixels(arrayOfInt, 0, i, 0, 0, i, j);
      if (TextUtils.isEmpty(paramString));
      label200: Canvas localCanvas;
      Paint localPaint;
      int m;
      String str1;
      for (paramString = ""; paramBarcodeFormat == BarcodeFormat.CODE_128; paramString = str1)
      {
        localCanvas = new Canvas(localBitmap);
        localPaint = new Paint();
        new StringBuilder("contents = ").append(paramString).toString();
        for (m = 0; (m < i) && (!((BitMatrix)localObject).get(m, 0)); m++);
        if ((paramString.length() >= 20) || (paramString.length() <= 12))
          break label200;
        StringBuffer localStringBuffer = new StringBuffer(paramString);
        localStringBuffer.insert(12, "-");
        localStringBuffer.insert(8, "-");
        localStringBuffer.insert(4, "-");
        str1 = localStringBuffer.toString();
        new StringBuilder(" format code ").append(paramString).append(" to ").append(str1).toString();
      }
      continue;
      localPaint.setColor(-1);
      localCanvas.drawRect(0.0F, -4 + (j - i / 30), i, j, localPaint);
      localPaint.setTextSize(i / 30);
      int n = paramString.length();
      float f1 = i - m * 2;
      localPaint.setColor(-16777216);
      float f2 = f1 / paramString.length();
      for (int i1 = 0; i1 < n; i1++)
      {
        int i2 = i1 + 1;
        String str2 = paramString.substring(i1, i2);
        localCanvas.drawText(str2, m + f2 * i1 + (f2 - localPaint.measureText(str2)) / 2.0F, j - 4, localPaint);
      }
    }
  }

  public static void a(String paramString1, String paramString2, ImageView paramImageView, boolean paramBoolean)
  {
    a(paramString1, paramString2, paramImageView, paramBoolean, paramImageView.getWidth(), paramImageView.getHeight());
  }

  public static void a(String paramString1, String paramString2, ImageView paramImageView, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    if ((paramImageView.getVisibility() != 0) || (paramImageView.getWidth() <= 0))
      return;
    BarcodeFormat localBarcodeFormat = BarcodeFormat.valueOf(paramString2);
    if (paramBoolean)
      try
      {
        Bitmap localBitmap2 = a(paramString1, localBarcodeFormat, paramInt2, paramInt1);
        Matrix localMatrix = new Matrix();
        localMatrix.postRotate(90.0F);
        localMatrix.postTranslate(paramImageView.getWidth(), 0.0F);
        paramImageView.setImageMatrix(localMatrix);
        paramImageView.setImageBitmap(localBitmap2);
        return;
      }
      catch (WriterException localWriterException)
      {
        localWriterException.printStackTrace();
        return;
      }
    if ((BarcodeFormat.QR_CODE == localBarcodeFormat) && (paramInt1 > paramInt2))
      paramInt1 = paramInt2;
    Bitmap localBitmap1 = a(paramString1, localBarcodeFormat, paramInt1, paramInt2);
    paramImageView.setImageMatrix(null);
    paramImageView.setImageBitmap(localBitmap1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.utils.j
 * JD-Core Version:    0.6.2
 */