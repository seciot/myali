package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.common.BitArray;

public final class EAN8Reader extends UPCEANReader
{
  private final int[] a = new int[4];

  protected final int decodeMiddle(BitArray paramBitArray, int[] paramArrayOfInt, StringBuffer paramStringBuffer)
  {
    int[] arrayOfInt = this.a;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int i = paramBitArray.getSize();
    int j = paramArrayOfInt[1];
    int k = 0;
    while ((k < 4) && (j < i))
    {
      paramStringBuffer.append((char)(48 + decodeDigit(paramBitArray, arrayOfInt, j, L_PATTERNS)));
      int i3 = j;
      for (int i4 = 0; i4 < arrayOfInt.length; i4++)
        i3 += arrayOfInt[i4];
      k++;
      j = i3;
    }
    int m = findGuardPattern(paramBitArray, j, true, MIDDLE_PATTERN)[1];
    int n = 0;
    while ((n < 4) && (m < i))
    {
      paramStringBuffer.append((char)(48 + decodeDigit(paramBitArray, arrayOfInt, m, L_PATTERNS)));
      int i1 = m;
      for (int i2 = 0; i2 < arrayOfInt.length; i2++)
        i1 += arrayOfInt[i2];
      n++;
      m = i1;
    }
    return m;
  }

  final BarcodeFormat getBarcodeFormat()
  {
    return BarcodeFormat.EAN_8;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.EAN8Reader
 * JD-Core Version:    0.6.2
 */