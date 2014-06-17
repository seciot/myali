package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.common.BitArray;

public final class UPCEReader extends UPCEANReader
{
  private static final int[] a = { 1, 1, 1, 1, 1, 1 };
  private static final int[][] b = { { 56, 52, 50, 49, 44, 38, 35, 42, 41, 37 }, { 7, 11, 13, 14, 19, 25, 28, 21, 22, 26 } };
  private final int[] c = new int[4];

  public static String convertUPCEtoUPCA(String paramString)
  {
    char[] arrayOfChar = new char[6];
    paramString.getChars(1, 7, arrayOfChar, 0);
    StringBuffer localStringBuffer = new StringBuffer(12);
    localStringBuffer.append(paramString.charAt(0));
    char c1 = arrayOfChar[5];
    switch (c1)
    {
    default:
      localStringBuffer.append(arrayOfChar, 0, 5);
      localStringBuffer.append("0000");
      localStringBuffer.append(c1);
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    }
    while (true)
    {
      localStringBuffer.append(paramString.charAt(7));
      return localStringBuffer.toString();
      localStringBuffer.append(arrayOfChar, 0, 2);
      localStringBuffer.append(c1);
      localStringBuffer.append("0000");
      localStringBuffer.append(arrayOfChar, 2, 3);
      continue;
      localStringBuffer.append(arrayOfChar, 0, 3);
      localStringBuffer.append("00000");
      localStringBuffer.append(arrayOfChar, 3, 2);
      continue;
      localStringBuffer.append(arrayOfChar, 0, 4);
      localStringBuffer.append("00000");
      localStringBuffer.append(arrayOfChar[4]);
    }
  }

  protected final boolean checkChecksum(String paramString)
  {
    return super.checkChecksum(convertUPCEtoUPCA(paramString));
  }

  protected final int[] decodeEnd(BitArray paramBitArray, int paramInt)
  {
    return findGuardPattern(paramBitArray, paramInt, true, a);
  }

  protected final int decodeMiddle(BitArray paramBitArray, int[] paramArrayOfInt, StringBuffer paramStringBuffer)
  {
    int[] arrayOfInt = this.c;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int i = paramBitArray.getSize();
    int j = paramArrayOfInt[1];
    int k = 0;
    int m = 0;
    int i3;
    if ((k < 6) && (j < i))
    {
      int i2 = decodeDigit(paramBitArray, arrayOfInt, j, L_AND_G_PATTERNS);
      paramStringBuffer.append((char)(48 + i2 % 10));
      i3 = j;
      for (int i4 = 0; i4 < arrayOfInt.length; i4++)
        i3 += arrayOfInt[i4];
      if (i2 < 10)
        break label222;
    }
    label222: for (int i5 = m | 1 << 5 - k; ; i5 = m)
    {
      k++;
      m = i5;
      j = i3;
      break;
      for (int n = 0; n <= 1; n++)
        for (int i1 = 0; i1 < 10; i1++)
          if (m == b[n][i1])
          {
            paramStringBuffer.insert(0, (char)(n + 48));
            paramStringBuffer.append((char)(i1 + 48));
            return j;
          }
      throw NotFoundException.getNotFoundInstance();
    }
  }

  final BarcodeFormat getBarcodeFormat()
  {
    return BarcodeFormat.UPC_E;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.UPCEReader
 * JD-Core Version:    0.6.2
 */