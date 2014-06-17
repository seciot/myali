package com.google.zxing;

public abstract class LuminanceSource
{
  private final int a;
  private final int b;

  protected LuminanceSource(int paramInt1, int paramInt2)
  {
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public LuminanceSource crop(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new RuntimeException("This luminance source does not support cropping.");
  }

  public final int getHeight()
  {
    return this.b;
  }

  public abstract byte[] getMatrix();

  public abstract byte[] getRow(int paramInt, byte[] paramArrayOfByte);

  public final int getWidth()
  {
    return this.a;
  }

  public boolean isCropSupported()
  {
    return false;
  }

  public boolean isRotateSupported()
  {
    return false;
  }

  public LuminanceSource rotateCounterClockwise()
  {
    throw new RuntimeException("This luminance source does not support rotation.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.LuminanceSource
 * JD-Core Version:    0.6.2
 */