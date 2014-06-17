package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.detector.Detector;
import java.util.Hashtable;

public class QRCodeReader
  implements Reader
{
  private static final ResultPoint[] a = new ResultPoint[0];
  private final Decoder b = new Decoder();

  public Result decode(BinaryBitmap paramBinaryBitmap)
  {
    return decode(paramBinaryBitmap, null);
  }

  public Result decode(BinaryBitmap paramBinaryBitmap, Hashtable paramHashtable)
  {
    DecoderResult localDecoderResult;
    if ((paramHashtable != null) && (paramHashtable.containsKey(DecodeHintType.PURE_BARCODE)))
    {
      BitMatrix localBitMatrix1 = paramBinaryBitmap.getBlackMatrix();
      int[] arrayOfInt1 = localBitMatrix1.getTopLeftOnBit();
      int[] arrayOfInt2 = localBitMatrix1.getBottomRightOnBit();
      if ((arrayOfInt1 == null) || (arrayOfInt2 == null))
        throw NotFoundException.getNotFoundInstance();
      int i = localBitMatrix1.getHeight();
      int j = localBitMatrix1.getWidth();
      int k = arrayOfInt1[0];
      for (int m = arrayOfInt1[1]; (k < j) && (m < i) && (localBitMatrix1.get(k, m)); m++)
        k++;
      if ((k == j) || (m == i))
        throw NotFoundException.getNotFoundInstance();
      int n = k - arrayOfInt1[0];
      if (n == 0)
        throw NotFoundException.getNotFoundInstance();
      int i1 = arrayOfInt1[1];
      int i2 = arrayOfInt2[1];
      int i3 = arrayOfInt1[0];
      int i4 = (1 + (arrayOfInt2[0] - i3)) / n;
      int i5 = (1 + (i2 - i1)) / n;
      if ((i4 == 0) || (i5 == 0))
        throw NotFoundException.getNotFoundInstance();
      if (i5 != i4)
        throw NotFoundException.getNotFoundInstance();
      int i6 = n >> 1;
      int i7 = i1 + i6;
      int i8 = i3 + i6;
      BitMatrix localBitMatrix2 = new BitMatrix(i4, i5);
      for (int i9 = 0; i9 < i5; i9++)
      {
        int i10 = i7 + i9 * n;
        for (int i11 = 0; i11 < i4; i11++)
          if (localBitMatrix1.get(i8 + i11 * n, i10))
            localBitMatrix2.set(i11, i9);
      }
      localDecoderResult = this.b.decode(localBitMatrix2, paramHashtable);
    }
    DetectorResult localDetectorResult;
    for (ResultPoint[] arrayOfResultPoint = a; ; arrayOfResultPoint = localDetectorResult.getPoints())
    {
      Result localResult = new Result(localDecoderResult.getText(), localDecoderResult.getRawBytes(), arrayOfResultPoint, BarcodeFormat.QR_CODE);
      if (localDecoderResult.getByteSegments() != null)
        localResult.putMetadata(ResultMetadataType.BYTE_SEGMENTS, localDecoderResult.getByteSegments());
      if (localDecoderResult.getECLevel() != null)
        localResult.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, localDecoderResult.getECLevel().toString());
      return localResult;
      localDetectorResult = new Detector(paramBinaryBitmap.getBlackMatrix()).detect(paramHashtable);
      localDecoderResult = this.b.decode(localDetectorResult.getBits(), paramHashtable);
    }
  }

  protected Decoder getDecoder()
  {
    return this.b;
  }

  public void reset()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.QRCodeReader
 * JD-Core Version:    0.6.2
 */