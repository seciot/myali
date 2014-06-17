package com.alipay.nfc.tech;

import java.util.Arrays;

public final class Iso7816$BerL extends Iso7816
{
  private final int c;

  private Iso7816$BerL(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
    this.c = c(paramArrayOfByte, 0);
  }

  public static int b(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 1;
    if ((0x80 & paramArrayOfByte[paramInt]) == 128)
      i = 1 + (0x7 & paramArrayOfByte[paramInt]);
    return i;
  }

  public static int c(byte[] paramArrayOfByte, int paramInt)
  {
    if ((0x80 & paramArrayOfByte[paramInt]) == 128)
    {
      i = 0;
      int j = 0x7 & paramInt + paramArrayOfByte[paramInt];
      while (true)
      {
        paramInt++;
        if (paramInt > j)
          break;
        i = i << 8 | 0xFF & paramArrayOfByte[paramInt];
      }
    }
    int i = paramArrayOfByte[paramInt];
    return i;
  }

  public static BerL d(byte[] paramArrayOfByte, int paramInt)
  {
    return new BerL(Arrays.copyOfRange(paramArrayOfByte, paramInt, paramInt + b(paramArrayOfByte, paramInt)));
  }

  public final int c()
  {
    return this.c;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.tech.Iso7816.BerL
 * JD-Core Version:    0.6.2
 */