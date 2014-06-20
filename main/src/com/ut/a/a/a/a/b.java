package com.ut.a.a.a.a;

public abstract class b
{
  protected byte[] buffer;
  protected boolean eof;
  protected final byte l = 61;
  private final int m;
  private final int n;
  protected final int o;
  private final int p;
  protected int pos;
  private int q;
  protected int r;
  protected int s;

  protected b(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.m = paramInt1;
    this.n = paramInt2;
    if ((paramInt3 > 0) && (paramInt4 > 0));
    for (int i = paramInt2 * (paramInt3 / paramInt2); ; i = 0)
    {
      this.o = i;
      this.p = paramInt4;
      return;
    }
  }

  private void b()
  {
    if (this.buffer == null)
    {
      this.buffer = new byte[a()];
      this.pos = 0;
      this.q = 0;
      return;
    }
    byte[] arrayOfByte = new byte[2 * this.buffer.length];
    System.arraycopy(this.buffer, 0, arrayOfByte, 0, this.buffer.length);
    this.buffer = arrayOfByte;
  }

  private void reset()
  {
    this.buffer = null;
    this.pos = 0;
    this.q = 0;
    this.r = 0;
    this.s = 0;
    this.eof = false;
  }

  protected int a()
  {
    return 8192;
  }

  protected void a(int paramInt)
  {
    if ((this.buffer == null) || (this.buffer.length < paramInt + this.pos))
      b();
  }

  abstract void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2);

  protected abstract boolean a(byte paramByte);

  int available()
  {
    if (this.buffer != null)
      return this.pos - this.q;
    return 0;
  }

  int b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (this.buffer != null)
    {
      int i = Math.min(available(), paramInt2);
      System.arraycopy(this.buffer, this.q, paramArrayOfByte, paramInt1, i);
      this.q = (i + this.q);
      if (this.q >= this.pos)
        this.buffer = null;
      return i;
    }
    if (this.eof)
      return -1;
    return 0;
  }

  public byte[] b(byte[] paramArrayOfByte)
  {
    reset();
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      return paramArrayOfByte;
    a(paramArrayOfByte, 0, paramArrayOfByte.length);
    a(paramArrayOfByte, 0, -1);
    byte[] arrayOfByte = new byte[this.pos - this.q];
    b(arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }

  protected boolean c(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    while (true)
    {
      return false;
      int i = paramArrayOfByte.length;
      for (int j = 0; j < i; j++)
      {
        byte b = paramArrayOfByte[j];
        if ((61 == BundlesManager) || (a(BundlesManager)))
          return true;
      }
    }
  }

  public long d(byte[] paramArrayOfByte)
  {
    long l1 = (-1 + (paramArrayOfByte.length + this.m)) / this.m * this.n;
    if (this.o > 0)
      l1 += (l1 + this.o - 1L) / this.o * this.p;
    return l1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.a.a.a.a.b
 * JD-Core Version:    0.6.2
 */