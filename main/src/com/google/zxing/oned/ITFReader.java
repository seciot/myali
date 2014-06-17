package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;

public final class ITFReader extends OneDReader
{
  static final int[][] PATTERNS = { { 1, 1, 3, 3, 1 }, { 3, 1, 1, 1, 3 }, { 1, 3, 1, 1, 3 }, { 3, 3, 1, 1, 1 }, { 1, 1, 3, 1, 3 }, { 3, 1, 3, 1, 1 }, { 1, 3, 3, 1, 1 }, { 1, 1, 1, 3, 3 }, { 3, 1, 1, 3, 1 }, { 1, 3, 1, 3, 1 } };
  private static final int[] a = { 6, 8, 10, 12, 14, 16, 20, 24, 44 };
  private static final int[] c = { 1, 1, 1, 1 };
  private static final int[] d = { 1, 1, 3 };
  private int b = -1;

  private static int a(BitArray paramBitArray)
  {
    int i = paramBitArray.getSize();
    for (int j = 0; (j < i) && (!paramBitArray.get(j)); j++);
    if (j == i)
      throw NotFoundException.getNotFoundInstance();
    return j;
  }

  private static int a(int[] paramArrayOfInt)
  {
    int i = 107;
    int j = -1;
    int k = PATTERNS.length;
    int m = 0;
    int n;
    if (m < k)
    {
      n = patternMatchVariance(paramArrayOfInt, PATTERNS[m], 204);
      if (n >= i)
        break label62;
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
      label62: n = i;
    }
  }

  private void a(BitArray paramBitArray, int paramInt)
  {
    int i = 10 * this.b;
    for (int j = paramInt - 1; (i > 0) && (j >= 0) && (!paramBitArray.get(j)); j--)
      i--;
    if (i != 0)
      throw NotFoundException.getNotFoundInstance();
  }

  private static void a(BitArray paramBitArray, int paramInt1, int paramInt2, StringBuffer paramStringBuffer)
  {
    int[] arrayOfInt1 = new int[10];
    int[] arrayOfInt2 = new int[5];
    int[] arrayOfInt3 = new int[5];
    int k;
    for (int i = paramInt1; i < paramInt2; i = k)
    {
      recordPattern(paramBitArray, i, arrayOfInt1);
      for (int j = 0; j < 5; j++)
      {
        int n = j << 1;
        arrayOfInt2[j] = arrayOfInt1[n];
        arrayOfInt3[j] = arrayOfInt1[(n + 1)];
      }
      paramStringBuffer.append((char)(48 + a(arrayOfInt2)));
      paramStringBuffer.append((char)(48 + a(arrayOfInt3)));
      k = i;
      for (int m = 0; m < arrayOfInt1.length; m++)
        k += arrayOfInt1[m];
    }
  }

  private static int[] a(BitArray paramBitArray, int paramInt, int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    int[] arrayOfInt = new int[i];
    int j = paramBitArray.getSize();
    int k = paramInt;
    int m = 0;
    int n = 0;
    if (paramInt < j)
    {
      if ((n ^ paramBitArray.get(paramInt)) != 0)
        arrayOfInt[m] = (1 + arrayOfInt[m]);
      while (true)
      {
        paramInt++;
        break;
        if (m == i - 1)
        {
          if (patternMatchVariance(arrayOfInt, paramArrayOfInt, 204) < 107)
            return new int[] { k, paramInt };
          k += arrayOfInt[0] + arrayOfInt[1];
          for (int i1 = 2; i1 < i; i1++)
            arrayOfInt[(i1 - 2)] = arrayOfInt[i1];
          arrayOfInt[(i - 2)] = 0;
          arrayOfInt[(i - 1)] = 0;
          m--;
        }
        while (true)
        {
          arrayOfInt[m] = 1;
          if (n != 0)
            break label174;
          n = 1;
          break;
          m++;
        }
        label174: n = 0;
      }
    }
    throw NotFoundException.getNotFoundInstance();
  }

  final int[] decodeEnd(BitArray paramBitArray)
  {
    paramBitArray.reverse();
    try
    {
      int[] arrayOfInt = a(paramBitArray, a(paramBitArray), d);
      a(paramBitArray, arrayOfInt[0]);
      int i = arrayOfInt[0];
      arrayOfInt[0] = (paramBitArray.getSize() - arrayOfInt[1]);
      arrayOfInt[1] = (paramBitArray.getSize() - i);
      return arrayOfInt;
    }
    finally
    {
      paramBitArray.reverse();
    }
  }

  public final Result decodeRow(int paramInt, BitArray paramBitArray, Hashtable paramHashtable)
  {
    int[] arrayOfInt1 = decodeStart(paramBitArray);
    int[] arrayOfInt2 = decodeEnd(paramBitArray);
    StringBuffer localStringBuffer = new StringBuffer(20);
    a(paramBitArray, arrayOfInt1[1], arrayOfInt2[0], localStringBuffer);
    String str = localStringBuffer.toString();
    if (paramHashtable != null);
    for (int[] arrayOfInt3 = (int[])paramHashtable.get(DecodeHintType.ALLOWED_LENGTHS); ; arrayOfInt3 = null)
    {
      if (arrayOfInt3 == null)
        arrayOfInt3 = a;
      int i = str.length();
      int j = 0;
      if (j < arrayOfInt3.length)
        if (i != arrayOfInt3[j]);
      for (int k = 1; ; k = 0)
      {
        if (k == 0)
        {
          throw FormatException.getFormatInstance();
          j++;
          break;
        }
        ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
        arrayOfResultPoint[0] = new ResultPoint(arrayOfInt1[1], paramInt);
        arrayOfResultPoint[1] = new ResultPoint(arrayOfInt2[0], paramInt);
        return new Result(str, null, arrayOfResultPoint, BarcodeFormat.ITF);
      }
    }
  }

  final int[] decodeStart(BitArray paramBitArray)
  {
    int[] arrayOfInt = a(paramBitArray, a(paramBitArray), c);
    this.b = (arrayOfInt[1] - arrayOfInt[0] >> 2);
    a(paramBitArray, arrayOfInt[0]);
    return arrayOfInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.ITFReader
 * JD-Core Version:    0.6.2
 */