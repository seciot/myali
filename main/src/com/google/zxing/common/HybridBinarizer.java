package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import java.lang.reflect.Array;

public final class HybridBinarizer extends GlobalHistogramBinarizer
{
  private BitMatrix a = null;

  public HybridBinarizer(LuminanceSource paramLuminanceSource)
  {
    super(paramLuminanceSource);
  }

  public final Binarizer createBinarizer(LuminanceSource paramLuminanceSource)
  {
    return new HybridBinarizer(paramLuminanceSource);
  }

  public final BitMatrix getBlackMatrix()
  {
    byte[] arrayOfByte;
    int i;
    int j;
    int k;
    if (this.a == null)
    {
      LuminanceSource localLuminanceSource = getLuminanceSource();
      if ((localLuminanceSource.getWidth() >= 40) && (localLuminanceSource.getHeight() >= 40))
      {
        arrayOfByte = localLuminanceSource.getMatrix();
        i = localLuminanceSource.getWidth();
        j = localLuminanceSource.getHeight();
        k = i >> 3;
        if ((i & 0x7) == 0)
          break label702;
      }
    }
    label393: label396: label543: label552: label558: label688: label702: for (int m = k + 1; ; m = k)
    {
      int n = j >> 3;
      if ((j & 0x7) != 0);
      for (int i1 = n + 1; ; i1 = n)
      {
        int[] arrayOfInt1 = { i1, m };
        int[][] arrayOfInt = (int[][])Array.newInstance(Integer.TYPE, arrayOfInt1);
        int i2 = 0;
        int i19;
        int i21;
        int i22;
        int i23;
        int i24;
        label190: int i27;
        int i28;
        label216: int i29;
        if (i2 < i1)
        {
          int i18 = i2 << 3;
          if (i18 + 8 >= j)
            i18 = j - 8;
          i19 = 0;
          if (i19 < m)
          {
            int i20 = i19 << 3;
            if (i20 + 8 >= i)
              i20 = i - 8;
            i21 = 0;
            i22 = 255;
            i23 = 0;
            i24 = 0;
            if (i24 < 8)
            {
              int i26 = i20 + i * (i18 + i24);
              i27 = i21;
              i28 = 0;
              if (i28 < 8)
              {
                i29 = 0xFF & arrayOfByte[(i26 + i28)];
                i27 += i29;
                if (i29 < i22)
                  i22 = i29;
                if (i29 <= i23)
                  break label688;
              }
            }
          }
        }
        while (true)
        {
          i28++;
          i23 = i29;
          break label216;
          i24++;
          i21 = i27;
          break label190;
          int i25;
          if (i23 - i22 > 24)
            i25 = i21 >> 6;
          while (true)
          {
            arrayOfInt[i2][i19] = i25;
            i19++;
            break;
            if (i23 == 0)
              i25 = 1;
            else
              i25 = i22 >> 1;
          }
          i2++;
          break;
          this.a = new BitMatrix(i, j);
          BitMatrix localBitMatrix = this.a;
          int i3 = 0;
          int i4;
          int i5;
          int i6;
          int i7;
          if (i3 < i1)
          {
            i4 = i3 << 3;
            if (i4 + 8 < j)
              break label674;
            i5 = j - 8;
            i6 = 0;
            if (i6 < m)
            {
              i7 = i6 << 3;
              if (i7 + 8 < i)
                break label681;
            }
          }
          for (int i8 = i - 8; ; i8 = i7)
          {
            int i9;
            int i10;
            label447: int i11;
            if (i6 > 1)
            {
              i9 = i6;
              if (i9 >= m - 2)
                break label543;
              i10 = i9;
              if (i3 <= 1)
                break label552;
              i11 = i3;
              label457: if (i11 >= i1 - 2)
                break label558;
            }
            int i12;
            while (true)
            {
              i12 = 0;
              for (int i13 = -2; i13 <= 2; i13++)
              {
                int[] arrayOfInt2 = arrayOfInt[(i11 + i13)];
                i12 = i12 + arrayOfInt2[(i10 - 2)] + arrayOfInt2[(i10 - 1)] + arrayOfInt2[i10] + arrayOfInt2[(i10 + 1)] + arrayOfInt2[(i10 + 2)];
              }
              i9 = 2;
              break;
              i10 = m - 3;
              break label447;
              i11 = 2;
              break label457;
              i11 = i1 - 3;
            }
            int i14 = i12 / 25;
            for (int i15 = 0; i15 < 8; i15++)
            {
              int i16 = i8 + i * (i5 + i15);
              for (int i17 = 0; i17 < 8; i17++)
                if ((0xFF & arrayOfByte[(i16 + i17)]) < i14)
                  localBitMatrix.set(i8 + i17, i5 + i15);
            }
            i6++;
            break label396;
            i3++;
            break;
            this.a = super.getBlackMatrix();
            return this.a;
            i5 = i4;
            break label393;
          }
          i29 = i23;
        }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.HybridBinarizer
 * JD-Core Version:    0.6.2
 */