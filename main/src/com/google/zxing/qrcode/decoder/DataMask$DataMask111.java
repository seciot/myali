package com.google.zxing.qrcode.decoder;

class DataMask$DataMask111 extends DataMask
{
  private DataMask$DataMask111()
  {
    super(null);
  }

  DataMask$DataMask111(DataMask.1 param1)
  {
    this();
  }

  boolean isMasked(int paramInt1, int paramInt2)
  {
    return (0x1 & (0x1 & paramInt1 + paramInt2) + paramInt1 * paramInt2 % 3) == 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask.DataMask111
 * JD-Core Version:    0.6.2
 */