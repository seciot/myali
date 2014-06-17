package com.alipay.mobile.common.transport.spdy.internal;

import java.io.UnsupportedEncodingException;

public final class Base64
{
  private static final byte[] a = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };

  public static byte[] decode(byte[] paramArrayOfByte)
  {
    return decode(paramArrayOfByte, paramArrayOfByte.length);
  }

  public static byte[] decode(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 3 * (paramInt / 4);
    if (i == 0)
      return Util.EMPTY_BYTE_ARRAY;
    byte[] arrayOfByte1 = new byte[i];
    int j = 0;
    while (true)
    {
      int k = paramArrayOfByte[(paramInt - 1)];
      if ((k != 10) && (k != 13) && (k != 32) && (k != 9))
      {
        if (k != 61)
          break;
        j++;
      }
      paramInt--;
    }
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i5;
    int i9;
    label145: int i11;
    label209: int i8;
    int i7;
    int i6;
    if (m < paramInt)
    {
      i5 = paramArrayOfByte[m];
      if ((i5 == 10) || (i5 == 13) || (i5 == 32) || (i5 == 9))
        break label404;
      if ((i5 >= 65) && (i5 <= 90))
      {
        i9 = i5 - 65;
        int i10 = n << 6 | (byte)i9;
        if (i1 % 4 != 3)
          break label397;
        int i12 = i2 + 1;
        arrayOfByte1[i2] = ((byte)(i10 >> 16));
        int i13 = i12 + 1;
        arrayOfByte1[i12] = ((byte)(i10 >> 8));
        i11 = i13 + 1;
        arrayOfByte1[i13] = ((byte)i10);
        i8 = i1 + 1;
        i7 = i11;
        i6 = i10;
      }
    }
    while (true)
    {
      m++;
      i1 = i8;
      i2 = i7;
      n = i6;
      break;
      if ((i5 >= 97) && (i5 <= 122))
      {
        i9 = i5 - 71;
        break label145;
      }
      if ((i5 >= 48) && (i5 <= 57))
      {
        i9 = i5 + 4;
        break label145;
      }
      if (i5 == 43)
      {
        i9 = 62;
        break label145;
      }
      if (i5 == 47)
      {
        i9 = 63;
        break label145;
      }
      return null;
      int i4;
      if (j > 0)
      {
        int i3 = n << j * 6;
        i4 = i2 + 1;
        arrayOfByte1[i2] = ((byte)(i3 >> 16));
        if (j != 1)
          break label390;
        i2 = i4 + 1;
        arrayOfByte1[i4] = ((byte)(i3 >> 8));
      }
      while (true)
      {
        byte[] arrayOfByte2 = new byte[i2];
        System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i2);
        return arrayOfByte2;
        label390: i2 = i4;
      }
      label397: i11 = i2;
      break label209;
      label404: i6 = n;
      i7 = i2;
      i8 = i1;
    }
  }

  public static String encode(byte[] paramArrayOfByte)
  {
    int i = 0;
    byte[] arrayOfByte = new byte[4 * (2 + paramArrayOfByte.length) / 3];
    int j = paramArrayOfByte.length - paramArrayOfByte.length % 3;
    int k = 0;
    while (k < j)
    {
      int i5 = i + 1;
      arrayOfByte[i] = a[((0xFF & paramArrayOfByte[k]) >> 2)];
      int i6 = i5 + 1;
      arrayOfByte[i5] = a[((0x3 & paramArrayOfByte[k]) << 4 | (0xFF & paramArrayOfByte[(k + 1)]) >> 4)];
      int i7 = i6 + 1;
      arrayOfByte[i6] = a[((0xF & paramArrayOfByte[(k + 1)]) << 2 | (0xFF & paramArrayOfByte[(k + 2)]) >> 6)];
      int i8 = i7 + 1;
      arrayOfByte[i7] = a[(0x3F & paramArrayOfByte[(k + 2)])];
      k += 3;
      i = i8;
    }
    switch (paramArrayOfByte.length % 3)
    {
    default:
    case 1:
    case 2:
    }
    try
    {
      while (true)
      {
        String str = new String(arrayOfByte, 0, i, "US-ASCII");
        return str;
        int i2 = i + 1;
        arrayOfByte[i] = a[((0xFF & paramArrayOfByte[j]) >> 2)];
        int i3 = i2 + 1;
        arrayOfByte[i2] = a[((0x3 & paramArrayOfByte[j]) << 4)];
        int i4 = i3 + 1;
        arrayOfByte[i3] = 61;
        i = i4 + 1;
        arrayOfByte[i4] = 61;
        continue;
        int m = i + 1;
        arrayOfByte[i] = a[((0xFF & paramArrayOfByte[j]) >> 2)];
        int n = m + 1;
        arrayOfByte[m] = a[((0x3 & paramArrayOfByte[j]) << 4 | (0xFF & paramArrayOfByte[(j + 1)]) >> 4)];
        int i1 = n + 1;
        arrayOfByte[n] = a[((0xF & paramArrayOfByte[(j + 1)]) << 2)];
        i = i1 + 1;
        arrayOfByte[i1] = 61;
      }
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.Base64
 * JD-Core Version:    0.6.2
 */