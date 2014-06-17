package com.google.zxing.qrcode.encoder;

import com.google.zxing.WriterException;
import com.google.zxing.common.BitArray;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;

public final class MatrixUtil
{
  private static final int[][] a = { { 1, 1, 1, 1, 1, 1, 1 }, { 1, 0, 0, 0, 0, 0, 1 }, { 1, 0, 1, 1, 1, 0, 1 }, { 1, 0, 1, 1, 1, 0, 1 }, { 1, 0, 1, 1, 1, 0, 1 }, { 1, 0, 0, 0, 0, 0, 1 }, { 1, 1, 1, 1, 1, 1, 1 } };
  private static final int[][] b = { { 0, 0, 0, 0, 0, 0, 0, 0 } };
  private static final int[][] c = { { 0 }, { 0 }, { 0 }, { 0 }, { 0 }, { 0 }, { 0 } };
  private static final int[][] d = { { 1, 1, 1, 1, 1 }, { 1, 0, 0, 0, 1 }, { 1, 0, 1, 0, 1 }, { 1, 0, 0, 0, 1 }, { 1, 1, 1, 1, 1 } };
  private static final int[][] e = { { -1, -1, -1, -1, -1, -1, -1 }, { 6, 18, -1, -1, -1, -1, -1 }, { 6, 22, -1, -1, -1, -1, -1 }, { 6, 26, -1, -1, -1, -1, -1 }, { 6, 30, -1, -1, -1, -1, -1 }, { 6, 34, -1, -1, -1, -1, -1 }, { 6, 22, 38, -1, -1, -1, -1 }, { 6, 24, 42, -1, -1, -1, -1 }, { 6, 26, 46, -1, -1, -1, -1 }, { 6, 28, 50, -1, -1, -1, -1 }, { 6, 30, 54, -1, -1, -1, -1 }, { 6, 32, 58, -1, -1, -1, -1 }, { 6, 34, 62, -1, -1, -1, -1 }, { 6, 26, 46, 66, -1, -1, -1 }, { 6, 26, 48, 70, -1, -1, -1 }, { 6, 26, 50, 74, -1, -1, -1 }, { 6, 30, 54, 78, -1, -1, -1 }, { 6, 30, 56, 82, -1, -1, -1 }, { 6, 30, 58, 86, -1, -1, -1 }, { 6, 34, 62, 90, -1, -1, -1 }, { 6, 28, 50, 72, 94, -1, -1 }, { 6, 26, 50, 74, 98, -1, -1 }, { 6, 30, 54, 78, 102, -1, -1 }, { 6, 28, 54, 80, 106, -1, -1 }, { 6, 32, 58, 84, 110, -1, -1 }, { 6, 30, 58, 86, 114, -1, -1 }, { 6, 34, 62, 90, 118, -1, -1 }, { 6, 26, 50, 74, 98, 122, -1 }, { 6, 30, 54, 78, 102, 126, -1 }, { 6, 26, 52, 78, 104, 130, -1 }, { 6, 30, 56, 82, 108, 134, -1 }, { 6, 34, 60, 86, 112, 138, -1 }, { 6, 30, 58, 86, 114, 142, -1 }, { 6, 34, 62, 90, 118, 146, -1 }, { 6, 30, 54, 78, 102, 126, 150 }, { 6, 24, 50, 76, 102, 128, 154 }, { 6, 28, 54, 80, 106, 132, 158 }, { 6, 32, 58, 84, 110, 136, 162 }, { 6, 26, 54, 82, 110, 138, 166 }, { 6, 30, 58, 86, 114, 142, 170 } };
  private static final int[][] f = { { 8, 0 }, { 8, 1 }, { 8, 2 }, { 8, 3 }, { 8, 4 }, { 8, 5 }, { 8, 7 }, { 8, 8 }, { 7, 8 }, { 5, 8 }, { 4, 8 }, { 3, 8 }, { 2, 8 }, { 1, 8 }, { 0, 8 } };

  private static void a(int paramInt1, int paramInt2, ByteMatrix paramByteMatrix)
  {
    if ((b[0].length != 8) || (b.length != 1))
      throw new WriterException("Bad horizontal separation pattern");
    for (int i = 0; i < 8; i++)
    {
      if (!a(paramByteMatrix.get(paramInt1 + i, paramInt2)))
        throw new WriterException();
      paramByteMatrix.set(paramInt1 + i, paramInt2, b[0][i]);
    }
  }

  private static boolean a(int paramInt)
  {
    return paramInt == -1;
  }

  private static void b(int paramInt1, int paramInt2, ByteMatrix paramByteMatrix)
  {
    if ((c[0].length != 1) || (c.length != 7))
      throw new WriterException("Bad vertical separation pattern");
    for (int i = 0; i < 7; i++)
    {
      if (!a(paramByteMatrix.get(paramInt1, paramInt2 + i)))
        throw new WriterException();
      paramByteMatrix.set(paramInt1, paramInt2 + i, c[i][0]);
    }
  }

  private static boolean b(int paramInt)
  {
    return (paramInt == -1) || (paramInt == 0) || (paramInt == 1);
  }

  public static void buildMatrix(BitArray paramBitArray, ErrorCorrectionLevel paramErrorCorrectionLevel, int paramInt1, int paramInt2, ByteMatrix paramByteMatrix)
  {
    paramByteMatrix.clear((byte)-1);
    embedBasicPatterns(paramInt1, paramByteMatrix);
    embedTypeInfo(paramErrorCorrectionLevel, paramInt2, paramByteMatrix);
    maybeEmbedVersionInfo(paramInt1, paramByteMatrix);
    embedDataBits(paramBitArray, paramInt2, paramByteMatrix);
  }

  private static void c(int paramInt1, int paramInt2, ByteMatrix paramByteMatrix)
  {
    if ((a[0].length != 7) || (a.length != 7))
      throw new WriterException("Bad position detection pattern");
    for (int i = 0; i < 7; i++)
      for (int j = 0; j < 7; j++)
      {
        if (!a(paramByteMatrix.get(paramInt1 + j, paramInt2 + i)))
          throw new WriterException();
        paramByteMatrix.set(paramInt1 + j, paramInt2 + i, a[i][j]);
      }
  }

  public static int calculateBCHCode(int paramInt1, int paramInt2)
  {
    int i = findMSBSet(paramInt2);
    int j = paramInt1 << i - 1;
    while (findMSBSet(j) >= i)
      j ^= paramInt2 << findMSBSet(j) - i;
    return j;
  }

  public static void clearMatrix(ByteMatrix paramByteMatrix)
  {
    paramByteMatrix.clear((byte)-1);
  }

  public static void embedBasicPatterns(int paramInt, ByteMatrix paramByteMatrix)
  {
    int i = a[0].length;
    c(0, 0, paramByteMatrix);
    c(paramByteMatrix.getWidth() - i, 0, paramByteMatrix);
    c(0, paramByteMatrix.getWidth() - i, paramByteMatrix);
    int j = b[0].length;
    a(0, j - 1, paramByteMatrix);
    a(paramByteMatrix.getWidth() - j, j - 1, paramByteMatrix);
    a(0, paramByteMatrix.getWidth() - j, paramByteMatrix);
    int k = c.length;
    b(k, 0, paramByteMatrix);
    b(-1 + (paramByteMatrix.getHeight() - k), 0, paramByteMatrix);
    b(k, paramByteMatrix.getHeight() - k, paramByteMatrix);
    if (paramByteMatrix.get(8, -8 + paramByteMatrix.getHeight()) == 0)
      throw new WriterException();
    paramByteMatrix.set(8, -8 + paramByteMatrix.getHeight(), 1);
    if (paramInt >= 2)
    {
      int i1 = paramInt - 1;
      int[] arrayOfInt = e[i1];
      int i2 = e[i1].length;
      for (int i3 = 0; i3 < i2; i3++)
        for (int i4 = 0; i4 < i2; i4++)
        {
          int i5 = arrayOfInt[i3];
          int i6 = arrayOfInt[i4];
          if ((i6 != -1) && (i5 != -1) && (a(paramByteMatrix.get(i6, i5))))
          {
            int i7 = i6 - 2;
            int i8 = i5 - 2;
            if ((d[0].length != 5) || (d.length != 5))
              throw new WriterException("Bad position adjustment");
            for (int i9 = 0; i9 < 5; i9++)
              for (int i10 = 0; i10 < 5; i10++)
              {
                if (!a(paramByteMatrix.get(i7 + i10, i8 + i9)))
                  throw new WriterException();
                paramByteMatrix.set(i7 + i10, i8 + i9, d[i9][i10]);
              }
          }
        }
    }
    for (int m = 8; m < -8 + paramByteMatrix.getWidth(); m++)
    {
      int n = (m + 1) % 2;
      if (!b(paramByteMatrix.get(m, 6)))
        throw new WriterException();
      if (a(paramByteMatrix.get(m, 6)))
        paramByteMatrix.set(m, 6, n);
      if (!b(paramByteMatrix.get(6, m)))
        throw new WriterException();
      if (a(paramByteMatrix.get(6, m)))
        paramByteMatrix.set(6, m, n);
    }
  }

  public static void embedDataBits(BitArray paramBitArray, int paramInt, ByteMatrix paramByteMatrix)
  {
    int i = -1 + paramByteMatrix.getWidth();
    int j = -1 + paramByteMatrix.getHeight();
    int k = -1;
    int m = 0;
    int n;
    int i1;
    int i2;
    if (i > 0)
    {
      if (i != 6)
        break label264;
      int i7 = i - 1;
      n = j;
      i1 = i7;
      i2 = m;
    }
    while (true)
      if ((n >= 0) && (n < paramByteMatrix.getHeight()))
      {
        int i4 = 0;
        if (i4 < 2)
        {
          int i5 = i1 - i4;
          int i6;
          if (a(paramByteMatrix.get(i5, n)))
          {
            if (i2 >= paramBitArray.getSize())
              break label163;
            boolean bool2 = paramBitArray.get(i2);
            i6 = i2 + 1;
            bool1 = bool2;
            label119: if ((paramInt != -1) && (MaskUtil.getDataMaskBit(paramInt, i5, n)))
              if (bool1)
                break label173;
          }
          label163: label173: for (boolean bool1 = true; ; bool1 = false)
          {
            paramByteMatrix.set(i5, n, bool1);
            i2 = i6;
            i4++;
            break;
            i6 = i2;
            bool1 = false;
            break label119;
          }
        }
        n += k;
      }
      else
      {
        k = -k;
        int i3 = n + k;
        i = i1 - 2;
        m = i2;
        j = i3;
        break;
        if (m != paramBitArray.getSize())
          throw new WriterException("Not all bits consumed: " + m + '/' + paramBitArray.getSize());
        return;
        label264: n = j;
        i1 = i;
        i2 = m;
      }
  }

  public static void embedTypeInfo(ErrorCorrectionLevel paramErrorCorrectionLevel, int paramInt, ByteMatrix paramByteMatrix)
  {
    BitArray localBitArray = new BitArray();
    makeTypeInfoBits(paramErrorCorrectionLevel, paramInt, localBitArray);
    int i = 0;
    if (i < localBitArray.getSize())
    {
      boolean bool = localBitArray.get(-1 + localBitArray.getSize() - i);
      paramByteMatrix.set(f[i][0], f[i][1], bool);
      if (i < 8)
        paramByteMatrix.set(-1 + (paramByteMatrix.getWidth() - i), 8, bool);
      while (true)
      {
        i++;
        break;
        paramByteMatrix.set(8, -7 + paramByteMatrix.getHeight() + (i - 8), bool);
      }
    }
  }

  public static int findMSBSet(int paramInt)
  {
    for (int i = 0; paramInt != 0; i++)
      paramInt >>>= 1;
    return i;
  }

  public static void makeTypeInfoBits(ErrorCorrectionLevel paramErrorCorrectionLevel, int paramInt, BitArray paramBitArray)
  {
    if (!QRCode.isValidMaskPattern(paramInt))
      throw new WriterException("Invalid mask pattern");
    int i = paramInt | paramErrorCorrectionLevel.getBits() << 3;
    paramBitArray.appendBits(i, 5);
    paramBitArray.appendBits(calculateBCHCode(i, 1335), 10);
    BitArray localBitArray = new BitArray();
    localBitArray.appendBits(21522, 15);
    paramBitArray.xor(localBitArray);
    if (paramBitArray.getSize() != 15)
      throw new WriterException("should not happen but we got: " + paramBitArray.getSize());
  }

  public static void makeVersionInfoBits(int paramInt, BitArray paramBitArray)
  {
    paramBitArray.appendBits(paramInt, 6);
    paramBitArray.appendBits(calculateBCHCode(paramInt, 7973), 12);
    if (paramBitArray.getSize() != 18)
      throw new WriterException("should not happen but we got: " + paramBitArray.getSize());
  }

  public static void maybeEmbedVersionInfo(int paramInt, ByteMatrix paramByteMatrix)
  {
    if (paramInt < 7);
    while (true)
    {
      return;
      BitArray localBitArray = new BitArray();
      makeVersionInfoBits(paramInt, localBitArray);
      int i = 17;
      int j = 0;
      while (j < 6)
      {
        int k = i;
        for (int m = 0; m < 3; m++)
        {
          boolean bool = localBitArray.get(k);
          k--;
          paramByteMatrix.set(j, m + (-11 + paramByteMatrix.getHeight()), bool);
          paramByteMatrix.set(m + (-11 + paramByteMatrix.getHeight()), j, bool);
        }
        j++;
        i = k;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.encoder.MatrixUtil
 * JD-Core Version:    0.6.2
 */