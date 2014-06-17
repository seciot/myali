package com.google.zxing;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;

public abstract class Binarizer
{
  private final LuminanceSource a;

  protected Binarizer(LuminanceSource paramLuminanceSource)
  {
    if (paramLuminanceSource == null)
      throw new IllegalArgumentException("Source must be non-null.");
    this.a = paramLuminanceSource;
  }

  public abstract Binarizer createBinarizer(LuminanceSource paramLuminanceSource);

  public abstract BitMatrix getBlackMatrix();

  public abstract BitArray getBlackRow(int paramInt, BitArray paramBitArray);

  public LuminanceSource getLuminanceSource()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.Binarizer
 * JD-Core Version:    0.6.2
 */