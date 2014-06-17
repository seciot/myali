package com.google.zxing.qrcode.encoder;

import java.lang.reflect.Array;

public final class ByteMatrix
{
  private final byte[][] a;
  private final int b;
  private final int c;

  public ByteMatrix(int paramInt1, int paramInt2)
  {
    int[] arrayOfInt = { paramInt2, paramInt1 };
    this.a = ((byte[][])Array.newInstance(Byte.TYPE, arrayOfInt));
    this.b = paramInt1;
    this.c = paramInt2;
  }

  public final void clear(byte paramByte)
  {
    for (int i = 0; i < this.c; i++)
      for (int j = 0; j < this.b; j++)
        this.a[i][j] = paramByte;
  }

  public final byte get(int paramInt1, int paramInt2)
  {
    return this.a[paramInt2][paramInt1];
  }

  public final byte[][] getArray()
  {
    return this.a;
  }

  public final int getHeight()
  {
    return this.c;
  }

  public final int getWidth()
  {
    return this.b;
  }

  public final void set(int paramInt1, int paramInt2, byte paramByte)
  {
    this.a[paramInt2][paramInt1] = paramByte;
  }

  public final void set(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a[paramInt2][paramInt1] = ((byte)paramInt3);
  }

  public final void set(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    byte[] arrayOfByte = this.a[paramInt2];
    if (paramBoolean);
    for (int i = 1; ; i = 0)
    {
      arrayOfByte[paramInt1] = ((byte)i);
      return;
    }
  }

  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer(2 + 2 * this.b * this.c);
    for (int i = 0; i < this.c; i++)
    {
      int j = 0;
      if (j < this.b)
      {
        switch (this.a[i][j])
        {
        default:
          localStringBuffer.append("  ");
        case 0:
        case 1:
        }
        while (true)
        {
          j++;
          break;
          localStringBuffer.append(" 0");
          continue;
          localStringBuffer.append(" 1");
        }
      }
      localStringBuffer.append('\n');
    }
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.encoder.ByteMatrix
 * JD-Core Version:    0.6.2
 */