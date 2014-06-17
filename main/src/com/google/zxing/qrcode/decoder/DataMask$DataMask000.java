package com.google.zxing.qrcode.decoder;

class DataMask$DataMask000 extends DataMask
{
  private DataMask$DataMask000()
  {
    super(null);
  }

  DataMask$DataMask000(DataMask.1 param1)
  {
    this();
  }

  boolean isMasked(int paramInt1, int paramInt2)
  {
    return (0x1 & paramInt1 + paramInt2) == 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask.DataMask000
 * JD-Core Version:    0.6.2
 */