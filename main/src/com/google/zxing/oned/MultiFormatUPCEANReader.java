package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;
import java.util.Vector;

public final class MultiFormatUPCEANReader extends OneDReader
{
  private final Vector a;

  public MultiFormatUPCEANReader(Hashtable paramHashtable)
  {
    Vector localVector;
    if (paramHashtable == null)
    {
      localVector = null;
      this.a = new Vector();
      if (localVector != null)
      {
        if (!localVector.contains(BarcodeFormat.EAN_13))
          break label164;
        this.a.addElement(new EAN13Reader());
      }
    }
    while (true)
    {
      if (localVector.contains(BarcodeFormat.EAN_8))
        this.a.addElement(new EAN8Reader());
      if (localVector.contains(BarcodeFormat.UPC_E))
        this.a.addElement(new UPCEReader());
      if (this.a.isEmpty())
      {
        this.a.addElement(new EAN13Reader());
        this.a.addElement(new EAN8Reader());
        this.a.addElement(new UPCEReader());
      }
      return;
      localVector = (Vector)paramHashtable.get(DecodeHintType.POSSIBLE_FORMATS);
      break;
      label164: if (localVector.contains(BarcodeFormat.UPC_A))
        this.a.addElement(new UPCAReader());
    }
  }

  public final Result decodeRow(int paramInt, BitArray paramBitArray, Hashtable paramHashtable)
  {
    int[] arrayOfInt = UPCEANReader.findStartGuardPattern(paramBitArray);
    int i = this.a.size();
    int j = 0;
    while (j < i)
    {
      UPCEANReader localUPCEANReader = (UPCEANReader)this.a.elementAt(j);
      try
      {
        Result localResult = localUPCEANReader.decodeRow(paramInt, paramBitArray, arrayOfInt, paramHashtable);
        int k;
        Vector localVector;
        if ((BarcodeFormat.EAN_13.equals(localResult.getBarcodeFormat())) && (localResult.getText().charAt(0) == '0'))
        {
          k = 1;
          if (paramHashtable != null)
            break label150;
          localVector = null;
          label89: if ((localVector != null) && (!localVector.contains(BarcodeFormat.UPC_A)))
            break label165;
        }
        label150: label165: for (int m = 1; ; m = 0)
        {
          if ((k == 0) || (m == 0))
            break label171;
          return new Result(localResult.getText().substring(1), null, localResult.getResultPoints(), BarcodeFormat.UPC_A);
          k = 0;
          break;
          localVector = (Vector)paramHashtable.get(DecodeHintType.POSSIBLE_FORMATS);
          break label89;
        }
        label171: return localResult;
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
 * Qualified Name:     com.google.zxing.oned.MultiFormatUPCEANReader
 * JD-Core Version:    0.6.2
 */