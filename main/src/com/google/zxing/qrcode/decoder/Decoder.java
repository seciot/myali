package com.google.zxing.qrcode.decoder;

import com.google.zxing.ChecksumException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonDecoder;
import com.google.zxing.common.reedsolomon.ReedSolomonException;
import java.util.Hashtable;

public final class Decoder
{
  private final ReedSolomonDecoder a = new ReedSolomonDecoder(GenericGF.QR_CODE_FIELD_256);

  public final DecoderResult decode(BitMatrix paramBitMatrix)
  {
    return decode(paramBitMatrix, null);
  }

  public final DecoderResult decode(BitMatrix paramBitMatrix, Hashtable paramHashtable)
  {
    BitMatrixParser localBitMatrixParser = new BitMatrixParser(paramBitMatrix);
    Version localVersion = localBitMatrixParser.readVersion();
    ErrorCorrectionLevel localErrorCorrectionLevel = localBitMatrixParser.readFormatInformation().getErrorCorrectionLevel();
    DataBlock[] arrayOfDataBlock = DataBlock.getDataBlocks(localBitMatrixParser.readCodewords(), localVersion, localErrorCorrectionLevel);
    int i = 0;
    int j = 0;
    while (i < arrayOfDataBlock.length)
    {
      j += arrayOfDataBlock[i].getNumDataCodewords();
      i++;
    }
    byte[] arrayOfByte1 = new byte[j];
    int k = 0;
    int m = 0;
    while (k < arrayOfDataBlock.length)
    {
      DataBlock localDataBlock = arrayOfDataBlock[k];
      byte[] arrayOfByte2 = localDataBlock.getCodewords();
      int n = localDataBlock.getNumDataCodewords();
      int i1 = arrayOfByte2.length;
      int[] arrayOfInt = new int[i1];
      for (int i2 = 0; i2 < i1; i2++)
        arrayOfInt[i2] = (0xFF & arrayOfByte2[i2]);
      int i3 = arrayOfByte2.length - n;
      try
      {
        this.a.decode(arrayOfInt, i3);
        for (int i4 = 0; i4 < n; i4++)
          arrayOfByte2[i4] = ((byte)arrayOfInt[i4]);
      }
      catch (ReedSolomonException localReedSolomonException)
      {
        throw ChecksumException.getChecksumInstance();
      }
      int i5 = 0;
      while (i5 < n)
      {
        int i6 = m + 1;
        arrayOfByte1[m] = arrayOfByte2[i5];
        i5++;
        m = i6;
      }
      k++;
    }
    return DecodedBitStreamParser.decode(arrayOfByte1, localVersion, localErrorCorrectionLevel, paramHashtable);
  }

  public final DecoderResult decode(boolean[][] paramArrayOfBoolean)
  {
    return decode(paramArrayOfBoolean, null);
  }

  public final DecoderResult decode(boolean[][] paramArrayOfBoolean, Hashtable paramHashtable)
  {
    int i = paramArrayOfBoolean.length;
    BitMatrix localBitMatrix = new BitMatrix(i);
    for (int j = 0; j < i; j++)
      for (int k = 0; k < i; k++)
        if (paramArrayOfBoolean[j][k] != 0)
          localBitMatrix.set(k, j);
    return decode(localBitMatrix, paramHashtable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.decoder.Decoder
 * JD-Core Version:    0.6.2
 */