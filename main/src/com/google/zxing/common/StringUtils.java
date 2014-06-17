package com.google.zxing.common;

import com.google.zxing.DecodeHintType;
import java.util.Hashtable;

public final class StringUtils
{
  public static final String GB2312 = "GB2312";
  public static final String SHIFT_JIS = "SJIS";
  private static final String a = System.getProperty("file.encoding");
  private static final boolean b;

  static
  {
    if (("SJIS".equalsIgnoreCase(a)) || ("EUC_JP".equalsIgnoreCase(a)));
    for (boolean bool = true; ; bool = false)
    {
      b = bool;
      return;
    }
  }

  public static String guessEncoding(byte[] paramArrayOfByte, Hashtable paramHashtable)
  {
    if (paramHashtable != null)
    {
      String str = (String)paramHashtable.get(DecodeHintType.CHARACTER_SET);
      if (str != null)
        return str;
    }
    if ((paramArrayOfByte.length > 3) && (paramArrayOfByte[0] == -17) && (paramArrayOfByte[1] == -69) && (paramArrayOfByte[2] == -65))
      return "UTF8";
    int i = paramArrayOfByte.length;
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i4 = 1;
    int i5 = 1;
    int i6 = 1;
    int i7;
    int i8;
    if ((i1 < i) && ((i6 != 0) || (i5 != 0) || (i4 != 0)))
    {
      i7 = 0xFF & paramArrayOfByte[i1];
      if ((i7 >= 128) && (i7 <= 191))
      {
        if (j <= 0)
          break label566;
        j--;
        i8 = i4;
      }
    }
    while (true)
    {
      if (((i7 == 194) || (i7 == 195)) && (i1 < i - 1))
      {
        int i13 = 0xFF & paramArrayOfByte[(i1 + 1)];
        if ((i13 <= 191) && (((i7 == 194) && (i13 >= 160)) || ((i7 == 195) && (i13 >= 128))))
          m = 1;
      }
      if ((i7 >= 127) && (i7 <= 159))
        i6 = 0;
      if ((i7 >= 161) && (i7 <= 223) && (i2 == 0))
        k++;
      if ((i2 == 0) && (((i7 >= 240) && (i7 <= 255)) || (i7 == 128) || (i7 == 160)))
        i5 = 0;
      int i11;
      if (((i7 >= 129) && (i7 <= 159)) || ((i7 >= 224) && (i7 <= 239) && (i2 == 0)))
      {
        i11 = 1;
        if (i1 >= -1 + paramArrayOfByte.length)
        {
          i5 = 0;
          i1++;
          i2 = i11;
          i4 = i8;
          break;
          if (j <= 0)
            break label559;
        }
      }
      label559: for (i8 = 0; ; i8 = i4)
      {
        if ((i7 < 192) || (i7 > 253))
          break label564;
        int i9 = j;
        int i10 = i7;
        while (true)
          if ((i10 & 0x40) != 0)
          {
            int i14 = i9 + 1;
            i10 <<= 1;
            i9 = i14;
            continue;
            int i12 = 0xFF & paramArrayOfByte[(i1 + 1)];
            if ((i12 < 64) || (i12 > 252))
            {
              i5 = 0;
              break;
            }
            i3++;
            break;
            i11 = 0;
            break;
            if (j > 0)
              i4 = 0;
            if ((i5 != 0) && (b))
              return "SJIS";
            if ((i4 != 0) && (n != 0))
              return "UTF8";
            if ((i5 != 0) && ((i3 >= 3) || (k * 20 > i)))
              return "SJIS";
            if ((m == 0) && (i6 != 0))
              return "ISO8859_1";
            return a;
          }
        j = i9;
        n = 1;
        break;
      }
      label564: continue;
      label566: i8 = i4;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.StringUtils
 * JD-Core Version:    0.6.2
 */