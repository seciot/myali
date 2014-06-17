package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import com.google.zxing.qrcode.encoder.QRCode;
import java.util.Hashtable;

public final class QRCodeWriter
  implements Writer
{
  private static BitMatrix a(QRCode paramQRCode, int paramInt1, int paramInt2)
  {
    ByteMatrix localByteMatrix = paramQRCode.getMatrix();
    int i = localByteMatrix.getWidth();
    int j = localByteMatrix.getHeight();
    int k = i + 8;
    int m = j + 8;
    int n = Math.max(paramInt1, k);
    int i1 = Math.max(paramInt2, m);
    int i2 = Math.min(n / k, i1 / m);
    int i3 = (n - i * i2) / 2;
    int i4 = (i1 - j * i2) / 2;
    BitMatrix localBitMatrix = new BitMatrix(n, i1);
    int i5 = i4;
    int i9;
    for (int i6 = 0; i6 < j; i6 = i9)
    {
      int i7 = i3;
      int i8 = 0;
      while (i8 < i)
      {
        if (localByteMatrix.get(i8, i6) == 1)
          localBitMatrix.setRegion(i7, i5, i2, i2);
        i8++;
        i7 += i2;
      }
      i9 = i6 + 1;
      i5 += i2;
    }
    return localBitMatrix;
  }

  public final BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2)
  {
    return encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, null);
  }

  public final BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Hashtable paramHashtable)
  {
    if ((paramString == null) || (paramString.length() == 0))
      throw new IllegalArgumentException("Found empty contents");
    if (paramBarcodeFormat != BarcodeFormat.QR_CODE)
      throw new IllegalArgumentException("Can only encode QR_CODE, but got " + paramBarcodeFormat);
    if ((paramInt1 < 0) || (paramInt2 < 0))
      throw new IllegalArgumentException("Requested dimensions are too small: " + paramInt1 + 'x' + paramInt2);
    ErrorCorrectionLevel localErrorCorrectionLevel1 = ErrorCorrectionLevel.L;
    ErrorCorrectionLevel localErrorCorrectionLevel2;
    if (paramHashtable != null)
    {
      localErrorCorrectionLevel2 = (ErrorCorrectionLevel)paramHashtable.get(EncodeHintType.ERROR_CORRECTION);
      if (localErrorCorrectionLevel2 == null);
    }
    while (true)
    {
      QRCode localQRCode = new QRCode();
      Encoder.encode(paramString, localErrorCorrectionLevel2, paramHashtable, localQRCode);
      return a(localQRCode, paramInt1, paramInt2);
      localErrorCorrectionLevel2 = localErrorCorrectionLevel1;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.qrcode.QRCodeWriter
 * JD-Core Version:    0.6.2
 */