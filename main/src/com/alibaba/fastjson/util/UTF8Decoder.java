package com.alibaba.fastjson.util;

import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

public class UTF8Decoder extends CharsetDecoder
{
  private static final Charset charset = Charset.forName("UTF-8");

  public UTF8Decoder()
  {
    super(charset, 1.0F, 1.0F);
  }

  private CoderResult decodeArrayLoop(ByteBuffer paramByteBuffer, CharBuffer paramCharBuffer)
  {
    byte[] arrayOfByte = paramByteBuffer.array();
    int i = paramByteBuffer.arrayOffset() + paramByteBuffer.position();
    int j = paramByteBuffer.arrayOffset() + paramByteBuffer.limit();
    char[] arrayOfChar = paramCharBuffer.array();
    int k = paramCharBuffer.arrayOffset() + paramCharBuffer.position();
    int m = paramCharBuffer.arrayOffset() + paramCharBuffer.limit();
    int n = k + Math.min(j - i, m - k);
    int i1;
    while ((k < n) && (arrayOfByte[i] >= 0))
    {
      int i13 = k + 1;
      int i14 = i + 1;
      arrayOfChar[k] = ((char)arrayOfByte[i]);
      k = i13;
      i = i14;
      continue;
      int i12 = k + 1;
      arrayOfChar[k] = ((char)i1);
      i++;
      k = i12;
    }
    while (true)
      if (i < j)
      {
        i1 = arrayOfByte[i];
        if (i1 >= 0)
        {
          if (k < m)
            break;
          return xflow(paramByteBuffer, i, j, paramCharBuffer, k, 1);
        }
        if (i1 >> 5 == -2)
        {
          if ((j - i < 2) || (k >= m))
            return xflow(paramByteBuffer, i, j, paramCharBuffer, k, 2);
          int i10 = arrayOfByte[(i + 1)];
          if (isMalformed2(i1, i10))
            return malformed(paramByteBuffer, i, paramCharBuffer, k, 2);
          int i11 = k + 1;
          arrayOfChar[k] = ((char)(0xF80 ^ (i10 ^ i1 << 6)));
          i += 2;
          k = i11;
        }
        else if (i1 >> 4 == -2)
        {
          if ((j - i < 3) || (k >= m))
            return xflow(paramByteBuffer, i, j, paramCharBuffer, k, 3);
          int i7 = arrayOfByte[(i + 1)];
          int i8 = arrayOfByte[(i + 2)];
          if (isMalformed3(i1, i7, i8))
            return malformed(paramByteBuffer, i, paramCharBuffer, k, 3);
          int i9 = k + 1;
          arrayOfChar[k] = ((char)(0x1F80 ^ (i8 ^ (i1 << 12 ^ i7 << 6))));
          i += 3;
          k = i9;
        }
        else if (i1 >> 3 == -2)
        {
          if ((j - i < 4) || (m - k < 2))
            return xflow(paramByteBuffer, i, j, paramCharBuffer, k, 4);
          int i2 = arrayOfByte[(i + 1)];
          int i3 = arrayOfByte[(i + 2)];
          int i4 = arrayOfByte[(i + 3)];
          int i5 = (i1 & 0x7) << 18 | (i2 & 0x3F) << 12 | (i3 & 0x3F) << 6 | i4 & 0x3F;
          if ((isMalformed4(i2, i3, i4)) || (!UTF8Decoder.Surrogate.neededFor(i5)))
            return malformed(paramByteBuffer, i, paramCharBuffer, k, 4);
          int i6 = k + 1;
          arrayOfChar[k] = UTF8Decoder.Surrogate.high(i5);
          k = i6 + 1;
          arrayOfChar[i6] = UTF8Decoder.Surrogate.low(i5);
          i += 4;
        }
        else
        {
          return malformed(paramByteBuffer, i, paramCharBuffer, k, 1);
        }
      }
    return xflow(paramByteBuffer, i, j, paramCharBuffer, k, 0);
  }

  private static final boolean isMalformed2(int paramInt1, int paramInt2)
  {
    return ((paramInt1 & 0x1E) == 0) || ((paramInt2 & 0xC0) != 128);
  }

  private static boolean isMalformed3(int paramInt1, int paramInt2, int paramInt3)
  {
    return ((paramInt1 == -32) && ((paramInt2 & 0xE0) == 128)) || ((paramInt2 & 0xC0) != 128) || ((paramInt3 & 0xC0) != 128);
  }

  private static final boolean isMalformed4(int paramInt1, int paramInt2, int paramInt3)
  {
    return ((paramInt1 & 0xC0) != 128) || ((paramInt2 & 0xC0) != 128) || ((paramInt3 & 0xC0) != 128);
  }

  private static boolean isNotContinuation(int paramInt)
  {
    return (paramInt & 0xC0) != 128;
  }

  private static CoderResult lookupN(ByteBuffer paramByteBuffer, int paramInt)
  {
    for (int i = 1; i < paramInt; i++)
      if (isNotContinuation(paramByteBuffer.get()))
        return CoderResult.malformedForLength(i);
    return CoderResult.malformedForLength(paramInt);
  }

  private static CoderResult malformed(ByteBuffer paramByteBuffer, int paramInt1, CharBuffer paramCharBuffer, int paramInt2, int paramInt3)
  {
    paramByteBuffer.position(paramInt1 - paramByteBuffer.arrayOffset());
    CoderResult localCoderResult = malformedN(paramByteBuffer, paramInt3);
    updatePositions(paramByteBuffer, paramInt1, paramCharBuffer, paramInt2);
    return localCoderResult;
  }

  public static CoderResult malformedN(ByteBuffer paramByteBuffer, int paramInt)
  {
    int i = 2;
    switch (paramInt)
    {
    default:
      throw new IllegalStateException();
    case 1:
      int i1 = paramByteBuffer.get();
      if (i1 >> 2 == -2)
      {
        if (paramByteBuffer.remaining() < 4)
          return CoderResult.UNDERFLOW;
        return lookupN(paramByteBuffer, 5);
      }
      if (i1 >> 1 == -2)
      {
        if (paramByteBuffer.remaining() < 5)
          return CoderResult.UNDERFLOW;
        return lookupN(paramByteBuffer, 6);
      }
      return CoderResult.malformedForLength(1);
    case 2:
      return CoderResult.malformedForLength(1);
    case 3:
      int m = paramByteBuffer.get();
      int n = paramByteBuffer.get();
      if (((m == -32) && ((n & 0xE0) == 128)) || (isNotContinuation(n)))
        i = 1;
      return CoderResult.malformedForLength(i);
    case 4:
    }
    int j = 0xFF & paramByteBuffer.get();
    int k = 0xFF & paramByteBuffer.get();
    if ((j > 244) || ((j == 240) && ((k < 144) || (k > 191))) || ((j == 244) && ((k & 0xF0) != 128)) || (isNotContinuation(k)))
      return CoderResult.malformedForLength(1);
    if (isNotContinuation(paramByteBuffer.get()))
      return CoderResult.malformedForLength(i);
    return CoderResult.malformedForLength(3);
  }

  static final void updatePositions(Buffer paramBuffer1, int paramInt1, Buffer paramBuffer2, int paramInt2)
  {
    paramBuffer1.position(paramInt1);
    paramBuffer2.position(paramInt2);
  }

  private static CoderResult xflow(Buffer paramBuffer1, int paramInt1, int paramInt2, Buffer paramBuffer2, int paramInt3, int paramInt4)
  {
    updatePositions(paramBuffer1, paramInt1, paramBuffer2, paramInt3);
    if ((paramInt4 == 0) || (paramInt2 - paramInt1 < paramInt4))
      return CoderResult.UNDERFLOW;
    return CoderResult.OVERFLOW;
  }

  protected CoderResult decodeLoop(ByteBuffer paramByteBuffer, CharBuffer paramCharBuffer)
  {
    return decodeArrayLoop(paramByteBuffer, paramCharBuffer);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.util.UTF8Decoder
 * JD-Core Version:    0.6.2
 */