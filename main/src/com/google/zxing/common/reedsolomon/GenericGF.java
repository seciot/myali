package com.google.zxing.common.reedsolomon;

public final class GenericGF
{
  public static final GenericGF AZTEC_DATA_10;
  public static final GenericGF AZTEC_DATA_12 = new GenericGF(4201, 4096);
  public static final GenericGF AZTEC_DATA_6;
  public static final GenericGF AZTEC_DATA_8 = localGenericGF;
  public static final GenericGF AZTEC_PARAM;
  public static final GenericGF DATA_MATRIX_FIELD_256;
  public static final GenericGF QR_CODE_FIELD_256;
  private int[] a;
  private int[] b;
  private GenericGFPoly c;
  private GenericGFPoly d;
  private final int e;
  private final int f;
  private boolean g = false;

  static
  {
    AZTEC_DATA_10 = new GenericGF(1033, 1024);
    AZTEC_DATA_6 = new GenericGF(67, 64);
    AZTEC_PARAM = new GenericGF(19, 16);
    QR_CODE_FIELD_256 = new GenericGF(285, 256);
    GenericGF localGenericGF = new GenericGF(301, 256);
    DATA_MATRIX_FIELD_256 = localGenericGF;
  }

  public GenericGF(int paramInt1, int paramInt2)
  {
    this.f = paramInt1;
    this.e = paramInt2;
    if (paramInt2 <= 0)
      a();
  }

  private void a()
  {
    this.a = new int[this.e];
    this.b = new int[this.e];
    int i = 0;
    int j = 1;
    while (i < this.e)
    {
      this.a[i] = j;
      j <<= 1;
      if (j >= this.e)
        j = (j ^ this.f) & -1 + this.e;
      i++;
    }
    for (int k = 0; k < -1 + this.e; k++)
      this.b[this.a[k]] = k;
    this.c = new GenericGFPoly(this, new int[] { 0 });
    this.d = new GenericGFPoly(this, new int[] { 1 });
    this.g = true;
  }

  static int addOrSubtract(int paramInt1, int paramInt2)
  {
    return paramInt1 ^ paramInt2;
  }

  private void b()
  {
    if (!this.g)
      a();
  }

  final GenericGFPoly buildMonomial(int paramInt1, int paramInt2)
  {
    b();
    if (paramInt1 < 0)
      throw new IllegalArgumentException();
    if (paramInt2 == 0)
      return this.c;
    int[] arrayOfInt = new int[paramInt1 + 1];
    arrayOfInt[0] = paramInt2;
    return new GenericGFPoly(this, arrayOfInt);
  }

  final int exp(int paramInt)
  {
    b();
    return this.a[paramInt];
  }

  final GenericGFPoly getOne()
  {
    b();
    return this.d;
  }

  public final int getSize()
  {
    return this.e;
  }

  final GenericGFPoly getZero()
  {
    b();
    return this.c;
  }

  final int inverse(int paramInt)
  {
    b();
    if (paramInt == 0)
      throw new ArithmeticException();
    return this.a[(-1 + (this.e - this.b[paramInt]))];
  }

  final int log(int paramInt)
  {
    b();
    if (paramInt == 0)
      throw new IllegalArgumentException();
    return this.b[paramInt];
  }

  final int multiply(int paramInt1, int paramInt2)
  {
    b();
    if ((paramInt1 == 0) || (paramInt2 == 0))
      return 0;
    if ((paramInt1 < 0) || (paramInt2 < 0) || (paramInt1 >= this.e) || (paramInt2 >= this.e))
      paramInt1++;
    int i = this.b[paramInt1] + this.b[paramInt2];
    return this.a[(i % this.e + i / this.e)];
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.reedsolomon.GenericGF
 * JD-Core Version:    0.6.2
 */