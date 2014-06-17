package com.alipay.mobile.alipassapp.biz.common;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Rect;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import java.util.Hashtable;

public final class i
{
  public static Bitmap a(String paramString)
  {
    int i = 40 * Math.max(95, 1050) / 100;
    BitMatrix localBitMatrix = new MultiFormatWriter().encode(paramString, BarcodeFormat.CODE_128, i, 200, null);
    int j = localBitMatrix.getWidth();
    int k = localBitMatrix.getHeight();
    Bitmap localBitmap = Bitmap.createBitmap(j, k, Bitmap.Config.ARGB_8888);
    for (int m = 0; m < k; m++)
      for (int n = 0; n < j; n++)
        if (localBitMatrix.get(n, m))
          localBitmap.setPixel(n, m, -16777216);
    return localBitmap;
  }

  public static Bitmap a(String paramString1, String paramString2)
  {
    Hashtable localHashtable = new Hashtable();
    localHashtable.put(EncodeHintType.CHARACTER_SET, "ISO-8859-1");
    localHashtable.put(EncodeHintType.ERROR_CORRECTION, ErrorCorrectionLevel.M);
    BitMatrix localBitMatrix = new MultiFormatWriter().encode(new String(paramString1.getBytes(paramString2), "ISO-8859-1"), BarcodeFormat.QR_CODE, 300, 300, localHashtable);
    int i = localBitMatrix.getWidth();
    int j = localBitMatrix.getHeight();
    Bitmap localBitmap1 = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
    Rect localRect = null;
    for (int k = 0; k < j; k++)
    {
      int m = 0;
      if (m < i)
      {
        if (localBitMatrix.get(m, k))
        {
          localBitmap1.setPixel(m, k, -16777216);
          if (localRect != null)
            break label165;
          localRect = new Rect(m, k, m, k);
        }
        while (true)
        {
          m++;
          break;
          label165: localRect.top = Math.min(m, localRect.top);
          localRect.left = Math.min(k, localRect.left);
          localRect.right = Math.max(m, localRect.right);
          localRect.bottom = Math.max(k, localRect.bottom);
        }
      }
    }
    if (localRect != null)
    {
      Bitmap localBitmap2 = Bitmap.createBitmap(localBitmap1, localRect.left, localRect.top, localRect.width(), localRect.height());
      localBitmap1.recycle();
      return localBitmap2;
    }
    return localBitmap1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.common.i
 * JD-Core Version:    0.6.2
 */