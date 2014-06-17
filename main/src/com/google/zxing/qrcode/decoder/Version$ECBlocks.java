package com.google.zxing.qrcode.decoder;

public final class Version$ECBlocks
{
  private final int a;
  private final Version.ECB[] b;

  Version$ECBlocks(int paramInt, Version.ECB paramECB)
  {
    this.a = paramInt;
    this.b = new Version.ECB[] { paramECB };
  }

  Version$ECBlocks(int paramInt, Version.ECB paramECB1, Version.ECB paramECB2)
  {
    this.a = paramInt;
    this.b = new Version.ECB[] { paramECB1, paramECB2 };
  }

  public final Version.ECB[] getECBlocks()
  {
    return this.b;
  }

  public final int getECCodewordsPerBlock()
  {
    return this.a;
  }

  public final int getNumBlocks()
  {
    int i = 0;
    int j = 0;
    while (i < this.b.length)
    {
      j += this.b[i].getCount();
      i++;
    }
    return j;
  }

  public final int getTotalECCodewords()
  {
    return this.a * getNumBlocks();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.Version.ECBlocks
 * JD-Core Version:    0.6.2
 */