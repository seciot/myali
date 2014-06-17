package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.FormatException;
import com.google.zxing.Result;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;

public final class UPCAReader extends UPCEANReader
{
  private final UPCEANReader a = new EAN13Reader();

  private static Result a(Result paramResult)
  {
    String str = paramResult.getText();
    if (str.charAt(0) == '0')
      return new Result(str.substring(1), null, paramResult.getResultPoints(), BarcodeFormat.UPC_A);
    throw FormatException.getFormatInstance();
  }

  public final Result decode(BinaryBitmap paramBinaryBitmap)
  {
    return a(this.a.decode(paramBinaryBitmap));
  }

  public final Result decode(BinaryBitmap paramBinaryBitmap, Hashtable paramHashtable)
  {
    return a(this.a.decode(paramBinaryBitmap, paramHashtable));
  }

  protected final int decodeMiddle(BitArray paramBitArray, int[] paramArrayOfInt, StringBuffer paramStringBuffer)
  {
    return this.a.decodeMiddle(paramBitArray, paramArrayOfInt, paramStringBuffer);
  }

  public final Result decodeRow(int paramInt, BitArray paramBitArray, Hashtable paramHashtable)
  {
    return a(this.a.decodeRow(paramInt, paramBitArray, paramHashtable));
  }

  public final Result decodeRow(int paramInt, BitArray paramBitArray, int[] paramArrayOfInt, Hashtable paramHashtable)
  {
    return a(this.a.decodeRow(paramInt, paramBitArray, paramArrayOfInt, paramHashtable));
  }

  final BarcodeFormat getBarcodeFormat()
  {
    return BarcodeFormat.UPC_A;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.UPCAReader
 * JD-Core Version:    0.6.2
 */