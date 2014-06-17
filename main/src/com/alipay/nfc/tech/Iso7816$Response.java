package com.alipay.nfc.tech;

import java.util.Arrays;

public final class Iso7816$Response extends Iso7816
{
  public static final byte[] c = new byte[0];
  public static final byte[] d = { 111, 0 };

  public Iso7816$Response(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }

  public final int a()
  {
    return -2 + this.b.length;
  }

  public final byte[] a(byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = this.b;
    for (int i = 0; i < arrayOfByte.length - paramArrayOfByte.length; i++)
    {
      for (int j = 0; (j < paramArrayOfByte.length) && (paramArrayOfByte[j] == arrayOfByte[(i + j)]); j++);
      if (j == paramArrayOfByte.length)
        return Arrays.copyOfRange(arrayOfByte, 1 + (i + paramArrayOfByte.length), 1 + (i + paramArrayOfByte.length) + arrayOfByte[(i + paramArrayOfByte.length)]);
    }
    return null;
  }

  public final byte[] b()
  {
    if (c())
      return Arrays.copyOfRange(this.b, 0, -2 + this.b.length);
    return c;
  }

  public final byte[] b(byte paramByte)
  {
    int i = 0;
    byte[] arrayOfByte = this.b;
    int j = arrayOfByte.length;
    int k = 0;
    while (i < j)
    {
      byte b = arrayOfByte[i];
      k++;
      if (b == paramByte)
        return Arrays.copyOfRange(arrayOfByte, k + 1, k + 1 + arrayOfByte[k]);
      i++;
    }
    return null;
  }

  public final boolean c()
  {
    byte[] arrayOfByte = this.b;
    int i = arrayOfByte.length;
    return (short)(arrayOfByte[(i - 2)] << 8 | 0xFF & arrayOfByte[(i - 1)]) == -28672;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.tech.Iso7816.Response
 * JD-Core Version:    0.6.2
 */