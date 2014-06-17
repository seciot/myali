package com.alibaba.fastjson.util;

import com.alibaba.fastjson.JSONException;
import java.io.Closeable;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

public class IOUtils
{
  static final char[] DigitOnes = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57 };
  static final char[] DigitTens;
  static final char[] digits = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122 };
  static final int[] sizeTable = { 9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, 2147483647 };

  static
  {
    DigitTens = new char[] { 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 56, 56, 56, 56, 56, 56, 56, 56, 56, 56, 57, 57, 57, 57, 57, 57, 57, 57, 57, 57 };
  }

  public static void close(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public static void decode(CharsetDecoder paramCharsetDecoder, ByteBuffer paramByteBuffer, CharBuffer paramCharBuffer)
  {
    try
    {
      CoderResult localCoderResult1 = paramCharsetDecoder.decode(paramByteBuffer, paramCharBuffer, true);
      if (!localCoderResult1.isUnderflow())
        localCoderResult1.throwException();
      CoderResult localCoderResult2 = paramCharsetDecoder.flush(paramCharBuffer);
      if (!localCoderResult2.isUnderflow())
        localCoderResult2.throwException();
      return;
    }
    catch (CharacterCodingException localCharacterCodingException)
    {
      throw new JSONException(localCharacterCodingException.getMessage(), localCharacterCodingException);
    }
  }

  public static void getChars(byte paramByte, int paramInt, char[] paramArrayOfChar)
  {
    int i = 0;
    if (paramByte < 0)
      i = 45;
    byte b;
    for (paramByte = -paramByte; ; paramByte = b)
    {
      b = 52429 * paramByte >>> 19;
      int j = paramByte - ((b << 3) + (b << 1));
      paramInt--;
      paramArrayOfChar[paramInt] = digits[j];
      if (b == 0)
      {
        if (i != 0)
          paramArrayOfChar[(paramInt - 1)] = i;
        return;
      }
    }
  }

  public static void getChars(int paramInt1, int paramInt2, char[] paramArrayOfChar)
  {
    int i;
    int k;
    int j;
    if (paramInt1 < 0)
    {
      i = -paramInt1;
      k = 45;
      j = paramInt2;
    }
    while (true)
      if (i >= 65536)
      {
        int i1 = i / 100;
        int i2 = i - ((i1 << 6) + (i1 << 5) + (i1 << 2));
        int i3 = j - 1;
        paramArrayOfChar[i3] = DigitOnes[i2];
        int i4 = i3 - 1;
        paramArrayOfChar[i4] = DigitTens[i2];
        j = i4;
        i = i1;
      }
      else
      {
        int m;
        do
        {
          i = m;
          m = 52429 * i >>> 19;
          int n = i - ((m << 3) + (m << 1));
          j--;
          paramArrayOfChar[j] = digits[n];
        }
        while (m != 0);
        if (k != 0)
          paramArrayOfChar[(j - 1)] = k;
        return;
        i = paramInt1;
        j = paramInt2;
        k = 0;
      }
  }

  public static void getChars(long paramLong, int paramInt, char[] paramArrayOfChar)
  {
    int j;
    int i;
    if (paramLong < 0L)
    {
      paramLong = -paramLong;
      j = 45;
      i = paramInt;
    }
    while (true)
      if (paramLong > 2147483647L)
      {
        long l = paramLong / 100L;
        int i4 = (int)(paramLong - ((l << 6) + (l << 5) + (l << 2)));
        int i5 = i - 1;
        paramArrayOfChar[i5] = DigitOnes[i4];
        int i6 = i5 - 1;
        paramArrayOfChar[i6] = DigitTens[i4];
        i = i6;
        paramLong = l;
      }
      else
      {
        int i1;
        for (int k = (int)paramLong; k >= 65536; k = i1)
        {
          i1 = k / 100;
          int i2 = k - ((i1 << 6) + (i1 << 5) + (i1 << 2));
          int i3 = i - 1;
          paramArrayOfChar[i3] = DigitOnes[i2];
          i = i3 - 1;
          paramArrayOfChar[i] = DigitTens[i2];
        }
        int m;
        do
        {
          k = m;
          m = 52429 * k >>> 19;
          int n = k - ((m << 3) + (m << 1));
          i--;
          paramArrayOfChar[i] = digits[n];
        }
        while (m != 0);
        if (j != 0)
          paramArrayOfChar[(i - 1)] = j;
        return;
        i = paramInt;
        j = 0;
      }
  }

  static int stringSize(int paramInt)
  {
    for (int i = 0; ; i++)
      if (paramInt <= sizeTable[i])
        return i + 1;
  }

  public static int stringSize(long paramLong)
  {
    int i = 1;
    long l = 10L;
    while (i < 19)
    {
      if (paramLong < l)
        return i;
      l *= 10L;
      i++;
    }
    return 19;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.IOUtils
 * JD-Core Version:    0.6.2
 */