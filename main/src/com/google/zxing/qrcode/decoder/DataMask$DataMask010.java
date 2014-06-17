package com.google.zxing.qrcode.decoder;

class DataMask$DataMask010 extends DataMask
{
  private DataMask$DataMask010()
  {
    super(null);
  }

  DataMask$DataMask010(DataMask.1 param1)
  {
    this();
  }

  boolean isMasked(int paramInt1, int paramInt2)
  {
    return paramInt2 % 3 == 0;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask.DataMask010
 * JD-Core Version:    0.6.2
 */