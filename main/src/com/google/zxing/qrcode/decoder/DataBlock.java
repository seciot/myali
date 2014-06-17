package com.google.zxing.qrcode.decoder;

final class DataBlock
{
  private final int a;
  private final byte[] b;

  private DataBlock(int paramInt, byte[] paramArrayOfByte)
  {
    this.a = paramInt;
    this.b = paramArrayOfByte;
  }

  static DataBlock[] getDataBlocks(byte[] paramArrayOfByte, Version paramVersion, ErrorCorrectionLevel paramErrorCorrectionLevel)
  {
    if (paramArrayOfByte.length != paramVersion.getTotalCodewords())
      throw new IllegalArgumentException();
    Version.ECBlocks localECBlocks = paramVersion.getECBlocksForLevel(paramErrorCorrectionLevel);
    Version.ECB[] arrayOfECB = localECBlocks.getECBlocks();
    int i = 0;
    int j = 0;
    while (i < arrayOfECB.length)
    {
      j += arrayOfECB[i].getCount();
      i++;
    }
    DataBlock[] arrayOfDataBlock = new DataBlock[j];
    int k = 0;
    int m = 0;
    while (k < arrayOfECB.length)
    {
      Version.ECB localECB = arrayOfECB[k];
      int i17 = 0;
      while (i17 < localECB.getCount())
      {
        int i18 = localECB.getDataCodewords();
        int i19 = i18 + localECBlocks.getECCodewordsPerBlock();
        int i20 = m + 1;
        arrayOfDataBlock[m] = new DataBlock(i18, new byte[i19]);
        i17++;
        m = i20;
      }
      k++;
    }
    int n = arrayOfDataBlock[0].b.length;
    for (int i1 = -1 + arrayOfDataBlock.length; (i1 >= 0) && (arrayOfDataBlock[i1].b.length != n); i1--);
    int i2 = i1 + 1;
    int i3 = n - localECBlocks.getECCodewordsPerBlock();
    int i4 = 0;
    int i14;
    for (int i5 = 0; i4 < i3; i5 = i14)
    {
      i14 = i5;
      int i15 = 0;
      while (i15 < m)
      {
        byte[] arrayOfByte3 = arrayOfDataBlock[i15].b;
        int i16 = i14 + 1;
        arrayOfByte3[i4] = paramArrayOfByte[i14];
        i15++;
        i14 = i16;
      }
      i4++;
    }
    int i6 = i2;
    while (i6 < m)
    {
      byte[] arrayOfByte2 = arrayOfDataBlock[i6].b;
      int i13 = i5 + 1;
      arrayOfByte2[i3] = paramArrayOfByte[i5];
      i6++;
      i5 = i13;
    }
    int i7 = arrayOfDataBlock[0].b.length;
    while (i3 < i7)
    {
      int i8 = i5;
      int i9 = 0;
      if (i9 < m)
      {
        if (i9 < i2);
        for (int i10 = i3; ; i10 = i3 + 1)
        {
          byte[] arrayOfByte1 = arrayOfDataBlock[i9].b;
          int i11 = i8 + 1;
          arrayOfByte1[i10] = paramArrayOfByte[i8];
          int i12 = i9 + 1;
          i8 = i11;
          i9 = i12;
          break;
        }
      }
      i3++;
      i5 = i8;
    }
    return arrayOfDataBlock;
  }

  final byte[] getCodewords()
  {
    return this.b;
  }

  final int getNumDataCodewords()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataBlock
 * JD-Core Version:    0.6.2
 */