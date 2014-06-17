package com.google.zxing.qrcode.decoder;

final class FormatInformation
{
  private static final int[][] a = { { 21522, 0 }, { 20773, 1 }, { 24188, 2 }, { 23371, 3 }, { 17913, 4 }, { 16590, 5 }, { 20375, 6 }, { 19104, 7 }, { 30660, 8 }, { 29427, 9 }, { 32170, 10 }, { 30877, 11 }, { 26159, 12 }, { 25368, 13 }, { 27713, 14 }, { 26998, 15 }, { 5769, 16 }, { 5054, 17 }, { 7399, 18 }, { 6608, 19 }, { 1890, 20 }, { 597, 21 }, { 3340, 22 }, { 2107, 23 }, { 13663, 24 }, { 12392, 25 }, { 16177, 26 }, { 14854, 27 }, { 9396, 28 }, { 8579, 29 }, { 11994, 30 }, { 11245, 31 } };
  private static final int[] b = { 0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4 };
  private final ErrorCorrectionLevel c;
  private final byte d;

  private FormatInformation(int paramInt)
  {
    this.c = ErrorCorrectionLevel.forBits(0x3 & paramInt >> 3);
    this.d = ((byte)(paramInt & 0x7));
  }

  private static FormatInformation a(int paramInt1, int paramInt2)
  {
    int i = 0;
    int j = 2147483647;
    int k = 0;
    int[] arrayOfInt;
    int m;
    int n;
    if (k < a.length)
    {
      arrayOfInt = a[k];
      m = arrayOfInt[0];
      if ((m == paramInt1) || (m == paramInt2))
        return new FormatInformation(arrayOfInt[1]);
      n = numBitsDiffering(paramInt1, m);
      if (n >= j)
        break label125;
      i = arrayOfInt[1];
    }
    while (true)
    {
      if (paramInt1 != paramInt2)
      {
        j = numBitsDiffering(paramInt2, m);
        if (j < n)
          i = arrayOfInt[1];
      }
      while (true)
      {
        k++;
        break;
        if (j <= 3)
          return new FormatInformation(i);
        return null;
        j = n;
      }
      label125: n = j;
    }
  }

  static FormatInformation decodeFormatInformation(int paramInt1, int paramInt2)
  {
    FormatInformation localFormatInformation = a(paramInt1, paramInt2);
    if (localFormatInformation != null)
      return localFormatInformation;
    return a(paramInt1 ^ 0x5412, paramInt2 ^ 0x5412);
  }

  static int numBitsDiffering(int paramInt1, int paramInt2)
  {
    int i = paramInt1 ^ paramInt2;
    return b[(i & 0xF)] + b[(0xF & i >>> 4)] + b[(0xF & i >>> 8)] + b[(0xF & i >>> 12)] + b[(0xF & i >>> 16)] + b[(0xF & i >>> 20)] + b[(0xF & i >>> 24)] + b[(0xF & i >>> 28)];
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof FormatInformation));
    FormatInformation localFormatInformation;
    do
    {
      return false;
      localFormatInformation = (FormatInformation)paramObject;
    }
    while ((this.c != localFormatInformation.c) || (this.d != localFormatInformation.d));
    return true;
  }

  final byte getDataMask()
  {
    return this.d;
  }

  final ErrorCorrectionLevel getErrorCorrectionLevel()
  {
    return this.c;
  }

  public final int hashCode()
  {
    return this.c.ordinal() << 3 | this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.FormatInformation
 * JD-Core Version:    0.6.2
 */