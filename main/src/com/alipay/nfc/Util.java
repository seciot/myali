package com.alipay.nfc;

import java.util.Arrays;

public final class Util
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };

  public static int a(byte[] paramArrayOfByte)
  {
    int i = 0;
    int j = paramArrayOfByte.length;
    int k = 0;
    while (i < j)
    {
      int m = paramArrayOfByte[i];
      k = k << 8 | m & 0xFF;
      i++;
    }
    return k;
  }

  public static int a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    int j = 19;
    while ((j >= 0) && (paramInt > 0))
    {
      i = i << 8 | 0xFF & paramArrayOfByte[j];
      j--;
      paramInt--;
    }
    return i;
  }

  public static int a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    int i = 0;
    int j = paramInt1 + paramInt2;
    while (paramInt1 < j)
    {
      i = i << 8 | 0xFF & paramArrayOfByte[paramInt1];
      paramInt1++;
    }
    return i;
  }

  public static String a(float paramFloat)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Float.valueOf(paramFloat);
    return String.format("%.2f", arrayOfObject);
  }

  public static String b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
      return b(paramArrayOfByte, 0, paramArrayOfByte.length);
    return "";
  }

  public static String b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = new char[paramInt2 * 2];
    int i = paramInt1 + paramInt2;
    int j = 0;
    while (paramInt1 < i)
    {
      int k = paramArrayOfByte[paramInt1];
      int m = j + 1;
      arrayOfChar[j] = a[(0xF & k >> 4)];
      j = m + 1;
      arrayOfChar[m] = a[(k & 0xF)];
      paramInt1++;
    }
    return new String(arrayOfChar);
  }

  public static String c(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramArrayOfByte != null)
      return b(paramArrayOfByte, paramInt1, paramInt2);
    return "";
  }

  public static byte[] c(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return null;
    int i = 0;
    int j = paramArrayOfByte.length;
    while ((i < paramArrayOfByte.length) && ((paramArrayOfByte[i] == 0) || (paramArrayOfByte[i] == 32)))
      i++;
    while ((j > 0) && ((paramArrayOfByte[(j - 1)] == 0) || (paramArrayOfByte[(j - 1)] == 32)))
      j--;
    if (i >= j)
      return null;
    return Arrays.copyOfRange(paramArrayOfByte, i, j);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.Util
 * JD-Core Version:    0.6.2
 */