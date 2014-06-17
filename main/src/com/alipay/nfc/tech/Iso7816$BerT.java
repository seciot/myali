package com.alipay.nfc.tech;

import java.util.Arrays;

public final class Iso7816$BerT extends Iso7816
{
  public static final BerT c = new BerT((byte)-91);
  public static final BerT d = new BerT((byte)-120);
  public static final BerT e = new BerT((byte)-124);
  public static final BerT f = new BerT((byte)97);
  public static final BerT g = new BerT((byte)79);

  private Iso7816$BerT(byte paramByte)
  {
    this(new byte[] { paramByte });
  }

  private Iso7816$BerT(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }

  public static int b(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 1;
    if ((0x1F & paramArrayOfByte[paramInt]) == 31)
    {
      while ((0x80 & paramArrayOfByte[(paramInt + i)]) == 128)
        i++;
      i++;
    }
    return i;
  }

  public static BerT c(byte[] paramArrayOfByte, int paramInt)
  {
    return new BerT(Arrays.copyOfRange(paramArrayOfByte, paramInt, paramInt + b(paramArrayOfByte, paramInt)));
  }

  public final boolean c()
  {
    int i = 0x20 & this.b[0];
    boolean bool = false;
    if (i == 32)
      bool = true;
    return bool;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.tech.Iso7816.BerT
 * JD-Core Version:    0.6.2
 */