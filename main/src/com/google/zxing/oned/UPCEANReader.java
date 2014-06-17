package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.ResultPointCallback;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;

public abstract class UPCEANReader extends OneDReader
{
  static final int[][] L_AND_G_PATTERNS;
  static final int[][] L_PATTERNS;
  static final int[] MIDDLE_PATTERN;
  static final int[] START_END_PATTERN = { 1, 1, 1 };
  private final StringBuffer a = new StringBuffer(20);
  private final UPCEANExtensionSupport b = new UPCEANExtensionSupport();
  private final EANManufacturerOrgSupport c = new EANManufacturerOrgSupport();

  static
  {
    MIDDLE_PATTERN = new int[] { 1, 1, 1, 1, 1 };
    L_PATTERNS = new int[][] { { 3, 2, 1, 1 }, { 2, 2, 2, 1 }, { 2, 1, 2, 2 }, { 1, 4, 1, 1 }, { 1, 1, 3, 2 }, { 1, 2, 3, 1 }, { 1, 1, 1, 4 }, { 1, 3, 1, 2 }, { 1, 2, 1, 3 }, { 3, 1, 1, 2 } };
    L_AND_G_PATTERNS = new int[20][];
    for (int i = 0; i < 10; i++)
      L_AND_G_PATTERNS[i] = L_PATTERNS[i];
    for (int j = 10; j < 20; j++)
    {
      int[] arrayOfInt1 = L_PATTERNS[(j - 10)];
      int[] arrayOfInt2 = new int[arrayOfInt1.length];
      for (int k = 0; k < arrayOfInt1.length; k++)
        arrayOfInt2[k] = arrayOfInt1[(-1 + (arrayOfInt1.length - k))];
      L_AND_G_PATTERNS[j] = arrayOfInt2;
    }
  }

  static int decodeDigit(BitArray paramBitArray, int[] paramArrayOfInt, int paramInt, int[][] paramArrayOfInt1)
  {
    recordPattern(paramBitArray, paramInt, paramArrayOfInt);
    int i = 107;
    int j = -1;
    int k = paramArrayOfInt1.length;
    int m = 0;
    int n;
    if (m < k)
    {
      n = patternMatchVariance(paramArrayOfInt, paramArrayOfInt1[m], 179);
      if (n >= i)
        break label73;
      j = m;
    }
    while (true)
    {
      m++;
      i = n;
      break;
      if (j >= 0)
        return j;
      throw NotFoundException.getNotFoundInstance();
      label73: n = i;
    }
  }

  static int[] findGuardPattern(BitArray paramBitArray, int paramInt, boolean paramBoolean, int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    int[] arrayOfInt = new int[i];
    int j = paramBitArray.getSize();
    boolean bool1 = false;
    int k = paramInt;
    if (k < j)
    {
      if (!paramBitArray.get(k));
      for (bool1 = true; ; bool1 = false)
      {
        if (paramBoolean == bool1)
          break label59;
        k++;
        break;
      }
    }
    label59: int m = k;
    boolean bool2 = bool1;
    int n = k;
    int i1 = 0;
    boolean bool3 = bool2;
    if (m < j)
    {
      if ((bool3 ^ paramBitArray.get(m)))
        arrayOfInt[i1] = (1 + arrayOfInt[i1]);
      while (true)
      {
        m++;
        break;
        if (i1 == i - 1)
        {
          if (patternMatchVariance(arrayOfInt, paramArrayOfInt, 179) < 107)
            return new int[] { n, m };
          n += arrayOfInt[0] + arrayOfInt[1];
          for (int i2 = 2; i2 < i; i2++)
            arrayOfInt[(i2 - 2)] = arrayOfInt[i2];
          arrayOfInt[(i - 2)] = 0;
          arrayOfInt[(i - 1)] = 0;
          i1--;
        }
        while (true)
        {
          arrayOfInt[i1] = 1;
          if (bool3)
            break label236;
          bool3 = true;
          break;
          i1++;
        }
        label236: bool3 = false;
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }

  static int[] findStartGuardPattern(BitArray paramBitArray)
  {
    int i = 0;
    int[] arrayOfInt = null;
    boolean bool = false;
    while (!bool)
    {
      arrayOfInt = findGuardPattern(paramBitArray, i, false, START_END_PATTERN);
      int j = arrayOfInt[0];
      i = arrayOfInt[1];
      int k = j - (i - j);
      if (k >= 0)
        bool = paramBitArray.isRange(k, j, false);
    }
    return arrayOfInt;
  }

  boolean checkChecksum(String paramString)
  {
    int i = paramString.length();
    boolean bool = false;
    if (i != 0)
    {
      int j = i - 2;
      int k = 0;
      while (j >= 0)
      {
        int i3 = '\0*0' + paramString.charAt(j);
        if ((i3 < 0) || (i3 > 9))
          throw FormatException.getFormatInstance();
        k += i3;
        j -= 2;
      }
      int m = k * 3;
      for (int n = i - 1; n >= 0; n -= 2)
      {
        int i2 = '\0*0' + paramString.charAt(n);
        if ((i2 < 0) || (i2 > 9))
          throw FormatException.getFormatInstance();
        m += i2;
      }
      int i1 = m % 10;
      bool = false;
      if (i1 == 0)
        bool = true;
    }
    return bool;
  }

  int[] decodeEnd(BitArray paramBitArray, int paramInt)
  {
    return findGuardPattern(paramBitArray, paramInt, false, START_END_PATTERN);
  }

  protected abstract int decodeMiddle(BitArray paramBitArray, int[] paramArrayOfInt, StringBuffer paramStringBuffer);

  public Result decodeRow(int paramInt, BitArray paramBitArray, Hashtable paramHashtable)
  {
    return decodeRow(paramInt, paramBitArray, findStartGuardPattern(paramBitArray), paramHashtable);
  }

  public Result decodeRow(int paramInt, BitArray paramBitArray, int[] paramArrayOfInt, Hashtable paramHashtable)
  {
    if (paramHashtable == null);
    StringBuffer localStringBuffer;
    int[] arrayOfInt;
    for (ResultPointCallback localResultPointCallback = null; ; localResultPointCallback = (ResultPointCallback)paramHashtable.get(DecodeHintType.NEED_RESULT_POINT_CALLBACK))
    {
      if (localResultPointCallback != null)
        localResultPointCallback.foundPossibleResultPoint(new ResultPoint((paramArrayOfInt[0] + paramArrayOfInt[1]) / 2.0F, paramInt));
      localStringBuffer = this.a;
      localStringBuffer.setLength(0);
      int i = decodeMiddle(paramBitArray, paramArrayOfInt, localStringBuffer);
      if (localResultPointCallback != null)
        localResultPointCallback.foundPossibleResultPoint(new ResultPoint(i, paramInt));
      arrayOfInt = decodeEnd(paramBitArray, i);
      if (localResultPointCallback != null)
        localResultPointCallback.foundPossibleResultPoint(new ResultPoint((arrayOfInt[0] + arrayOfInt[1]) / 2.0F, paramInt));
      int j = arrayOfInt[1];
      int k = j + (j - arrayOfInt[0]);
      if ((k < paramBitArray.getSize()) && (paramBitArray.isRange(j, k, false)))
        break;
      throw NotFoundException.getNotFoundInstance();
    }
    String str1 = localStringBuffer.toString();
    if (!checkChecksum(str1))
      throw ChecksumException.getChecksumInstance();
    float f1 = (paramArrayOfInt[1] + paramArrayOfInt[0]) / 2.0F;
    float f2 = (arrayOfInt[1] + arrayOfInt[0]) / 2.0F;
    BarcodeFormat localBarcodeFormat = getBarcodeFormat();
    ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
    arrayOfResultPoint[0] = new ResultPoint(f1, paramInt);
    arrayOfResultPoint[1] = new ResultPoint(f2, paramInt);
    Result localResult1 = new Result(str1, null, arrayOfResultPoint, localBarcodeFormat);
    try
    {
      Result localResult2 = this.b.decodeRow(paramInt, paramBitArray, arrayOfInt[1]);
      localResult1.putAllMetadata(localResult2.getResultMetadata());
      localResult1.addResultPoints(localResult2.getResultPoints());
      label325: if ((BarcodeFormat.EAN_13.equals(localBarcodeFormat)) || (BarcodeFormat.UPC_A.equals(localBarcodeFormat)))
      {
        String str2 = this.c.lookupCountryIdentifier(str1);
        if (str2 != null)
          localResult1.putMetadata(ResultMetadataType.POSSIBLE_COUNTRY, str2);
      }
      return localResult1;
    }
    catch (ReaderException localReaderException)
    {
      break label325;
    }
  }

  abstract BarcodeFormat getBarcodeFormat();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.UPCEANReader
 * JD-Core Version:    0.6.2
 */