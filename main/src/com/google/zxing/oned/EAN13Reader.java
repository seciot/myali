package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

public final class EAN13Reader extends UPCEANReader
{
  static final int[] FIRST_DIGIT_ENCODINGS = { 0, 11, 13, 14, 19, 25, 28, 21, 22, 26 };
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
    int m = 0;
    int i6;
    if ((k < 6) && (j < i))
    {
      int i5 = decodeDigit(paramBitArray, arrayOfInt, j, L_AND_G_PATTERNS);
      paramStringBuffer.append((char)(48 + i5 % 10));
      i6 = j;
      for (int i7 = 0; i7 < arrayOfInt.length; i7++)
        i6 += arrayOfInt[i7];
      if (i5 < 10)
        break label285;
    }
    label282: label285: for (int i8 = m | 1 << 5 - k; ; i8 = m)
    {
      k++;
      m = i8;
      j = i6;
      break;
      int n = 0;
      int i1;
      int i2;
      if (n < 10)
        if (m == FIRST_DIGIT_ENCODINGS[n])
        {
          paramStringBuffer.insert(0, (char)(n + 48));
          i1 = findGuardPattern(paramBitArray, j, true, MIDDLE_PATTERN)[1];
          i2 = 0;
        }
      while (true)
      {
        if ((i2 >= 6) || (i1 >= i))
          break label282;
        paramStringBuffer.append((char)(48 + decodeDigit(paramBitArray, arrayOfInt, i1, L_PATTERNS)));
        int i3 = i1;
        int i4 = 0;
        while (true)
          if (i4 < arrayOfInt.length)
          {
            i3 += arrayOfInt[i4];
            i4++;
            continue;
            n++;
            break;
            throw NotFoundException.getNotFoundInstance();
          }
        i2++;
        i1 = i3;
      }
      return i1;
    }
  }

  final BarcodeFormat getBarcodeFormat()
  {
    return BarcodeFormat.EAN_13;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.EAN13Reader
 * JD-Core Version:    0.6.2
 */