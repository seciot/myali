package com.alipay.nfc.tech;

import java.util.Arrays;

public final class Iso7816$BerTLV extends Iso7816
{
  public final Iso7816.BerT c;
  public final Iso7816.BerL d;
  public final Iso7816.BerV e;

  private Iso7816$BerTLV(Iso7816.BerT paramBerT, Iso7816.BerL paramBerL, Iso7816.BerV paramBerV)
  {
    this.c = paramBerT;
    this.d = paramBerL;
    this.e = paramBerV;
  }

  public static BerTLV a(Iso7816 paramIso7816)
  {
    return b(paramIso7816.b(), 0);
  }

  private static BerTLV b(byte[] paramArrayOfByte, int paramInt)
  {
    Iso7816.BerT localBerT = Iso7816.BerT.c(paramArrayOfByte, paramInt);
    int i = paramInt + localBerT.a();
    Iso7816.BerL localBerL = Iso7816.BerL.d(paramArrayOfByte, i);
    int j = i + localBerL.a();
    Iso7816.BerV localBerV = Iso7816.BerV.a(paramArrayOfByte, j, localBerL.getBundleName());
    int k = j + localBerV.a();
    BerTLV localBerTLV = new BerTLV(localBerT, localBerL, localBerV);
    localBerTLV.b = Arrays.copyOfRange(paramArrayOfByte, paramInt, k);
    return localBerTLV;
  }

  public final BerTLV setBundlePath(Iso7816.BerT paramBerT)
  {
    if (this.c.getBundleName())
    {
      byte[] arrayOfByte = this.e.b();
      int i = 0;
      int j = arrayOfByte.length;
      while (i < j)
      {
        if (paramBerT.a(arrayOfByte, i))
          return b(arrayOfByte, i);
        int k = Iso7816.BerT.b(arrayOfByte, i);
        int m = Iso7816.BerL.b(arrayOfByte, i + k);
        i += Iso7816.BerL.c(arrayOfByte, i + k) + (k + m);
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.tech.Iso7816.BerTLV
 * JD-Core Version:    0.6.2
 */