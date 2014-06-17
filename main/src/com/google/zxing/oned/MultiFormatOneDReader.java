package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.BitArray;
import com.google.zxing.oned.rss.RSS14Reader;
import com.google.zxing.oned.rss.expanded.RSSExpandedReader;
import java.util.Hashtable;
import java.util.Vector;

public final class MultiFormatOneDReader extends OneDReader
{
  private final Vector a;

  public MultiFormatOneDReader(Hashtable paramHashtable)
  {
    Vector localVector;
    if (paramHashtable == null)
    {
      localVector = null;
      if ((paramHashtable == null) || (paramHashtable.get(DecodeHintType.ASSUME_CODE_39_CHECK_DIGIT) == null))
        break label389;
    }
    label389: for (boolean bool = true; ; bool = false)
    {
      this.a = new Vector();
      if (localVector != null)
      {
        if ((localVector.contains(BarcodeFormat.EAN_13)) || (localVector.contains(BarcodeFormat.UPC_A)) || (localVector.contains(BarcodeFormat.EAN_8)) || (localVector.contains(BarcodeFormat.UPC_E)))
          this.a.addElement(new MultiFormatUPCEANReader(paramHashtable));
        if (localVector.contains(BarcodeFormat.CODE_39))
          this.a.addElement(new Code39Reader(bool));
        if (localVector.contains(BarcodeFormat.CODE_93))
          this.a.addElement(new Code93Reader());
        if (localVector.contains(BarcodeFormat.CODE_128))
          this.a.addElement(new Code128Reader());
        if (localVector.contains(BarcodeFormat.ITF))
          this.a.addElement(new ITFReader());
        if (localVector.contains(BarcodeFormat.CODABAR))
          this.a.addElement(new CodaBarReader());
        if (localVector.contains(BarcodeFormat.RSS_14))
          this.a.addElement(new RSS14Reader());
        if (localVector.contains(BarcodeFormat.RSS_EXPANDED))
          this.a.addElement(new RSSExpandedReader());
      }
      if (this.a.isEmpty())
      {
        this.a.addElement(new MultiFormatUPCEANReader(paramHashtable));
        this.a.addElement(new Code39Reader());
        this.a.addElement(new Code93Reader());
        this.a.addElement(new Code128Reader());
        this.a.addElement(new ITFReader());
        this.a.addElement(new RSS14Reader());
        this.a.addElement(new RSSExpandedReader());
      }
      return;
      localVector = (Vector)paramHashtable.get(DecodeHintType.POSSIBLE_FORMATS);
      break;
    }
  }

  public final Result decodeRow(int paramInt, BitArray paramBitArray, Hashtable paramHashtable)
  {
    int i = this.a.size();
    int j = 0;
    while (j < i)
    {
      OneDReader localOneDReader = (OneDReader)this.a.elementAt(j);
      try
      {
        Result localResult = localOneDReader.decodeRow(paramInt, paramBitArray, paramHashtable);
        return localResult;
      }
      catch (ReaderException localReaderException)
      {
        j++;
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }

  public final void reset()
  {
    int i = this.a.size();
    for (int j = 0; j < i; j++)
      ((Reader)this.a.elementAt(j)).reset();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.MultiFormatOneDReader
 * JD-Core Version:    0.6.2
 */