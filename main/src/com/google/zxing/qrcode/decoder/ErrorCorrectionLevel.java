package com.google.zxing.qrcode.decoder;

public final class ErrorCorrectionLevel
{
  public static final ErrorCorrectionLevel H;
  public static final ErrorCorrectionLevel L = new ErrorCorrectionLevel(0, 1, "L");
  public static final ErrorCorrectionLevel M = new ErrorCorrectionLevel(1, 0, "M");
  public static final ErrorCorrectionLevel Q = new ErrorCorrectionLevel(2, 3, "Q");
  private static final ErrorCorrectionLevel[] a = arrayOfErrorCorrectionLevel;
  private final int b;
  private final int c;
  private final String d;

  static
  {
    H = new ErrorCorrectionLevel(3, 2, "H");
    ErrorCorrectionLevel[] arrayOfErrorCorrectionLevel = new ErrorCorrectionLevel[4];
    arrayOfErrorCorrectionLevel[0] = M;
    arrayOfErrorCorrectionLevel[1] = L;
    arrayOfErrorCorrectionLevel[2] = H;
    arrayOfErrorCorrectionLevel[3] = Q;
  }

  private ErrorCorrectionLevel(int paramInt1, int paramInt2, String paramString)
  {
    this.b = paramInt1;
    this.c = paramInt2;
    this.d = paramString;
  }

  public static ErrorCorrectionLevel forBits(int paramInt)
  {
    if ((paramInt < 0) || (paramInt >= a.length))
      throw new IllegalArgumentException();
    return a[paramInt];
  }

  public final int getBits()
  {
    return this.c;
  }

  public final String getName()
  {
    return this.d;
  }

  public final int ordinal()
  {
    return this.b;
  }

  public final String toString()
  {
    return this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.ErrorCorrectionLevel
 * JD-Core Version:    0.6.2
 */