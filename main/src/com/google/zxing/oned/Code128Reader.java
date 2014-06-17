package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;

public final class Code128Reader extends OneDReader
{
  static final int[][] CODE_PATTERNS = { { 2, 1, 2, 2, 2, 2 }, { 2, 2, 2, 1, 2, 2 }, { 2, 2, 2, 2, 2, 1 }, { 1, 2, 1, 2, 2, 3 }, { 1, 2, 1, 3, 2, 2 }, { 1, 3, 1, 2, 2, 2 }, { 1, 2, 2, 2, 1, 3 }, { 1, 2, 2, 3, 1, 2 }, { 1, 3, 2, 2, 1, 2 }, { 2, 2, 1, 2, 1, 3 }, { 2, 2, 1, 3, 1, 2 }, { 2, 3, 1, 2, 1, 2 }, { 1, 1, 2, 2, 3, 2 }, { 1, 2, 2, 1, 3, 2 }, { 1, 2, 2, 2, 3, 1 }, { 1, 1, 3, 2, 2, 2 }, { 1, 2, 3, 1, 2, 2 }, { 1, 2, 3, 2, 2, 1 }, { 2, 2, 3, 2, 1, 1 }, { 2, 2, 1, 1, 3, 2 }, { 2, 2, 1, 2, 3, 1 }, { 2, 1, 3, 2, 1, 2 }, { 2, 2, 3, 1, 1, 2 }, { 3, 1, 2, 1, 3, 1 }, { 3, 1, 1, 2, 2, 2 }, { 3, 2, 1, 1, 2, 2 }, { 3, 2, 1, 2, 2, 1 }, { 3, 1, 2, 2, 1, 2 }, { 3, 2, 2, 1, 1, 2 }, { 3, 2, 2, 2, 1, 1 }, { 2, 1, 2, 1, 2, 3 }, { 2, 1, 2, 3, 2, 1 }, { 2, 3, 2, 1, 2, 1 }, { 1, 1, 1, 3, 2, 3 }, { 1, 3, 1, 1, 2, 3 }, { 1, 3, 1, 3, 2, 1 }, { 1, 1, 2, 3, 1, 3 }, { 1, 3, 2, 1, 1, 3 }, { 1, 3, 2, 3, 1, 1 }, { 2, 1, 1, 3, 1, 3 }, { 2, 3, 1, 1, 1, 3 }, { 2, 3, 1, 3, 1, 1 }, { 1, 1, 2, 1, 3, 3 }, { 1, 1, 2, 3, 3, 1 }, { 1, 3, 2, 1, 3, 1 }, { 1, 1, 3, 1, 2, 3 }, { 1, 1, 3, 3, 2, 1 }, { 1, 3, 3, 1, 2, 1 }, { 3, 1, 3, 1, 2, 1 }, { 2, 1, 1, 3, 3, 1 }, { 2, 3, 1, 1, 3, 1 }, { 2, 1, 3, 1, 1, 3 }, { 2, 1, 3, 3, 1, 1 }, { 2, 1, 3, 1, 3, 1 }, { 3, 1, 1, 1, 2, 3 }, { 3, 1, 1, 3, 2, 1 }, { 3, 3, 1, 1, 2, 1 }, { 3, 1, 2, 1, 1, 3 }, { 3, 1, 2, 3, 1, 1 }, { 3, 3, 2, 1, 1, 1 }, { 3, 1, 4, 1, 1, 1 }, { 2, 2, 1, 4, 1, 1 }, { 4, 3, 1, 1, 1, 1 }, { 1, 1, 1, 2, 2, 4 }, { 1, 1, 1, 4, 2, 2 }, { 1, 2, 1, 1, 2, 4 }, { 1, 2, 1, 4, 2, 1 }, { 1, 4, 1, 1, 2, 2 }, { 1, 4, 1, 2, 2, 1 }, { 1, 1, 2, 2, 1, 4 }, { 1, 1, 2, 4, 1, 2 }, { 1, 2, 2, 1, 1, 4 }, { 1, 2, 2, 4, 1, 1 }, { 1, 4, 2, 1, 1, 2 }, { 1, 4, 2, 2, 1, 1 }, { 2, 4, 1, 2, 1, 1 }, { 2, 2, 1, 1, 1, 4 }, { 4, 1, 3, 1, 1, 1 }, { 2, 4, 1, 1, 1, 2 }, { 1, 3, 4, 1, 1, 1 }, { 1, 1, 1, 2, 4, 2 }, { 1, 2, 1, 1, 4, 2 }, { 1, 2, 1, 2, 4, 1 }, { 1, 1, 4, 2, 1, 2 }, { 1, 2, 4, 1, 1, 2 }, { 1, 2, 4, 2, 1, 1 }, { 4, 1, 1, 2, 1, 2 }, { 4, 2, 1, 1, 1, 2 }, { 4, 2, 1, 2, 1, 1 }, { 2, 1, 2, 1, 4, 1 }, { 2, 1, 4, 1, 2, 1 }, { 4, 1, 2, 1, 2, 1 }, { 1, 1, 1, 1, 4, 3 }, { 1, 1, 1, 3, 4, 1 }, { 1, 3, 1, 1, 4, 1 }, { 1, 1, 4, 1, 1, 3 }, { 1, 1, 4, 3, 1, 1 }, { 4, 1, 1, 1, 1, 3 }, { 4, 1, 1, 3, 1, 1 }, { 1, 1, 3, 1, 4, 1 }, { 1, 1, 4, 1, 3, 1 }, { 3, 1, 1, 1, 4, 1 }, { 4, 1, 1, 1, 3, 1 }, { 2, 1, 1, 4, 1, 2 }, { 2, 1, 1, 2, 1, 4 }, { 2, 1, 1, 2, 3, 2 }, { 2, 3, 3, 1, 1, 1, 2 } };

  private static int a(BitArray paramBitArray, int[] paramArrayOfInt, int paramInt)
  {
    recordPattern(paramBitArray, paramInt, paramArrayOfInt);
    int i = 64;
    int j = -1;
    for (int k = 0; k < CODE_PATTERNS.length; k++)
    {
      int m = patternMatchVariance(paramArrayOfInt, CODE_PATTERNS[k], 179);
      if (m < i)
      {
        j = k;
        i = m;
      }
    }
    if (j >= 0)
      return j;
    throw NotFoundException.getNotFoundInstance();
  }

  public final Result decodeRow(int paramInt, BitArray paramBitArray, Hashtable paramHashtable)
  {
    int i = paramBitArray.getSize();
    for (int j = 0; (j < i) && (!paramBitArray.get(j)); j++);
    int k = 0;
    int[] arrayOfInt1 = new int[6];
    int m = 0;
    int n = arrayOfInt1.length;
    int i1 = j;
    int i4;
    int i2;
    int i6;
    int i7;
    int i8;
    label132: int i43;
    while (true)
      if (i1 < i)
        if ((m ^ paramBitArray.get(i1)) != 0)
        {
          arrayOfInt1[k] = (1 + arrayOfInt1[k]);
          i4 = m;
          i2 = k;
          int i5 = i1 + 1;
          m = i4;
          k = i2;
          i1 = i5;
        }
        else if (k == n - 1)
        {
          i6 = 64;
          i7 = -1;
          i8 = 103;
          if (i8 <= 105)
          {
            i43 = patternMatchVariance(arrayOfInt1, CODE_PATTERNS[i8], 179);
            if (i43 >= i6)
              break label1569;
            i7 = i8;
          }
        }
    while (true)
    {
      i8++;
      i6 = i43;
      break label132;
      int[] arrayOfInt2;
      int i10;
      if ((i7 >= 0) && (paramBitArray.isRange(Math.max(0, j - (i1 - j) / 2), j, false)))
      {
        arrayOfInt2 = new int[] { j, i1, i7 };
        i10 = arrayOfInt2[2];
      }
      label328: int i11;
      switch (i10)
      {
      default:
        throw FormatException.getFormatInstance();
        int i3 = j + (arrayOfInt1[0] + arrayOfInt1[1]);
        for (int i9 = 2; i9 < n; i9++)
          arrayOfInt1[(i9 - 2)] = arrayOfInt1[i9];
        arrayOfInt1[(n - 2)] = 0;
        arrayOfInt1[(n - 1)] = 0;
        i2 = k - 1;
        arrayOfInt1[i2] = 1;
        if (m == 0);
        for (i4 = 1; ; i4 = 0)
        {
          j = i3;
          break;
          i2 = k + 1;
          i3 = j;
          break label328;
        }
        throw NotFoundException.getNotFoundInstance();
      case 103:
        i11 = 101;
      case 104:
      case 105:
      }
      StringBuffer localStringBuffer;
      int i12;
      int i13;
      int i14;
      int i15;
      int i16;
      int i17;
      int i18;
      int i19;
      int i20;
      int i21;
      int i24;
      int i26;
      while (true)
      {
        localStringBuffer = new StringBuffer(20);
        i12 = arrayOfInt2[0];
        i13 = arrayOfInt2[1];
        int[] arrayOfInt3 = new int[6];
        i14 = 1;
        i15 = 0;
        i16 = 0;
        i17 = 0;
        i18 = 0;
        i19 = i10;
        i20 = i11;
        i21 = 0;
        if (i16 != 0)
          break label1332;
        i24 = a(paramBitArray, arrayOfInt3, i13);
        if (i24 != 106)
          i14 = 1;
        if (i24 != 106)
        {
          i21++;
          i19 += i21 * i24;
        }
        int i25 = 0;
        i26 = i13;
        while (i25 < arrayOfInt3.length)
        {
          i26 += arrayOfInt3[i25];
          i25++;
        }
        i11 = 100;
        continue;
        i11 = 99;
      }
      int i30;
      int i28;
      int i29;
      int i31;
      switch (i24)
      {
      default:
        switch (i20)
        {
        default:
          i30 = i20;
          i28 = i16;
          i29 = i14;
          i31 = 0;
        case 101:
        case 100:
        case 99:
        }
        break;
      case 103:
      case 104:
      case 105:
      }
      while (true)
      {
        if (i15 != 0)
        {
          if (i30 != 101)
            break label1325;
          i30 = 100;
        }
        label607: i15 = i31;
        i20 = i30;
        i18 = i17;
        i14 = i29;
        i16 = i28;
        i17 = i24;
        int i32 = i13;
        i13 = i26;
        i12 = i32;
        break;
        throw FormatException.getFormatInstance();
        if (i24 < 64)
        {
          localStringBuffer.append((char)(i24 + 32));
          i30 = i20;
          i28 = i16;
          i29 = i14;
          i31 = 0;
        }
        else if (i24 < 96)
        {
          localStringBuffer.append((char)(i24 - 64));
          i30 = i20;
          i28 = i16;
          i29 = i14;
          i31 = 0;
        }
        else
        {
          if (i24 != 106)
            i14 = 0;
          switch (i24)
          {
          case 103:
          case 104:
          case 105:
          default:
          case 96:
          case 97:
          case 101:
          case 102:
          case 98:
          case 100:
          case 99:
          case 106:
          }
          for (int i39 = i16; ; i39 = 1)
          {
            i29 = i14;
            i28 = i39;
            i30 = i20;
            i31 = 0;
            break;
            i30 = i20;
            i28 = i16;
            i29 = i14;
            i31 = 0;
            break;
            int i42 = i14;
            i31 = 1;
            i30 = 100;
            i28 = i16;
            i29 = i42;
            break;
            i30 = 100;
            int i41 = i14;
            i28 = i16;
            i29 = i41;
            i31 = 0;
            break;
            i30 = 99;
            int i40 = i14;
            i28 = i16;
            i29 = i40;
            i31 = 0;
            break;
          }
          if (i24 >= 96)
            break label945;
          localStringBuffer.append((char)(i24 + 32));
          i30 = i20;
          i28 = i16;
          i29 = i14;
          i31 = 0;
        }
      }
      label945: if (i24 != 106);
      for (int i35 = 0; ; i35 = i14)
      {
        switch (i24)
        {
        case 103:
        case 104:
        case 105:
        default:
        case 96:
        case 97:
        case 100:
        case 102:
        case 98:
        case 101:
        case 99:
        case 106:
        }
        while (true)
        {
          i28 = i16;
          i29 = i35;
          i30 = i20;
          i31 = 0;
          break;
          i28 = i16;
          i29 = i35;
          i30 = i20;
          i31 = 0;
          break;
          i31 = 1;
          int i38 = i35;
          i30 = 101;
          i28 = i16;
          i29 = i38;
          break;
          int i37 = i35;
          i30 = 101;
          i28 = i16;
          i29 = i37;
          i31 = 0;
          break;
          int i36 = i35;
          i30 = 99;
          i28 = i16;
          i29 = i36;
          i31 = 0;
          break;
          i16 = 1;
        }
        if (i24 < 100)
        {
          if (i24 < 10)
            localStringBuffer.append('0');
          localStringBuffer.append(i24);
          i30 = i20;
          i28 = i16;
          i29 = i14;
          i31 = 0;
          break;
        }
        if (i24 != 106);
        for (int i27 = 0; ; i27 = i14)
          switch (i24)
          {
          case 103:
          case 104:
          case 105:
          default:
            i28 = i16;
            i29 = i27;
            i30 = i20;
            i31 = 0;
            break;
          case 102:
            i28 = i16;
            i29 = i27;
            i30 = i20;
            i31 = 0;
            break;
          case 101:
            int i34 = i27;
            i30 = 101;
            i28 = i16;
            i29 = i34;
            i31 = 0;
            break;
          case 100:
            int i33 = i27;
            i30 = 100;
            i28 = i16;
            i29 = i33;
            i31 = 0;
            break;
          case 106:
            i28 = 1;
            i29 = i27;
            i30 = i20;
            i31 = 0;
            break;
            label1325: i30 = 101;
            break label607;
            label1332: int i22 = paramBitArray.getSize();
            while ((i13 < i22) && (paramBitArray.get(i13)))
              i13++;
            if (!paramBitArray.isRange(i13, Math.min(i22, i13 + (i13 - i12) / 2), false))
              throw NotFoundException.getNotFoundInstance();
            if ((i19 - i21 * i18) % 103 != i18)
              throw ChecksumException.getChecksumInstance();
            int i23 = localStringBuffer.length();
            if ((i23 > 0) && (i14 != 0))
            {
              if (i20 != 99)
                break label1464;
              localStringBuffer.delete(i23 - 2, i23);
            }
            String str;
            while (true)
            {
              str = localStringBuffer.toString();
              if (str.length() != 0)
                break;
              throw FormatException.getFormatInstance();
              label1464: localStringBuffer.delete(i23 - 1, i23);
            }
            float f1 = (arrayOfInt2[1] + arrayOfInt2[0]) / 2.0F;
            float f2 = (i13 + i12) / 2.0F;
            ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
            arrayOfResultPoint[0] = new ResultPoint(f1, paramInt);
            arrayOfResultPoint[1] = new ResultPoint(f2, paramInt);
            return new Result(str, null, arrayOfResultPoint, BarcodeFormat.CODE_128);
          }
      }
      label1569: i43 = i6;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.Code128Reader
 * JD-Core Version:    0.6.2
 */