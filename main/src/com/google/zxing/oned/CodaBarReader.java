package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;

public final class CodaBarReader extends OneDReader
{
  private static final char[] a = "0123456789-$:/.+ABCDTN".toCharArray();
  private static final int[] b = { 3, 6, 9, 96, 18, 66, 33, 36, 48, 72, 12, 24, 69, 81, 84, 21, 26, 41, 11, 14, 26, 41 };
  private static final char[] c = { 69, 42, 65, 66, 67, 68, 84, 78 };

  private static char a(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    int j = 2147483647;
    int k = 0;
    int m = 0;
    while (k < i)
    {
      if (paramArrayOfInt[k] < j)
        j = paramArrayOfInt[k];
      if (paramArrayOfInt[k] > m)
        m = paramArrayOfInt[k];
      k++;
    }
    do
    {
      int n = 0;
      int i1 = 0;
      int i2 = 0;
      while (n < i)
      {
        if (paramArrayOfInt[n] > m)
        {
          i1 |= 1 << i - 1 - n;
          i2++;
        }
        n++;
      }
      if ((i2 == 2) || (i2 == 3))
        for (int i3 = 0; i3 < b.length; i3++)
          if (b[i3] == i1)
            return a[i3];
      m--;
    }
    while (m > j);
    return '!';
  }

  private static boolean a(char[] paramArrayOfChar, char paramChar)
  {
    boolean bool = false;
    if (paramArrayOfChar != null);
    for (int i = 0; ; i++)
    {
      int j = paramArrayOfChar.length;
      bool = false;
      if (i < j)
      {
        if (paramArrayOfChar[i] == paramChar)
          bool = true;
      }
      else
        return bool;
    }
  }

  private static int[] a(BitArray paramBitArray)
  {
    int i = paramBitArray.getSize();
    for (int j = 0; (j < i) && (!paramBitArray.get(j)); j++);
    int[] arrayOfInt1 = new int[7];
    int k = arrayOfInt1.length;
    int m = 0;
    int n = 0;
    int i1 = j;
    while (i1 < i)
    {
      int i4;
      int i5;
      int i6;
      if ((m ^ paramBitArray.get(i1)) != 0)
      {
        arrayOfInt1[n] = (1 + arrayOfInt1[n]);
        int i9 = m;
        i4 = n;
        i5 = j;
        i6 = i9;
        i1++;
        int i7 = i5;
        n = i4;
        m = i6;
        j = i7;
      }
      else
      {
        int i2;
        if (n == k - 1)
          try
          {
            if ((a(c, a(arrayOfInt1))) && (paramBitArray.isRange(Math.max(0, j - (i1 - j) / 2), j, false)))
            {
              int[] arrayOfInt2 = { j, i1 };
              return arrayOfInt2;
            }
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            j += arrayOfInt1[0] + arrayOfInt1[1];
            for (int i8 = 2; i8 < k; i8++)
              arrayOfInt1[(i8 - 2)] = arrayOfInt1[i8];
            arrayOfInt1[(k - 2)] = 0;
            arrayOfInt1[(k - 1)] = 0;
            i2 = n - 1;
          }
        while (true)
        {
          arrayOfInt1[i2] = 1;
          int i3 = m ^ 0x1;
          i4 = i2;
          i5 = j;
          i6 = i3;
          break;
          i2 = n + 1;
        }
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }

  public final Result decodeRow(int paramInt, BitArray paramBitArray, Hashtable paramHashtable)
  {
    int[] arrayOfInt1 = a(paramBitArray);
    arrayOfInt1[1] = 0;
    int i = arrayOfInt1[1];
    int j = paramBitArray.getSize();
    while ((i < j) && (!paramBitArray.get(i)))
      i++;
    StringBuffer localStringBuffer = new StringBuffer();
    int[] arrayOfInt2 = { 0, 0, 0, 0, 0, 0, 0 };
    recordPattern(paramBitArray, i, arrayOfInt2);
    char c1 = a(arrayOfInt2);
    if (c1 == '!')
      throw NotFoundException.getNotFoundInstance();
    localStringBuffer.append(c1);
    int k = 0;
    int m = i;
    while (k < arrayOfInt2.length)
    {
      m += arrayOfInt2[k];
      k++;
    }
    while (true)
    {
      int n;
      if ((n < j) && (!paramBitArray.get(n)))
      {
        n++;
      }
      else
      {
        if (n >= j)
        {
          int i1 = 0;
          for (int i2 = 0; i2 < arrayOfInt2.length; i2++)
            i1 += arrayOfInt2[i2];
          int i3 = n - i - i1;
          if ((n != j) && (i3 / 2 < i1))
            throw NotFoundException.getNotFoundInstance();
          if (localStringBuffer.length() < 2)
            throw NotFoundException.getNotFoundInstance();
          char c2 = localStringBuffer.charAt(0);
          if (!a(c, c2))
            throw NotFoundException.getNotFoundInstance();
          for (int i4 = 1; i4 < localStringBuffer.length(); i4++)
            if ((localStringBuffer.charAt(i4) == c2) && (i4 + 1 != localStringBuffer.length()))
            {
              localStringBuffer.delete(i4 + 1, -1 + localStringBuffer.length());
              i4 = localStringBuffer.length();
            }
          if (localStringBuffer.length() > 6)
          {
            localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
            localStringBuffer.deleteCharAt(0);
            float f1 = (arrayOfInt1[1] + arrayOfInt1[0]) / 2.0F;
            float f2 = (i + n) / 2.0F;
            String str = localStringBuffer.toString();
            ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
            arrayOfResultPoint[0] = new ResultPoint(f1, paramInt);
            arrayOfResultPoint[1] = new ResultPoint(f2, paramInt);
            return new Result(str, null, arrayOfResultPoint, BarcodeFormat.CODABAR);
          }
          throw NotFoundException.getNotFoundInstance();
        }
        i = n;
        break;
        n = m;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.CodaBarReader
 * JD-Core Version:    0.6.2
 */