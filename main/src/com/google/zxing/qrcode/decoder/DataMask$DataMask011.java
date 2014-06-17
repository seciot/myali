package com.google.zxing.qrcode.decoder;

class DataMask$DataMask011 extends DataMask
{
  private DataMask$DataMask011()
  {
    super(null);
  }

  DataMask$DataMask011(DataMask.1 param1)
  {
    this();
  }

  boolean isMasked(int paramInt1, int paramInt2)
  {
    return (paramInt1 + paramInt2) % 3 == 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask.DataMask011
 * JD-Core Version:    0.6.2
 */