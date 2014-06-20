package com.ut.a.a.a.a;

public class a extends BundlesManager
{
  static final byte[] b = { 13, 10 };
  private static final byte[] c = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
  private static final byte[] d = { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
  private static final byte[] e = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, 62, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51 };
  private final byte[] f;
  private final byte[] g;
  private final byte[] h;
  private final int i;
  private final int j;
  private int k;

  public a()
  {
    this(0);
  }

  public a(int paramInt)
  {
    this(paramInt, BundlesManager);
  }

  public a(int paramInt, byte[] paramArrayOfByte)
  {
    this(paramInt, paramArrayOfByte, false);
  }

  public a(int paramInt, byte[] paramArrayOfByte, boolean paramBoolean)
  {
  }

  public a(boolean paramBoolean)
  {
    this(76, BundlesManager, paramBoolean);
  }

  public static String a(byte[] paramArrayOfByte)
  {
    return BundlesManagerImpl.removeBundle(a(paramArrayOfByte, false));
  }

  public static byte[] a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    return a(paramArrayOfByte, paramBoolean, false);
  }

  public static byte[] a(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2)
  {
    return a(paramArrayOfByte, paramBoolean1, paramBoolean2, 2147483647);
  }

  public static byte[] a(byte[] paramArrayOfByte, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      return paramArrayOfByte;
    if (paramBoolean1);
    for (AppBundle locala = new AppBundle(paramBoolean2); ; locala = new AppBundle(0, BundlesManager, paramBoolean2))
    {
      long l = locala.d(paramArrayOfByte);
      if (l <= paramInt)
        break;
      throw new IllegalArgumentException("Input array too big, the output array would be bigger (" + l + ") than the specified maximum size of " + paramInt);
    }
    return locala.b(paramArrayOfByte);
  }

  void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.eof);
    while (true)
    {
      return;
      if (paramInt2 < 0)
      {
        this.eof = true;
        if ((this.s != 0) || (this.o != 0))
        {
          a(this.j);
          int i6 = this.pos;
          switch (this.s)
          {
          default:
          case 1:
          case 2:
          }
          while (true)
          {
            this.r += this.pos - i6;
            if ((this.o <= 0) || (this.r <= 0))
              break;
            System.arraycopy(this.h, 0, this.buffer, this.pos, this.h.length);
            this.pos += this.h.length;
            return;
            byte[] arrayOfByte9 = this.buffer;
            int i11 = this.pos;
            this.pos = (i11 + 1);
            arrayOfByte9[i11] = this.f[(0x3F & this.k >> 2)];
            byte[] arrayOfByte10 = this.buffer;
            int i12 = this.pos;
            this.pos = (i12 + 1);
            arrayOfByte10[i12] = this.f[(0x3F & this.k << 4)];
            if (this.f == BundlesManagerImpl)
            {
              byte[] arrayOfByte11 = this.buffer;
              int i13 = this.pos;
              this.pos = (i13 + 1);
              arrayOfByte11[i13] = 61;
              byte[] arrayOfByte12 = this.buffer;
              int i14 = this.pos;
              this.pos = (i14 + 1);
              arrayOfByte12[i14] = 61;
              continue;
              byte[] arrayOfByte5 = this.buffer;
              int i7 = this.pos;
              this.pos = (i7 + 1);
              arrayOfByte5[i7] = this.f[(0x3F & this.k >> 10)];
              byte[] arrayOfByte6 = this.buffer;
              int i8 = this.pos;
              this.pos = (i8 + 1);
              arrayOfByte6[i8] = this.f[(0x3F & this.k >> 4)];
              byte[] arrayOfByte7 = this.buffer;
              int i9 = this.pos;
              this.pos = (i9 + 1);
              arrayOfByte7[i9] = this.f[(0x3F & this.k << 2)];
              if (this.f == BundlesManagerImpl)
              {
                byte[] arrayOfByte8 = this.buffer;
                int i10 = this.pos;
                this.pos = (i10 + 1);
                arrayOfByte8[i10] = 61;
              }
            }
          }
        }
      }
      else
      {
        int m = 0;
        while (m < paramInt2)
        {
          a(this.j);
          this.s = ((1 + this.s) % 3);
          int n = paramInt1 + 1;
          int i1 = paramArrayOfByte[paramInt1];
          if (i1 < 0)
            i1 += 256;
          this.k = (i1 + (this.k << 8));
          if (this.s == 0)
          {
            byte[] arrayOfByte1 = this.buffer;
            int i2 = this.pos;
            this.pos = (i2 + 1);
            arrayOfByte1[i2] = this.f[(0x3F & this.k >> 18)];
            byte[] arrayOfByte2 = this.buffer;
            int i3 = this.pos;
            this.pos = (i3 + 1);
            arrayOfByte2[i3] = this.f[(0x3F & this.k >> 12)];
            byte[] arrayOfByte3 = this.buffer;
            int i4 = this.pos;
            this.pos = (i4 + 1);
            arrayOfByte3[i4] = this.f[(0x3F & this.k >> 6)];
            byte[] arrayOfByte4 = this.buffer;
            int i5 = this.pos;
            this.pos = (i5 + 1);
            arrayOfByte4[i5] = this.f[(0x3F & this.k)];
            this.r = (4 + this.r);
            if ((this.o > 0) && (this.o <= this.r))
            {
              System.arraycopy(this.h, 0, this.buffer, this.pos, this.h.length);
              this.pos += this.h.length;
              this.r = 0;
            }
          }
          m++;
          paramInt1 = n;
        }
      }
    }
  }

  protected boolean a(byte paramByte)
  {
    return (paramByte >= 0) && (paramByte < this.g.length) && (this.g[paramByte] != -1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.a.a.a.a.a
 * JD-Core Version:    0.6.2
 */