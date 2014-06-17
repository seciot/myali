package com.alipay.b.b;

public final class a
{
  private static short[] a = null;
  private long b;
  private long c;

  public a()
  {
    double d;
    if (a == null)
    {
      a = new short[65536];
      d = 0.0D;
    }
    for (int i = 0; ; i++)
    {
      if (i >= 65536)
      {
        this.b = 0L;
        this.c = 0L;
        return;
      }
      a[i] = ((short)(int)(32767.0D * Math.sin(d)));
      d += 9.587379924285257E-05D;
    }
  }

  public final short a()
  {
    long l = this.b >> 16;
    short s = a[((int)(0xFFFF & l))];
    this.b += this.c;
    if (l >= 65536L)
      this.b = (this.b - 1073741824L - 1073741824L - 1073741824L - 1073741824L);
    return s;
  }

  public final void a(int paramInt)
  {
    this.c = (97391 * paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.b.b.a
 * JD-Core Version:    0.6.2
 */