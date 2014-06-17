package com.google.zxing.common;

import com.google.zxing.ResultPoint;

public class DetectorResult
{
  private final BitMatrix a;
  private final ResultPoint[] b;

  public DetectorResult(BitMatrix paramBitMatrix, ResultPoint[] paramArrayOfResultPoint)
  {
    this.a = paramBitMatrix;
    this.b = paramArrayOfResultPoint;
  }

  public BitMatrix getBits()
  {
    return this.a;
  }

  public ResultPoint[] getPoints()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.DetectorResult
 * JD-Core Version:    0.6.2
 */