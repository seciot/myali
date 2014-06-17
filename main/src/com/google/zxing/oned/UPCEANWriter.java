package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import java.util.Hashtable;

public abstract class UPCEANWriter
  implements Writer
{
  private static BitMatrix a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = paramArrayOfByte.length;
    int j = i + (UPCEANReader.START_END_PATTERN.length << 1);
    int k = Math.max(paramInt1, j);
    int m = Math.max(1, paramInt2);
    int n = k / j;
    int i1 = (k - i * n) / 2;
    BitMatrix localBitMatrix = new BitMatrix(k, m);
    int i2 = i1;
    int i3 = 0;
    while (i3 < i)
    {
      if (paramArrayOfByte[i3] == 1)
        localBitMatrix.setRegion(i2, 0, n, m);
      i3++;
      i2 += n;
    }
    return localBitMatrix;
  }

  protected static int appendPattern(byte[] paramArrayOfByte, int paramInt1, int[] paramArrayOfInt, int paramInt2)
  {
    if ((paramInt2 != 0) && (paramInt2 != 1))
      throw new IllegalArgumentException("startColor must be either 0 or 1, but got: " + paramInt2);
    int i = (byte)paramInt2;
    int j = 0;
    int k = i;
    for (int m = 0; m < paramArrayOfInt.length; m++)
    {
      int n = 0;
      while (n < paramArrayOfInt[m])
      {
        paramArrayOfByte[paramInt1] = k;
        paramInt1++;
        int i1 = j + 1;
        n++;
        j = i1;
      }
      k = (byte)(k ^ 0x1);
    }
    return j;
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
  {
    return encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, null);
  }

  public BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Hashtable paramHashtable)
  {
    if ((paramString == null) || (paramString.length() == 0))
      throw new IllegalArgumentException("Found empty contents");
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IllegalArgumentException("Requested dimensions are too small: " + paramInt1 + 'x' + paramInt2);
    return a(encode(paramString), paramInt1, paramInt2);
  }

  public abstract byte[] encode(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.UPCEANWriter
 * JD-Core Version:    0.6.2
 */