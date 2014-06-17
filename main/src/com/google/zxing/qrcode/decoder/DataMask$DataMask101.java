package com.google.zxing.qrcode.decoder;

class DataMask$DataMask101 extends DataMask
{
  private DataMask$DataMask101()
  {
    super(null);
  }

  DataMask$DataMask101(DataMask.1 param1)
  {
    this();
  }

  boolean isMasked(int paramInt1, int paramInt2)
  {
    int i = paramInt1 * paramInt2;
    return (i & 0x1) + i % 3 == 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask.DataMask101
 * JD-Core Version:    0.6.2
 */