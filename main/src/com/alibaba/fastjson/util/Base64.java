package com.alibaba.fastjson.util;

import java.util.Arrays;

public class Base64
{
  public static final char[] CA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
  public static final int[] IA;

  static
  {
    int[] arrayOfInt = new int[256];
    IA = arrayOfInt;
    Arrays.fill(arrayOfInt, -1);
    int i = CA.length;
    for (int j = 0; j < i; j++)
      IA[CA[j]] = j;
    IA[61] = 0;
  }

  public static final byte[] decodeFast(String paramString)
  {
    int i = 0;
    int j = paramString.length();
    if (j == 0)
      return new byte[0];
    int k = j - 1;
    for (int m = 0; (m < k) && (IA[(0xFF & paramString.charAt(m))] < 0); m++);
    while (true)
    {
      int n;
      if ((n > 0) && (IA[(0xFF & paramString.charAt(n))] < 0))
      {
        n--;
      }
      else
      {
        int i1;
        int i2;
        int i24;
        if (paramString.charAt(n) == '=')
          if (paramString.charAt(n - 1) == '=')
          {
            i1 = 2;
            i2 = 1 + (n - m);
            if (j <= 76)
              break label383;
            if (paramString.charAt(76) != '\r')
              break label377;
            i24 = i2 / 78;
          }
        label139: int i4;
        byte[] arrayOfByte;
        int i7;
        label377: label383: for (int i3 = i24 << 1; ; i3 = 0)
        {
          i4 = (6 * (i2 - i3) >> 3) - i1;
          arrayOfByte = new byte[i4];
          int i5 = 3 * (i4 / 3);
          int i6 = 0;
          i7 = 0;
          while (i7 < i5)
          {
            int[] arrayOfInt2 = IA;
            int i15 = m + 1;
            int i16 = arrayOfInt2[paramString.charAt(m)] << 18;
            int[] arrayOfInt3 = IA;
            int i17 = i15 + 1;
            int i18 = i16 | arrayOfInt3[paramString.charAt(i15)] << 12;
            int[] arrayOfInt4 = IA;
            int i19 = i17 + 1;
            int i20 = i18 | arrayOfInt4[paramString.charAt(i17)] << 6;
            int[] arrayOfInt5 = IA;
            m = i19 + 1;
            int i21 = i20 | arrayOfInt5[paramString.charAt(i19)];
            int i22 = i7 + 1;
            arrayOfByte[i7] = ((byte)(i21 >> 16));
            int i23 = i22 + 1;
            arrayOfByte[i22] = ((byte)(i21 >> 8));
            i7 = i23 + 1;
            arrayOfByte[i23] = ((byte)i21);
            if (i3 > 0)
            {
              i6++;
              if (i6 == 19)
              {
                m += 2;
                i6 = 0;
              }
            }
          }
          i1 = 1;
          break;
          i1 = 0;
          break;
          i24 = 0;
          break label139;
        }
        if (i7 < i4)
        {
          int i8 = m;
          int i9 = 0;
          while (i8 <= n - i1)
          {
            int[] arrayOfInt1 = IA;
            int i13 = i8 + 1;
            int i14 = i9 | arrayOfInt1[paramString.charAt(i8)] << 18 - i * 6;
            i++;
            i9 = i14;
            i8 = i13;
          }
          int i10 = 16;
          int i12;
          for (int i11 = i7; i11 < i4; i11 = i12)
          {
            i12 = i11 + 1;
            arrayOfByte[i11] = ((byte)(i9 >> i10));
            i10 -= 8;
          }
        }
        return arrayOfByte;
        n = k;
      }
    }
  }

  public static final byte[] decodeFast(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (paramInt2 == 0)
      return new byte[0];
    int j = -1 + (paramInt1 + paramInt2);
    for (int k = paramInt1; (k < j) && (IA[paramArrayOfChar[k]] < 0); k++);
    while (true)
    {
      int m;
      if ((m > 0) && (IA[paramArrayOfChar[m]] < 0))
      {
        m--;
      }
      else
      {
        int n;
        int i1;
        int i23;
        if (paramArrayOfChar[m] == '=')
          if (paramArrayOfChar[(m - 1)] == '=')
          {
            n = 2;
            i1 = 1 + (m - k);
            if (paramInt2 <= 76)
              break label356;
            if (paramArrayOfChar[76] != '\r')
              break label350;
            i23 = i1 / 78;
          }
        label120: int i3;
        byte[] arrayOfByte;
        int i6;
        label350: label356: for (int i2 = i23 << 1; ; i2 = 0)
        {
          i3 = (6 * (i1 - i2) >> 3) - n;
          arrayOfByte = new byte[i3];
          int i4 = 3 * (i3 / 3);
          int i5 = 0;
          i6 = 0;
          while (i6 < i4)
          {
            int[] arrayOfInt2 = IA;
            int i14 = k + 1;
            int i15 = arrayOfInt2[paramArrayOfChar[k]] << 18;
            int[] arrayOfInt3 = IA;
            int i16 = i14 + 1;
            int i17 = i15 | arrayOfInt3[paramArrayOfChar[i14]] << 12;
            int[] arrayOfInt4 = IA;
            int i18 = i16 + 1;
            int i19 = i17 | arrayOfInt4[paramArrayOfChar[i16]] << 6;
            int[] arrayOfInt5 = IA;
            k = i18 + 1;
            int i20 = i19 | arrayOfInt5[paramArrayOfChar[i18]];
            int i21 = i6 + 1;
            arrayOfByte[i6] = ((byte)(i20 >> 16));
            int i22 = i21 + 1;
            arrayOfByte[i21] = ((byte)(i20 >> 8));
            i6 = i22 + 1;
            arrayOfByte[i22] = ((byte)i20);
            if (i2 > 0)
            {
              i5++;
              if (i5 == 19)
              {
                k += 2;
                i5 = 0;
              }
            }
          }
          n = 1;
          break;
          n = 0;
          break;
          i23 = 0;
          break label120;
        }
        if (i6 < i3)
        {
          int i7 = k;
          int i8 = 0;
          while (i7 <= m - n)
          {
            int[] arrayOfInt1 = IA;
            int i12 = i7 + 1;
            int i13 = i8 | arrayOfInt1[paramArrayOfChar[i7]] << 18 - i * 6;
            i++;
            i8 = i13;
            i7 = i12;
          }
          int i9 = 16;
          int i11;
          for (int i10 = i6; i10 < i3; i10 = i11)
          {
            i11 = i10 + 1;
            arrayOfByte[i10] = ((byte)(i8 >> i9));
            i9 -= 8;
          }
        }
        return arrayOfByte;
        m = j;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.Base64
 * JD-Core Version:    0.6.2
 */