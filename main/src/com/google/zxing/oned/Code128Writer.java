package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.common.BitMatrix;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;

public final class Code128Writer extends UPCEANWriter
{
  private static boolean a(String paramString, int paramInt1, int paramInt2)
  {
    int i = paramInt1 + paramInt2;
    while (paramInt1 < i)
    {
      int j = paramString.charAt(paramInt1);
      if ((j < 48) || (j > 57))
        return false;
      paramInt1++;
    }
    return true;
  }

  public final BitMatrix encode(String paramString, BarcodeFormat paramBarcodeFormat, int paramInt1, int paramInt2, Hashtable paramHashtable)
  {
    if (paramBarcodeFormat != BarcodeFormat.CODE_128)
      throw new IllegalArgumentException("Can only encode CODE_128, but got " + paramBarcodeFormat);
    return super.encode(paramString, paramBarcodeFormat, paramInt1, paramInt2, paramHashtable);
  }

  public final byte[] encode(String paramString)
  {
    int i = 0;
    int j = paramString.length();
    if ((j <= 0) || (j > 80))
      throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got " + j);
    for (int k = 0; k < j; k++)
    {
      int i14 = paramString.charAt(k);
      if ((i14 < 32) || (i14 > 126))
        throw new IllegalArgumentException("Contents should only contain characters between ' ' and '~'");
    }
    Vector localVector = new Vector();
    int m = 0;
    int n = 0;
    int i1 = 1;
    int i2 = 0;
    int i6;
    label125: int i7;
    label149: int i8;
    int i11;
    int i10;
    label184: int i12;
    if (m < j)
      if (n == 99)
      {
        i6 = 2;
        if ((j - m < i6) || (!a(paramString, m, i6)))
          break label241;
        i7 = 99;
        if (i7 != n)
          break label276;
        if (n != 100)
          break label248;
        i8 = '\0,0' + paramString.charAt(m);
        i11 = m + 1;
        i10 = n;
        localVector.addElement(Code128Reader.CODE_PATTERNS[i8]);
        i12 = i2 + i8 * i1;
        if (i11 == 0)
          break label458;
      }
    label276: label458: for (int i13 = i1 + 1; ; i13 = i1)
    {
      i1 = i13;
      i2 = i12;
      n = i10;
      m = i11;
      break;
      i6 = 4;
      break label125;
      label241: i7 = 100;
      break label149;
      label248: i8 = Integer.parseInt(paramString.substring(m, m + 2));
      i11 = m + 2;
      i10 = n;
      break label184;
      if (n == 0)
        if (i7 == 100)
          i8 = 104;
      while (true)
      {
        int i9 = m;
        i10 = i7;
        i11 = i9;
        break;
        i8 = 105;
        continue;
        i8 = i7;
      }
      int i3 = i2 % 103;
      localVector.addElement(Code128Reader.CODE_PATTERNS[i3]);
      localVector.addElement(Code128Reader.CODE_PATTERNS[106]);
      Enumeration localEnumeration1 = localVector.elements();
      int i4 = 0;
      while (localEnumeration1.hasMoreElements())
      {
        int[] arrayOfInt = (int[])localEnumeration1.nextElement();
        for (int i5 = 0; i5 < arrayOfInt.length; i5++)
          i4 += arrayOfInt[i5];
      }
      byte[] arrayOfByte = new byte[i4];
      Enumeration localEnumeration2 = localVector.elements();
      while (localEnumeration2.hasMoreElements())
        i += appendPattern(arrayOfByte, i, (int[])localEnumeration2.nextElement(), 1);
      return arrayOfByte;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.oned.Code128Writer
 * JD-Core Version:    0.6.2
 */