package com.google.zxing;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;

public final class BinaryBitmap
{
  private final Binarizer a;
  private BitMatrix b;

  public BinaryBitmap(Binarizer paramBinarizer)
  {
    if (paramBinarizer == null)
      throw new IllegalArgumentException("Binarizer must be non-null.");
    this.a = paramBinarizer;
    this.b = null;
  }

  public final BinaryBitmap crop(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    LuminanceSource localLuminanceSource = this.a.getLuminanceSource().crop(paramInt1, paramInt2, paramInt3, paramInt4);
    return new BinaryBitmap(this.a.createBinarizer(localLuminanceSource));
  }

  public final BitMatrix getBlackMatrix()
  {
    if (this.b == null)
      this.b = this.a.getBlackMatrix();
    return this.b;
  }

  public final BitArray getBlackRow(int paramInt, BitArray paramBitArray)
  {
    return this.a.getBlackRow(paramInt, paramBitArray);
  }

  public final int getHeight()
  {
    return this.a.getLuminanceSource().getHeight();
  }

  public final int getWidth()
  {
    return this.a.getLuminanceSource().getWidth();
  }

  public final boolean isCropSupported()
  {
    return this.a.getLuminanceSource().isCropSupported();
  }

  public final boolean isRotateSupported()
  {
    return this.a.getLuminanceSource().isRotateSupported();
  }

  public final BinaryBitmap rotateCounterClockwise()
  {
    LuminanceSource localLuminanceSource = this.a.getLuminanceSource().rotateCounterClockwise();
    return new BinaryBitmap(this.a.createBinarizer(localLuminanceSource));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.BinaryBitmap
 * JD-Core Version:    0.6.2
 */