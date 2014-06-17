package com.alipay.nfc.tech;

import java.util.Arrays;

public final class Iso7816$BerV extends Iso7816
{
  private Iso7816$BerV(byte[] paramArrayOfByte)
  {
    super(paramArrayOfByte);
  }

  public static BerV a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    return new BerV(Arrays.copyOfRange(paramArrayOfByte, paramInt1, paramInt1 + paramInt2));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.tech.Iso7816.BerV
 * JD-Core Version:    0.6.2
 */