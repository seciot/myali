package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.NotFoundException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitArray;
import java.util.Hashtable;

final class UPCEANExtensionSupport
{
  private static final int[] a = { 1, 1, 2 };
  private static final int[] b = { 24, 20, 18, 17, 12, 6, 3, 10, 9, 5 };
  private final int[] c = new int[4];
  private final StringBuffer d = new StringBuffer();

  final int decodeMiddle(BitArray paramBitArray, int[] paramArrayOfInt, StringBuffer paramStringBuffer)
  {
    int[] arrayOfInt = this.c;
    arrayOfInt[0] = 0;
    arrayOfInt[1] = 0;
    arrayOfInt[2] = 0;
    arrayOfInt[3] = 0;
    int i = paramBitArray.getSize();
    int j = paramArrayOfInt[1];
    int k = 0;
    int m = 0;
    if ((m < 5) && (j < i))
    {
      int i6 = UPCEANReader.decodeDigit(paramBitArray, arrayOfInt, j, UPCEANReader.L_AND_G_PATTERNS);
      paramStringBuffer.append((char)(48 + i6 % 10));
      for (int i7 = 0; i7 < arrayOfInt.length; i7++)
        j += arrayOfInt[i7];
      if (i6 < 10)
        break label336;
    }
    label336: for (int i8 = k | 1 << 4 - m; ; i8 = k)
    {
      if (m != 4)
      {
        while ((j < i) && (!paramBitArray.get(j)))
          j++;
        while ((j < i) && (paramBitArray.get(j)))
          j++;
      }
      m++;
      k = i8;
      break;
      if (paramStringBuffer.length() != 5)
        throw NotFoundException.getNotFoundInstance();
      String str;
      int i1;
      int i2;
      for (int n = 0; n < 10; n++)
        if (k == b[n])
        {
          str = paramStringBuffer.toString();
          i1 = str.length();
          i2 = 0;
          for (int i3 = i1 - 2; i3 >= 0; i3 -= 2)
            i2 += '\0*0' + str.charAt(i3);
        }
      throw NotFoundException.getNotFoundInstance();
      int i4 = i2 * 3;
      for (int i5 = i1 - 1; i5 >= 0; i5 -= 2)
        i4 += '\0*0' + str.charAt(i5);
      if (i4 * 3 % 10 != n)
        throw NotFoundException.getNotFoundInstance();
      return j;
    }
  }

  final Result decodeRow(int paramInt1, BitArray paramBitArray, int paramInt2)
  {
    int[] arrayOfInt = UPCEANReader.findGuardPattern(paramBitArray, paramInt2, false, a);
    StringBuffer localStringBuffer = this.d;
    localStringBuffer.setLength(0);
    int i = decodeMiddle(paramBitArray, arrayOfInt, localStringBuffer);
    String str1 = localStringBuffer.toString();
    Hashtable localHashtable;
    switch (str1.length())
    {
    case 3:
    case 4:
    default:
      localHashtable = null;
    case 2:
    case 5:
    }
    while (true)
    {
      ResultPoint[] arrayOfResultPoint = new ResultPoint[2];
      arrayOfResultPoint[0] = new ResultPoint((arrayOfInt[0] + arrayOfInt[1]) / 2.0F, paramInt1);
      arrayOfResultPoint[1] = new ResultPoint(i, paramInt1);
      Result localResult = new Result(str1, null, arrayOfResultPoint, BarcodeFormat.UPC_EAN_EXTENSION);
      if (localHashtable != null)
        localResult.putAllMetadata(localHashtable);
      return localResult;
      ResultMetadataType localResultMetadataType2 = ResultMetadataType.ISSUE_NUMBER;
      Object localObject2 = Integer.valueOf(str1);
      Object localObject1 = localResultMetadataType2;
      if (localObject2 == null)
      {
        localHashtable = null;
        continue;
        ResultMetadataType localResultMetadataType1 = ResultMetadataType.SUGGESTED_PRICE;
        String str3;
        label236: String str4;
        int k;
        switch (str1.charAt(0))
        {
        default:
          str3 = "";
          int j = Integer.parseInt(str1.substring(1));
          str4 = String.valueOf(j / 100);
          k = j % 100;
          if (k >= 10)
            break;
        case '0':
        case '5':
        case '9':
        }
        for (String str5 = "0" + k; ; str5 = String.valueOf(k))
        {
          String str2 = str3 + str4 + '.' + str5;
          while (true)
          {
            localObject1 = localResultMetadataType1;
            localObject2 = str2;
            break;
            str3 = "拢";
            break label236;
            str3 = "$";
            break label236;
            if ("90000".equals(str1))
            {
              str2 = null;
            }
            else if ("99991".equals(str1))
            {
              str2 = "0.00";
            }
            else
            {
              if (!"99990".equals(str1))
                break label397;
              str2 = "Used";
            }
          }
          label397: str3 = "";
          break label236;
        }
      }
      else
      {
        localHashtable = new Hashtable(1);
        localHashtable.put(localObject1, localObject2);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.UPCEANExtensionSupport
 * JD-Core Version:    0.6.2
 */