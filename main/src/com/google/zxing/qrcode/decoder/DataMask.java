package com.google.zxing.qrcode.decoder;

import com.google.zxing.common.BitMatrix;

abstract class DataMask
{
  private static final DataMask[] a = arrayOfDataMask;

  static
  {
    DataMask[] arrayOfDataMask = new DataMask[8];
    arrayOfDataMask[0] = new DataMask.DataMask000(null);
    arrayOfDataMask[1] = new DataMask.DataMask001(null);
    arrayOfDataMask[2] = new DataMask.DataMask010(null);
    arrayOfDataMask[3] = new DataMask.DataMask011(null);
    arrayOfDataMask[4] = new DataMask.DataMask100(null);
    arrayOfDataMask[5] = new DataMask.DataMask101(null);
    arrayOfDataMask[6] = new DataMask.DataMask110(null);
    arrayOfDataMask[7] = new DataMask.DataMask111(null);
  }

  private DataMask()
  {
  }

  DataMask(DataMask.1 param1)
  {
    this();
  }

  static DataMask forReference(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 7))
      throw new IllegalArgumentException();
    return a[paramInt];
  }

  abstract boolean isMasked(int paramInt1, int paramInt2);

  final void unmaskBitMatrix(BitMatrix paramBitMatrix, int paramInt)
  {
    for (int i = 0; i < paramInt; i++)
      for (int j = 0; j < paramInt; j++)
        if (isMasked(i, j))
          paramBitMatrix.flip(j, i);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask
 * JD-Core Version:    0.6.2
 */