package com.google.zxing.common;

import java.util.Vector;

public final class DecoderResult
{
  private final byte[] a;
  private final String b;
  private final Vector c;
  private final String d;

  public DecoderResult(byte[] paramArrayOfByte, String paramString1, Vector paramVector, String paramString2)
  {
    if ((paramArrayOfByte == null) && (paramString1 == null))
      throw new IllegalArgumentException();
    this.a = paramArrayOfByte;
    this.b = paramString1;
    this.c = paramVector;
    this.d = paramString2;
  }

  public final Vector getByteSegments()
  {
    return this.c;
  }

  public final String getECLevel()
  {
    return this.d;
  }

  public final byte[] getRawBytes()
  {
    return this.a;
  }

  public final String getText()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.DecoderResult
 * JD-Core Version:    0.6.2
 */