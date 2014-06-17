package com.google.zxing.common;

public final class BitMatrix
{
  public final int[] bits;
  public final int height;
  public final int rowSize;
  public final int width;

  public BitMatrix(int paramInt)
  {
    this(paramInt, paramInt);
  }

  public BitMatrix(int paramInt1, int paramInt2)
  {
    if ((paramInt1 <= 0) || (paramInt2 <= 0))
      throw new IllegalArgumentException("Both dimensions must be greater than 0");
    this.width = paramInt1;
    this.height = paramInt2;
    this.rowSize = (paramInt1 + 31 >> 5);
    this.bits = new int[paramInt2 * this.rowSize];
  }

  public final void clear()
  {
    int i = this.bits.length;
    for (int j = 0; j < i; j++)
      this.bits[j] = 0;
  }

  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof BitMatrix));
    BitMatrix localBitMatrix;
    do
    {
      return false;
      localBitMatrix = (BitMatrix)paramObject;
    }
    while ((this.width != localBitMatrix.width) || (this.height != localBitMatrix.height) || (this.rowSize != localBitMatrix.rowSize) || (this.bits.length != localBitMatrix.bits.length));
    for (int i = 0; ; i++)
    {
      if (i >= this.bits.length)
        break label92;
      if (this.bits[i] != localBitMatrix.bits[i])
        break;
    }
    label92: return true;
  }

  public final void flip(int paramInt1, int paramInt2)
  {
    int i = paramInt2 * this.rowSize + (paramInt1 >> 5);
    int[] arrayOfInt = this.bits;
    arrayOfInt[i] ^= 1 << (paramInt1 & 0x1F);
  }

  public final boolean get(int paramInt1, int paramInt2)
  {
    int i = paramInt2 * this.rowSize + (paramInt1 >> 5);
    return (0x1 & this.bits[i] >>> (paramInt1 & 0x1F)) != 0;
  }

  public final int[] getBottomRightOnBit()
  {
    for (int i = -1 + this.bits.length; (i >= 0) && (this.bits[i] == 0); i--);
    if (i < 0)
      return null;
    int j = i / this.rowSize;
    int k = i % this.rowSize << 5;
    int m = this.bits[i];
    for (int n = 31; m >>> n == 0; n--);
    return new int[] { k + n, j };
  }

  public final int getHeight()
  {
    return this.height;
  }

  public final BitArray getRow(int paramInt, BitArray paramBitArray)
  {
    if ((paramBitArray == null) || (paramBitArray.getSize() < this.width))
      paramBitArray = new BitArray(this.width);
    int i = paramInt * this.rowSize;
    for (int j = 0; j < this.rowSize; j++)
      paramBitArray.setBulk(j << 5, this.bits[(i + j)]);
    return paramBitArray;
  }

  public final int[] getTopLeftOnBit()
  {
    for (int i = 0; (i < this.bits.length) && (this.bits[i] == 0); i++);
    if (i == this.bits.length)
      return null;
    int j = i / this.rowSize;
    int k = i % this.rowSize << 5;
    int m = this.bits[i];
    for (int n = 0; m << 31 - n == 0; n++);
    return new int[] { k + n, j };
  }

  public final int getWidth()
  {
    return this.width;
  }

  public final int hashCode()
  {
    int i = 31 * (31 * (31 * this.width + this.width) + this.height) + this.rowSize;
    for (int j = 0; j < this.bits.length; j++)
      i = i * 31 + this.bits[j];
    return i;
  }

  public final void set(int paramInt1, int paramInt2)
  {
    int i = paramInt2 * this.rowSize + (paramInt1 >> 5);
    int[] arrayOfInt = this.bits;
    arrayOfInt[i] |= 1 << (paramInt1 & 0x1F);
  }

  public final void setRegion(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 < 0) || (paramInt1 < 0))
      throw new IllegalArgumentException("Left and top must be nonnegative");
    if ((paramInt4 <= 0) || (paramInt3 <= 0))
      throw new IllegalArgumentException("Height and width must be at least 1");
    int i = paramInt1 + paramInt3;
    int j = paramInt2 + paramInt4;
    if ((j > this.height) || (i > this.width))
      throw new IllegalArgumentException("The region must fit inside the matrix");
    while (true)
    {
      paramInt2++;
      if (paramInt2 >= j)
        break;
      int k = paramInt2 * this.rowSize;
      for (int m = paramInt1; m < i; m++)
      {
        int[] arrayOfInt = this.bits;
        int n = k + (m >> 5);
        arrayOfInt[n] |= 1 << (m & 0x1F);
      }
    }
  }

  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer(this.height * (1 + this.width));
    for (int i = 0; i < this.height; i++)
    {
      int j = 0;
      if (j < this.width)
      {
        if (get(j, i));
        for (String str = "X "; ; str = "  ")
        {
          localStringBuffer.append(str);
          j++;
          break;
        }
      }
      localStringBuffer.append('\n');
    }
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.BitMatrix
 * JD-Core Version:    0.6.2
 */