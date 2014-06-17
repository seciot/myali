package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;

public final class Code39Reader extends OneDReader
{
  static final String ALPHABET_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%";
  static final int[] CHARACTER_ENCODINGS = arrayOfInt;
  private static final char[] a = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".toCharArray();
  private static final int b = arrayOfInt[39];
  private final boolean c;
  private final boolean d;

  static
  {
    int[] arrayOfInt = { 52, 289, 97, 352, 49, 304, 112, 37, 292, 100, 265, 73, 328, 25, 280, 88, 13, 268, 76, 28, 259, 67, 322, 19, 274, 82, 7, 262, 70, 22, 385, 193, 448, 145, 400, 208, 133, 388, 196, 148, 168, 162, 138, 42 };
  }

  public Code39Reader()
  {
    this.c = false;
    this.d = false;
  }

  public Code39Reader(boolean paramBoolean)
  {
    this.c = paramBoolean;
    this.d = false;
  }

  public Code39Reader(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.c = paramBoolean1;
    this.d = paramBoolean2;
  }

  private static char a(int paramInt)
  {
    for (int i = 0; i < CHARACTER_ENCODINGS.length; i++)
      if (CHARACTER_ENCODINGS[i] == paramInt)
        return a[i];
    throw NotFoundException.getNotFoundInstance();
  }

  private static int a(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    int k;
    for (int j = 0; ; j = k)
    {
      k = 2147483647;
      for (int m = 0; m < i; m++)
      {
        int i8 = paramArrayOfInt[m];
        if ((i8 < k) && (i8 > j))
          k = i8;
      }
      int n = 0;
      int i1 = 0;
      int i2 = 0;
      int i3 = 0;
      while (n < i)
      {
        int i7 = paramArrayOfInt[n];
        if (paramArrayOfInt[n] > k)
        {
          i1 |= 1 << i - 1 - n;
          i3++;
          i2 += i7;
        }
        n++;
      }
      if (i3 == 3)
      {
        int i4 = i3;
        for (int i5 = 0; ; i5++)
          if ((i5 < i) && (i4 > 0))
          {
            int i6 = paramArrayOfInt[i5];
            if (paramArrayOfInt[i5] > k)
            {
              i4--;
              if (i6 << 1 >= i2)
                i1 = -1;
            }
          }
          else
          {
            return i1;
          }
      }
      if (i3 <= 3)
        return -1;
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
      int k;
      char c2;
      if ((c1 == '+') || (c1 == '$') || (c1 == '%') || (c1 == '/'))
      {
        k = paramStringBuffer.charAt(j + 1);
        switch (c1)
        {
        default:
          c2 = '\000';
          label111: localStringBuffer.append(c2);
        case '+':
        case '$':
        case '%':
        case '/':
        }
      }
      for (int m = j + 1; ; m = j)
      {
        j = m + 1;
        break;
        if ((k >= 65) && (k <= 90))
        {
          c2 = (char)(k + 32);
          break label111;
        }
        throw FormatException.getFormatInstance();
        if ((k >= 65) && (k <= 90))
        {
          c2 = (char)(k - 64);
          break label111;
        }
        throw FormatException.getFormatInstance();
        if ((k >= 65) && (k <= 69))
        {
          c2 = (char)(k - 38);
          break label111;
        }
        if ((k >= 70) && (k <= 87))
        {
          c2 = (char)(k - 11);
          break label111;
        }
        throw FormatException.getFormatInstance();
        if ((k >= 65) && (k <= 79))
        {
          c2 = (char)(k - 32);
          break label111;
        }
        if (k == 90)
        {
          c2 = ':';
          break label111;
        }
        throw FormatException.getFormatInstance();
        localStringBuffer.append(c1);
      }
    }
    return localStringBuffer.toString();
  }

  public final Result decodeRow(int paramInt, BitArray paramBitArray, Hashtable paramHashtable)
  {
    int i = paramBitArray.getSize();
    for (int j = 0; (j < i) && (!paramBitArray.get(j)); j++);
    int k = 0;
    int[] arrayOfInt1 = new int[9];
    int m = 0;
    int n = arrayOfInt1.length;
    int i1 = j;
    int[] arrayOfInt2;
    int i3;
    int i4;
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
          if ((a(arrayOfInt1) == b) && (paramBitArray.isRange(Math.max(0, j - (i1 - j) / 2), j, false)))
          {
            arrayOfInt2 = new int[] { j, i1 };
            i3 = arrayOfInt2[1];
            i4 = paramBitArray.getSize();
            while ((i3 < i4) && (!paramBitArray.get(i3)))
              i3++;
          }
          j += arrayOfInt1[0] + arrayOfInt1[1];
          for (int i2 = 2; i2 < n; i2++)
            arrayOfInt1[(i2 - 2)] = arrayOfInt1[i2];
          arrayOfInt1[(n - 2)] = 0;
          arrayOfInt1[(n - 1)] = 0;
          k--;
        }
        while (true)
        {
          arrayOfInt1[k] = 1;
          if (m != 0)
            break label266;
          m = 1;
          break;
          k++;
        }
        label266: m = 0;
      }
    }
    throw NotFoundException.getNotFoundInstance();
    StringBuffer localStringBuffer = new StringBuffer(20);
    int[] arrayOfInt3 = new int[9];
    recordPattern(paramBitArray, i3, arrayOfInt3);
    int i5 = a(arrayOfInt3);
    if (i5 < 0)
      throw NotFoundException.getNotFoundInstance();
    char c1 = a(i5);
    localStringBuffer.append(c1);
    int i6 = 0;
    int i7 = i3;
    while (i6 < arrayOfInt3.length)
    {
      i7 += arrayOfInt3[i6];
      i6++;
    }
    while (true)
    {
      int i8;
      if ((i8 < i4) && (!paramBitArray.get(i8)))
      {
        i8++;
      }
      else
      {
        if (c1 == '*')
        {
          localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
          int i9 = 0;
          for (int i10 = 0; i10 < arrayOfInt3.length; i10++)
            i9 += arrayOfInt3[i10];
          int i11 = i8 - i3 - i9;
          if ((i8 != i4) && (i11 / 2 < i9))
            throw NotFoundException.getNotFoundInstance();
          if (this.c)
          {
            int i12 = -1 + localStringBuffer.length();
            int i13 = 0;
            for (int i14 = 0; i14 < i12; i14++)
              i13 += "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%".indexOf(localStringBuffer.charAt(i14));
            if (localStringBuffer.charAt(i12) != a[(i13 % 43)])
              throw ChecksumException.getChecksumInstance();
            localStringBuffer.deleteCharAt(i12);
          }
          if (localStringBuffer.length() == 0)
            throw NotFoundException.getNotFoundInstance();
          if (this.d);
          for (String str = a(localStringBuffer); ; str = localStringBuffer.toString())
          {
            float f1 = (arrayOfInt2[1] + arrayOfInt2[0]) / 2.0F;
            float f2 = (i3 + i8) / 2.0F;
            ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
            arrayOfResultPoint[0] = new ResultPoint(f1, paramInt);
            arrayOfResultPoint[1] = new ResultPoint(f2, paramInt);
            return new Result(str, null, arrayOfResultPoint, BarcodeFormat.CODE_39);
          }
        }
        i3 = i8;
        break;
        i8 = i7;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.Code39Reader
 * JD-Core Version:    0.6.2
 */