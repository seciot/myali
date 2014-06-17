package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import java.util.Hashtable;

public class UPCAWriter
  implements Writer
{
  private final EAN13Writer a = new EAN13Writer();

  private static String a(String paramString)
  {
    int i = paramString.length();
    if (i == 11)
    {
      j = 0;
      k = 0;
      if (j < 11)
      {
        m = '\0*0' + paramString.charAt(j);
        if (j % 2 == 0);
        for (n = 3; ; n = 1)
        {
          k += n * m;
          j++;
          break;
        }
      }
      paramString = paramString + (1000 - k) % 10;
    }
    while (i == 12)
    {
      int j;
      int k;
      int m;
      int n;
      return "0" + paramString;
    }
    throw new IllegalArgumentException("Requested contents should be 11 or 12 digits long, but got " + paramString.length());
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
  {
    return encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, null);
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Hashtable paramHashtable)
  {
    if (paramBarcodeFormat != BarcodeFormat.UPC_A)
      throw new IllegalArgumentException("Can only encode UPC-A, but got " + paramBarcodeFormat);
    return this.a.encode(a(paramString), BarcodeFormat.EAN_13, paramInt1, paramInt2, paramHashtable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.UPCAWriter
 * JD-Core Version:    0.6.2
 */