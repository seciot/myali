package com.google.zxing.oned;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Enumeration;
import java.util.Hashtable;

public abstract class OneDReader
  implements Reader
{
  protected static final int INTEGER_MATH_SHIFT = 8;
  protected static final int PATTERN_MATCH_RESULT_SCALE_FACTOR = 256;

  private Result a(BinaryBitmap paramBinaryBitmap, Hashtable paramHashtable)
  {
    int i = paramBinaryBitmap.getWidth();
    int j = paramBinaryBitmap.getHeight();
    BitArray localBitArray1 = new BitArray(i);
    int k = j >> 1;
    int m;
    int n;
    label53: int i1;
    int i2;
    label73: int i3;
    Object localObject1;
    Object localObject2;
    if ((paramHashtable != null) && (paramHashtable.containsKey(DecodeHintType.TRY_HARDER)))
    {
      m = 1;
      if (m == 0)
        break label255;
      n = 8;
      i1 = Math.max(1, j >> n);
      if (m == 0)
        break label261;
      i2 = j;
      i3 = 0;
      localObject1 = localBitArray1;
      localObject2 = paramHashtable;
    }
    while (true)
      while (true)
      {
        if (i3 >= i2)
          break label408;
        int i4 = i3 + 1 >> 1;
        int i5;
        label108: label113: int i6;
        if ((i3 & 0x1) == 0)
        {
          i5 = 1;
          if (i5 == 0)
            break label274;
          i6 = k + i4 * i1;
          if ((i6 < 0) || (i6 >= j))
            break label408;
        }
        try
        {
          BitArray localBitArray2 = paramBinaryBitmap.getBlackRow(i6, (BitArray)localObject1);
          localObject1 = localBitArray2;
          int i7 = 0;
          while (true)
          {
            if (i7 >= 2)
              break label402;
            if (i7 == 1)
            {
              ((BitArray)localObject1).reverse();
              if ((localObject2 != null) && (((Hashtable)localObject2).containsKey(DecodeHintType.NEED_RESULT_POINT_CALLBACK)))
              {
                Hashtable localHashtable = new Hashtable();
                Enumeration localEnumeration = ((Hashtable)localObject2).keys();
                while (true)
                  if (localEnumeration.hasMoreElements())
                  {
                    Object localObject3 = localEnumeration.nextElement();
                    if (!localObject3.equals(DecodeHintType.NEED_RESULT_POINT_CALLBACK))
                    {
                      localHashtable.put(localObject3, ((Hashtable)localObject2).get(localObject3));
                      continue;
                      m = 0;
                      break;
                      label255: n = 5;
                      break label53;
                      label261: i2 = 15;
                      break label73;
                      i5 = 0;
                      break label108;
                      label274: i4 = -i4;
                      break label113;
                    }
                  }
                localObject2 = localHashtable;
              }
            }
            try
            {
              Result localResult = decodeRow(i6, (BitArray)localObject1, (Hashtable)localObject2);
              if (i7 == 1)
              {
                localResult.putMetadata(ResultMetadataType.ORIENTATION, new Integer(180));
                ResultPoint[] arrayOfResultPoint = localResult.getResultPoints();
                arrayOfResultPoint[0] = new ResultPoint(i - arrayOfResultPoint[0].getX() - 1.0F, arrayOfResultPoint[0].getY());
                arrayOfResultPoint[1] = new ResultPoint(i - arrayOfResultPoint[1].getX() - 1.0F, arrayOfResultPoint[1].getY());
              }
              return localResult;
            }
            catch (ReaderException localReaderException)
            {
              i7++;
            }
          }
        }
        catch (NotFoundException localNotFoundException)
        {
          label402: i3++;
        }
      }
    label408: throw NotFoundException.getNotFoundInstance();
  }

  protected static int patternMatchVariance(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    int i = paramArrayOfInt1.length;
    int j = 0;
    int k = 0;
    int m = 0;
    while (j < i)
    {
      m += paramArrayOfInt1[j];
      k += paramArrayOfInt2[j];
      j++;
    }
    if (m < k);
    int i3;
    label143: 
    while (true)
    {
      return 2147483647;
      int n = (m << 8) / k;
      int i1 = paramInt * n >> 8;
      int i2 = 0;
      i3 = 0;
      if (i2 >= i)
        break;
      int i4 = paramArrayOfInt1[i2] << 8;
      int i5 = n * paramArrayOfInt2[i2];
      if (i4 > i5);
      for (int i6 = i4 - i5; ; i6 = i5 - i4)
      {
        if (i6 > i1)
          break label143;
        i3 += i6;
        i2++;
        break;
      }
    }
    return i3 / m;
  }

  protected static void recordPattern(BitArray paramBitArray, int paramInt, int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    for (int j = 0; j < i; j++)
      paramArrayOfInt[j] = 0;
    int k = paramBitArray.getSize();
    if (paramInt >= k)
      throw NotFoundException.getNotFoundInstance();
    if (!paramBitArray.get(paramInt));
    int n;
    int i1;
    int i5;
    for (int m = 1; ; m = 0)
    {
      n = m;
      i1 = 0;
      while (true)
      {
        if (paramInt >= k)
          break label150;
        if ((n ^ paramBitArray.get(paramInt)) == 0)
          break;
        paramArrayOfInt[i1] = (1 + paramArrayOfInt[i1]);
        i5 = n;
        paramInt++;
        n = i5;
      }
    }
    int i2 = i1 + 1;
    if (i2 != i)
    {
      paramArrayOfInt[i2] = 1;
      if (n == 0);
      for (int i3 = 1; ; i3 = 0)
      {
        int i4 = i2;
        i5 = i3;
        i1 = i4;
        break;
      }
      label150: i2 = i1;
    }
    if ((i2 != i) && ((i2 != i - 1) || (paramInt != k)))
      throw NotFoundException.getNotFoundInstance();
  }

  protected static void recordPatternInReverse(BitArray paramBitArray, int paramInt, int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    boolean bool = paramBitArray.get(paramInt);
    while ((paramInt > 0) && (i >= 0))
    {
      paramInt--;
      if (paramBitArray.get(paramInt) != bool)
      {
        i--;
        if (!bool)
          bool = true;
        else
          bool = false;
      }
    }
    if (i >= 0)
      throw NotFoundException.getNotFoundInstance();
    recordPattern(paramBitArray, paramInt + 1, paramArrayOfInt);
  }

  public Result decode(BinaryBitmap paramBinaryBitmap)
  {
    return decode(paramBinaryBitmap, null);
  }

  public Result decode(BinaryBitmap paramBinaryBitmap, Hashtable paramHashtable)
  {
    try
    {
      Result localResult2 = a(paramBinaryBitmap, paramHashtable);
      return localResult2;
    }
    catch (NotFoundException localNotFoundException)
    {
      int i;
      if ((paramHashtable != null) && (paramHashtable.containsKey(DecodeHintType.TRY_HARDER)))
        i = 1;
      while ((i != 0) && (paramBinaryBitmap.isRotateSupported()))
      {
        BinaryBitmap localBinaryBitmap = paramBinaryBitmap.rotateCounterClockwise();
        Result localResult1 = a(localBinaryBitmap, paramHashtable);
        Hashtable localHashtable = localResult1.getResultMetadata();
        int j = 270;
        if ((localHashtable != null) && (localHashtable.containsKey(ResultMetadataType.ORIENTATION)))
          j = (270 + ((Integer)localHashtable.get(ResultMetadataType.ORIENTATION)).intValue()) % 360;
        localResult1.putMetadata(ResultMetadataType.ORIENTATION, new Integer(j));
        ResultPoint[] arrayOfResultPoint = localResult1.getResultPoints();
        int k = localBinaryBitmap.getHeight();
        int m = 0;
        while (true)
          if (m < arrayOfResultPoint.length)
          {
            arrayOfResultPoint[m] = new ResultPoint(k - arrayOfResultPoint[m].getY() - 1.0F, arrayOfResultPoint[m].getX());
            m++;
            continue;
            i = 0;
            break;
          }
        return localResult1;
      }
    }
    throw localNotFoundException;
  }

  public abstract Result decodeRow(int paramInt, BitArray paramBitArray, Hashtable paramHashtable);

  public void reset()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.OneDReader
 * JD-Core Version:    0.6.2
 */