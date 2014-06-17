package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;

public final class Code93Reader extends OneDReader
{
  private static final char[] a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".toCharArray();
  private static final int[] b = arrayOfInt;
  private static final int c = arrayOfInt[47];

  static
  {
    int[] arrayOfInt = { 276, 328, 324, 322, 296, 292, 290, 336, 274, 266, 424, 420, 418, 404, 402, 394, 360, 356, 354, 308, 282, 344, 332, 326, 300, 278, 436, 434, 428, 422, 406, 410, 364, 358, 310, 314, 302, 468, 466, 458, 366, 374, 430, 294, 474, 470, 306, 350 };
  }

  private static char a(int paramInt)
  {
    for (int i = 0; i < b.length; i++)
      if (b[i] == paramInt)
        return a[i];
    throw NotFoundException.getNotFoundInstance();
  }

  private static int a(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    int j = 0;
    int i6;
    for (int k = 0; j < i; k = i6)
    {
      i6 = k + paramArrayOfInt[j];
      j++;
    }
    int m = 0;
    int n = 0;
    int i2;
    if (m < i)
    {
      int i1 = 9 * (paramArrayOfInt[m] << 8) / k;
      i2 = i1 >> 8;
      if ((i1 & 0xFF) <= 127)
        break label143;
    }
    label143: for (int i3 = i2 + 1; ; i3 = i2)
    {
      if ((i3 <= 0) || (i3 > 4))
      {
        n = -1;
        return n;
      }
      if ((m & 0x1) == 0)
      {
        int i4 = 0;
        while (i4 < i3)
        {
          int i5 = 0x1 | n << 1;
          i4++;
          n = i5;
        }
      }
      n <<= i3;
      m++;
      break;
    }
  }

  private static String a(StringBuffer paramStringBuffer)
  {
    int i = paramStringBuffer.length();
    StringBuffer localStringBuffer = new StringBuffer(i);
    int j = 0;
    if (j < i)
    {
      char c1 = paramStringBuffer.charAt(j);
      int m;
      char c2;
      if ((c1 >= 'a') && (c1 <= 'd'))
      {
        m = paramStringBuffer.charAt(j + 1);
        switch (c1)
        {
        default:
          c2 = '\000';
          label87: localStringBuffer.append(c2);
        case 'd':
        case 'a':
        case 'b':
        case 'c':
        }
      }
      for (int k = j + 1; ; k = j)
      {
        j = k + 1;
        break;
        if ((m >= 65) && (m <= 90))
        {
          c2 = (char)(m + 32);
          break label87;
        }
        throw FormatException.getFormatInstance();
        if ((m >= 65) && (m <= 90))
        {
          c2 = (char)(m - 64);
          break label87;
        }
        throw FormatException.getFormatInstance();
        if ((m >= 65) && (m <= 69))
        {
          c2 = (char)(m - 38);
          break label87;
        }
        if ((m >= 70) && (m <= 87))
        {
          c2 = (char)(m - 11);
          break label87;
        }
        throw FormatException.getFormatInstance();
        if ((m >= 65) && (m <= 79))
        {
          c2 = (char)(m - 32);
          break label87;
        }
        if (m == 90)
        {
          c2 = ':';
          break label87;
        }
        throw FormatException.getFormatInstance();
        localStringBuffer.append(c1);
      }
    }
    return localStringBuffer.toString();
  }

  private static void a(StringBuffer paramStringBuffer, int paramInt1, int paramInt2)
  {
    int i = paramInt1 - 1;
    int j = 1;
    int k = i;
    int n;
    for (int m = 0; k >= 0; m = n)
    {
      n = m + j * "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*".indexOf(paramStringBuffer.charAt(k));
      int i1 = j + 1;
      if (i1 > paramInt2)
        i1 = 1;
      k--;
      j = i1;
    }
    if (paramStringBuffer.charAt(paramInt1) != a[(m % 47)])
      throw ChecksumException.getChecksumInstance();
  }

  public final Result decodeRow(int paramInt, BitArray paramBitArray, Hashtable paramHashtable)
  {
    int i = paramBitArray.getSize();
    for (int j = 0; (j < i) && (!paramBitArray.get(j)); j++);
    int k = 0;
    int[] arrayOfInt1 = new int[6];
    int m = 0;
    int n = arrayOfInt1.length;
    int i1 = j;
    int[] arrayOfInt2;
    int i2;
    int i3;
    if (i1 < i)
    {
      if ((m ^ paramBitArray.get(i1)) != 0)
        arrayOfInt1[k] = (1 + arrayOfInt1[k]);
      while (true)
      {
        i1++;
        break;
        if (k == n - 1)
        {
          if (a(arrayOfInt1) == c)
          {
            arrayOfInt2 = new int[] { j, i1 };
            i2 = arrayOfInt2[1];
            i3 = paramBitArray.getSize();
            while ((i2 < i3) && (!paramBitArray.get(i2)))
              i2++;
          }
          j += arrayOfInt1[0] + arrayOfInt1[1];
          for (int i9 = 2; i9 < n; i9++)
            arrayOfInt1[(i9 - 2)] = arrayOfInt1[i9];
          arrayOfInt1[(n - 2)] = 0;
          arrayOfInt1[(n - 1)] = 0;
          k--;
        }
        while (true)
        {
          arrayOfInt1[k] = 1;
          if (m != 0)
            break label242;
          m = 1;
          break;
          k++;
        }
        label242: m = 0;
      }
    }
    throw NotFoundException.getNotFoundInstance();
    StringBuffer localStringBuffer = new StringBuffer(20);
    int[] arrayOfInt3 = new int[6];
    recordPattern(paramBitArray, i2, arrayOfInt3);
    int i4 = a(arrayOfInt3);
    if (i4 < 0)
      throw NotFoundException.getNotFoundInstance();
    char c1 = a(i4);
    localStringBuffer.append(c1);
    int i5 = 0;
    int i6 = i2;
    while (i5 < arrayOfInt3.length)
    {
      i6 += arrayOfInt3[i5];
      i5++;
    }
    while (true)
    {
      int i7;
      if ((i7 < i3) && (!paramBitArray.get(i7)))
      {
        i7++;
      }
      else
      {
        if (c1 == '*')
        {
          localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
          if ((i7 == i3) || (!paramBitArray.get(i7)))
            throw NotFoundException.getNotFoundInstance();
          if (localStringBuffer.length() < 2)
            throw NotFoundException.getNotFoundInstance();
          int i8 = localStringBuffer.length();
          a(localStringBuffer, i8 - 2, 20);
          a(localStringBuffer, i8 - 1, 15);
          localStringBuffer.setLength(-2 + localStringBuffer.length());
          String str = a(localStringBuffer);
          float f1 = (arrayOfInt2[1] + arrayOfInt2[0]) / 2.0F;
          float f2 = (i2 + i7) / 2.0F;
          ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
          arrayOfResultPoint[0] = new ResultPoint(f1, paramInt);
          arrayOfResultPoint[1] = new ResultPoint(f2, paramInt);
          return new Result(str, null, arrayOfResultPoint, BarcodeFormat.CODE_93);
        }
        i2 = i7;
        break;
        i7 = i6;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.Code93Reader
 * JD-Core Version:    0.6.2
 */