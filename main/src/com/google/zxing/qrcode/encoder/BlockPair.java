package com.google.zxing.qrcode.encoder;

final class BlockPair
{
  private final byte[] a;
  private final byte[] b;

  BlockPair(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.a = paramArrayOfByte1;
    this.b = paramArrayOfByte2;
  }

  public final byte[] getDataBytes()
  {
    return this.a;
  }

  public final byte[] getErrorCorrectionBytes()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.encoder.BlockPair
 * JD-Core Version:    0.6.2
 */