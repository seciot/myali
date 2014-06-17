package com.google.zxing.qrcode.decoder;

import com.google.zxing.FormatException;
import com.google.zxing.common.BitMatrix;

final class BitMatrixParser
{
  private final BitMatrix a;
  private Version b;
  private FormatInformation c;

  BitMatrixParser(BitMatrix paramBitMatrix)
  {
    int i = paramBitMatrix.getHeight();
    if ((i < 21) || ((i & 0x3) != 1))
      throw FormatException.getFormatInstance();
    this.a = paramBitMatrix;
  }

  private int a(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.a.get(paramInt1, paramInt2))
      return 0x1 | paramInt3 << 1;
    return paramInt3 << 1;
  }

  final byte[] readCodewords()
  {
    FormatInformation localFormatInformation = readFormatInformation();
    Version localVersion = readVersion();
    DataMask localDataMask = DataMask.forReference(localFormatInformation.getDataMask());
    int i = this.a.getHeight();
    localDataMask.unmaskBitMatrix(this.a, i);
    BitMatrix localBitMatrix = localVersion.buildFunctionPattern();
    byte[] arrayOfByte = new byte[localVersion.getTotalCodewords()];
    int j = i - 1;
    int k = 0;
    int m = 0;
    int n = 0;
    int i3;
    for (int i1 = 1; j > 0; i1 = i3)
    {
      if (j == 6)
        j--;
      for (int i2 = 0; i2 < i; i2++)
      {
        if (i1 != 0);
        for (int i4 = i - 1 - i2; ; i4 = i2)
          for (int i5 = 0; i5 < 2; i5++)
            if (!localBitMatrix.get(j - i5, i4))
            {
              k++;
              m <<= 1;
              if (this.a.get(j - i5, i4))
                m |= 1;
              if (k == 8)
              {
                int i6 = n + 1;
                arrayOfByte[n] = ((byte)m);
                m = 0;
                n = i6;
                k = 0;
              }
            }
      }
      i3 = i1 ^ 0x1;
      j -= 2;
    }
    if (n != localVersion.getTotalCodewords())
      throw FormatException.getFormatInstance();
    return arrayOfByte;
  }

  final FormatInformation readFormatInformation()
  {
    int i = 0;
    if (this.c != null)
      return this.c;
    int j = 0;
    int k = 0;
    while (j < 6)
    {
      k = a(j, 8, k);
      j++;
    }
    int m = a(8, 7, a(8, 8, a(7, 8, k)));
    for (int n = 5; n >= 0; n--)
      m = a(8, n, m);
    int i1 = this.a.getHeight();
    int i2 = i1 - 7;
    for (int i3 = i1 - 1; i3 >= i2; i3--)
      i = a(8, i3, i);
    for (int i4 = i1 - 8; i4 < i1; i4++)
      i = a(i4, 8, i);
    this.c = FormatInformation.decodeFormatInformation(m, i);
    if (this.c != null)
      return this.c;
    throw FormatException.getFormatInstance();
  }

  final Version readVersion()
  {
    int i = 0;
    if (this.b != null)
      return this.b;
    int j = this.a.getHeight();
    int k = j - 17 >> 2;
    if (k <= 6)
      return Version.getVersionForNumber(k);
    int m = j - 11;
    int n = 5;
    int i1 = 0;
    while (n >= 0)
    {
      for (int i4 = j - 9; i4 >= m; i4--)
        i1 = a(i4, n, i1);
      n--;
    }
    this.b = Version.decodeVersionInformation(i1);
    if ((this.b != null) && (this.b.getDimensionForVersion() == j))
      return this.b;
    for (int i2 = 5; i2 >= 0; i2--)
      for (int i3 = j - 9; i3 >= m; i3--)
        i = a(i2, i3, i);
    this.b = Version.decodeVersionInformation(i);
    if ((this.b != null) && (this.b.getDimensionForVersion() == j))
      return this.b;
    throw FormatException.getFormatInstance();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.BitMatrixParser
 * JD-Core Version:    0.6.2
 */