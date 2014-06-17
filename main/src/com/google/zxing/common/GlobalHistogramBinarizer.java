package com.google.zxing.common;

import com.google.zxing.Binarizer;
import com.google.zxing.LuminanceSource;
import com.google.zxing.NotFoundException;

public class GlobalHistogramBinarizer extends Binarizer
{
  private byte[] a = null;
  private int[] b = null;

  public GlobalHistogramBinarizer(LuminanceSource paramLuminanceSource)
  {
    super(paramLuminanceSource);
  }

  private static int a(int[] paramArrayOfInt)
  {
    int i = paramArrayOfInt.length;
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    while (j < i)
    {
      if (paramArrayOfInt[j] > k)
      {
        k = paramArrayOfInt[j];
        m = j;
      }
      if (paramArrayOfInt[j] > n)
        n = paramArrayOfInt[j];
      j++;
    }
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    int i13;
    if (i1 < i)
    {
      int i12 = i1 - m;
      i13 = i12 * (i12 * paramArrayOfInt[i1]);
      if (i13 <= i3)
        break label238;
      i2 = i1;
    }
    while (true)
    {
      i1++;
      i3 = i13;
      break;
      int i4;
      if (m > i2)
        i4 = m;
      for (int i5 = i2; ; i5 = m)
      {
        if (i4 - i5 <= i >> 4)
          throw NotFoundException.getNotFoundInstance();
        int i6 = i4 - 1;
        int i7 = -1;
        int i8 = i4 - 1;
        int i10;
        if (i8 > i5)
        {
          int i9 = i8 - i5;
          i10 = i9 * i9 * (i4 - i8) * (n - paramArrayOfInt[i8]);
          if (i10 <= i7)
            break label216;
        }
        for (int i11 = i8; ; i11 = i6)
        {
          i8--;
          i6 = i11;
          i7 = i10;
          break;
          return i6 << 3;
          label216: i10 = i7;
        }
        i4 = i2;
      }
      label238: i13 = i3;
    }
  }

  private void a(int paramInt)
  {
    if ((this.a == null) || (this.a.length < paramInt))
      this.a = new byte[paramInt];
    if (this.b == null)
      this.b = new int[32];
    while (true)
    {
      return;
      for (int i = 0; i < 32; i++)
        this.b[i] = 0;
    }
  }

  public Binarizer createBinarizer(LuminanceSource paramLuminanceSource)
  {
    return new GlobalHistogramBinarizer(paramLuminanceSource);
  }

  public BitMatrix getBlackMatrix()
  {
    LuminanceSource localLuminanceSource = getLuminanceSource();
    int i = localLuminanceSource.getWidth();
    int j = localLuminanceSource.getHeight();
    BitMatrix localBitMatrix = new BitMatrix(i, j);
    a(i);
    int[] arrayOfInt = this.b;
    for (int k = 1; k < 5; k++)
    {
      byte[] arrayOfByte2 = localLuminanceSource.getRow(j * k / 5, this.a);
      int i3 = (i << 2) / 5;
      for (int i4 = i / 5; i4 < i3; i4++)
      {
        int i5 = (0xFF & arrayOfByte2[i4]) >> 3;
        arrayOfInt[i5] = (1 + arrayOfInt[i5]);
      }
    }
    int m = a(arrayOfInt);
    byte[] arrayOfByte1 = localLuminanceSource.getMatrix();
    for (int n = 0; n < j; n++)
    {
      int i1 = n * i;
      for (int i2 = 0; i2 < i; i2++)
        if ((0xFF & arrayOfByte1[(i1 + i2)]) < m)
          localBitMatrix.set(i2, n);
    }
    return localBitMatrix;
  }

  public BitArray getBlackRow(int paramInt, BitArray paramBitArray)
  {
    int i = 1;
    LuminanceSource localLuminanceSource = getLuminanceSource();
    int j = localLuminanceSource.getWidth();
    if ((paramBitArray == null) || (paramBitArray.getSize() < j))
      paramBitArray = new BitArray(j);
    byte[] arrayOfByte;
    int[] arrayOfInt;
    while (true)
    {
      a(j);
      arrayOfByte = localLuminanceSource.getRow(paramInt, this.a);
      arrayOfInt = this.b;
      for (int k = 0; k < j; k++)
      {
        int i3 = (0xFF & arrayOfByte[k]) >> 3;
        arrayOfInt[i3] = (1 + arrayOfInt[i3]);
      }
      paramBitArray.clear();
    }
    int m = a(arrayOfInt);
    int n = 0xFF & arrayOfByte[0];
    int i2;
    for (int i1 = 0xFF & arrayOfByte[i]; i < j - 1; i1 = i2)
    {
      i2 = 0xFF & arrayOfByte[(i + 1)];
      if ((i1 << 2) - n - i2 >> 1 < m)
        paramBitArray.set(i);
      i++;
      n = i1;
    }
    return paramBitArray;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.GlobalHistogramBinarizer
 * JD-Core Version:    0.6.2
 */