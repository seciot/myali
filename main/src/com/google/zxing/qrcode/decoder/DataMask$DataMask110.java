package com.google.zxing.qrcode.decoder;

class DataMask$DataMask110 extends DataMask
{
  private DataMask$DataMask110()
  {
    super(null);
  }

  DataMask$DataMask110(DataMask.1 param1)
  {
    this();
  }

  boolean isMasked(int paramInt1, int paramInt2)
  {
    int i = paramInt1 * paramInt2;
    return (0x1 & (i & 0x1) + i % 3) == 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask.DataMask110
 * JD-Core Version:    0.6.2
 */