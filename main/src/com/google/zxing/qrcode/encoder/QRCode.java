package com.google.zxing.qrcode.encoder;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;

public final class QRCode
{
  public static final int NUM_MASK_PATTERNS = 8;
  private Mode a = null;
  private ErrorCorrectionLevel b = null;
  private int c = -1;
  private int d = -1;
  private int e = -1;
  private int f = -1;
  private int g = -1;
  private int h = -1;
  private int i = -1;
  private ByteMatrix j = null;

  public static boolean isValidMaskPattern(int paramInt)
  {
    return (paramInt >= 0) && (paramInt < 8);
  }

  public final int at(int paramInt1, int paramInt2)
  {
    int k = this.j.get(paramInt1, paramInt2);
    if ((k != 0) && (k != 1))
      throw new RuntimeException("Bad value");
    return k;
  }

  public final ErrorCorrectionLevel getECLevel()
  {
    return this.b;
  }

  public final int getMaskPattern()
  {
    return this.e;
  }

  public final ByteMatrix getMatrix()
  {
    return this.j;
  }

  public final int getMatrixWidth()
  {
    return this.d;
  }

  public final Mode getMode()
  {
    return this.a;
  }

  public final int getNumDataBytes()
  {
    return this.g;
  }

  public final int getNumECBytes()
  {
    return this.h;
  }

  public final int getNumRSBlocks()
  {
    return this.i;
  }

  public final int getNumTotalBytes()
  {
    return this.f;
  }

  public final int getVersion()
  {
    return this.c;
  }

  public final boolean isValid()
  {
    return (this.a != null) && (this.b != null) && (this.c != -1) && (this.d != -1) && (this.e != -1) && (this.f != -1) && (this.g != -1) && (this.h != -1) && (this.i != -1) && (isValidMaskPattern(this.e)) && (this.f == this.g + this.h) && (this.j != null) && (this.d == this.j.getWidth()) && (this.j.getWidth() == this.j.getHeight());
  }

  public final void setECLevel(ErrorCorrectionLevel paramErrorCorrectionLevel)
  {
    this.b = paramErrorCorrectionLevel;
  }

  public final void setMaskPattern(int paramInt)
  {
    this.e = paramInt;
  }

  public final void setMatrix(ByteMatrix paramByteMatrix)
  {
    this.j = paramByteMatrix;
  }

  public final void setMatrixWidth(int paramInt)
  {
    this.d = paramInt;
  }

  public final void setMode(Mode paramMode)
  {
    this.a = paramMode;
  }

  public final void setNumDataBytes(int paramInt)
  {
    this.g = paramInt;
  }

  public final void setNumECBytes(int paramInt)
  {
    this.h = paramInt;
  }

  public final void setNumRSBlocks(int paramInt)
  {
    this.i = paramInt;
  }

  public final void setNumTotalBytes(int paramInt)
  {
    this.f = paramInt;
  }

  public final void setVersion(int paramInt)
  {
    this.c = paramInt;
  }

  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer(200);
    localStringBuffer.append("<<\n");
    localStringBuffer.append(" mode: ");
    localStringBuffer.append(this.a);
    localStringBuffer.append("\n ecLevel: ");
    localStringBuffer.append(this.b);
    localStringBuffer.append("\n version: ");
    localStringBuffer.append(this.c);
    localStringBuffer.append("\n matrixWidth: ");
    localStringBuffer.append(this.d);
    localStringBuffer.append("\n maskPattern: ");
    localStringBuffer.append(this.e);
    localStringBuffer.append("\n numTotalBytes: ");
    localStringBuffer.append(this.f);
    localStringBuffer.append("\n numDataBytes: ");
    localStringBuffer.append(this.g);
    localStringBuffer.append("\n numECBytes: ");
    localStringBuffer.append(this.h);
    localStringBuffer.append("\n numRSBlocks: ");
    localStringBuffer.append(this.i);
    if (this.j == null)
      localStringBuffer.append("\n matrix: null\n");
    while (true)
    {
      localStringBuffer.append(">>\n");
      return localStringBuffer.toString();
      localStringBuffer.append("\n matrix:\n");
      localStringBuffer.append(this.j.toString());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.encoder.QRCode
 * JD-Core Version:    0.6.2
 */