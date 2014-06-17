package com.google.zxing;

import com.google.zxing.aztec.AztecReader;
import com.google.zxing.datamatrix.DataMatrixReader;
import com.google.zxing.oned.MultiFormatOneDReader;
import com.google.zxing.pdf417.PDF417Reader;
import com.google.zxing.qrcode.QRCodeReader;
import java.util.Hashtable;
import java.util.Vector;

public final class MultiFormatReader
  implements Reader
{
  private Hashtable a;
  private Vector b;

  private Result a(BinaryBitmap paramBinaryBitmap)
  {
    int i = this.b.size();
    int j = 0;
    while (j < i)
    {
      Reader localReader = (Reader)this.b.elementAt(j);
      try
      {
        Result localResult = localReader.decode(paramBinaryBitmap, this.a);
        return localResult;
      }
      catch (ReaderException localReaderException)
      {
        j++;
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }

  public final Result decode(BinaryBitmap paramBinaryBitmap)
  {
    setHints(null);
    return a(paramBinaryBitmap);
  }

  public final Result decode(BinaryBitmap paramBinaryBitmap, Hashtable paramHashtable)
  {
    setHints(paramHashtable);
    return a(paramBinaryBitmap);
  }

  public final Result decodeWithState(BinaryBitmap paramBinaryBitmap)
  {
    if (this.b == null)
      setHints(null);
    return a(paramBinaryBitmap);
  }

  public final void reset()
  {
    int i = this.b.size();
    for (int j = 0; j < i; j++)
      ((Reader)this.b.elementAt(j)).reset();
  }

  public final void setHints(Hashtable paramHashtable)
  {
    this.a = paramHashtable;
    int i;
    if ((paramHashtable != null) && (paramHashtable.containsKey(DecodeHintType.TRY_HARDER)))
    {
      i = 1;
      if (paramHashtable != null)
        break label406;
    }
    label406: for (Vector localVector = null; ; localVector = (Vector)paramHashtable.get(DecodeHintType.POSSIBLE_FORMATS))
    {
      this.b = new Vector();
      if (localVector != null)
      {
        int j;
        if ((!localVector.contains(BarcodeFormat.UPC_A)) && (!localVector.contains(BarcodeFormat.UPC_E)) && (!localVector.contains(BarcodeFormat.EAN_13)) && (!localVector.contains(BarcodeFormat.EAN_8)) && (!localVector.contains(BarcodeFormat.CODE_39)) && (!localVector.contains(BarcodeFormat.CODE_93)) && (!localVector.contains(BarcodeFormat.CODE_128)) && (!localVector.contains(BarcodeFormat.ITF)) && (!localVector.contains(BarcodeFormat.RSS_14)))
        {
          boolean bool = localVector.contains(BarcodeFormat.RSS_EXPANDED);
          j = 0;
          if (!bool);
        }
        else
        {
          j = 1;
        }
        if ((j != 0) && (i == 0))
          this.b.addElement(new MultiFormatOneDReader(paramHashtable));
        if (localVector.contains(BarcodeFormat.QR_CODE))
          this.b.addElement(new QRCodeReader());
        if (localVector.contains(BarcodeFormat.DATA_MATRIX))
          this.b.addElement(new DataMatrixReader());
        if (localVector.contains(BarcodeFormat.AZTEC))
          this.b.addElement(new AztecReader());
        if (localVector.contains(BarcodeFormat.PDF_417))
          this.b.addElement(new PDF417Reader());
        if ((j != 0) && (i != 0))
          this.b.addElement(new MultiFormatOneDReader(paramHashtable));
      }
      if (this.b.isEmpty())
      {
        if (i == 0)
          this.b.addElement(new MultiFormatOneDReader(paramHashtable));
        this.b.addElement(new QRCodeReader());
        this.b.addElement(new DataMatrixReader());
        this.b.addElement(new AztecReader());
        this.b.addElement(new PDF417Reader());
        if (i != 0)
          this.b.addElement(new MultiFormatOneDReader(paramHashtable));
      }
      return;
      i = 0;
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.MultiFormatReader
 * JD-Core Version:    0.6.2
 */