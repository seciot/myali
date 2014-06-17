package com.google.zxing.common;

public final class BitArray
{
  public int[] bits;
  public int size;

  public BitArray()
  {
    this.size = 0;
    this.bits = new int[1];
  }

  public BitArray(int paramInt)
  {
    this.size = paramInt;
    this.bits = b(paramInt);
  }

  private void a(int paramInt)
  {
    if (paramInt > this.bits.length << 5)
    {
      int[] arrayOfInt = b(paramInt);
      System.arraycopy(this.bits, 0, arrayOfInt, 0, this.bits.length);
      this.bits = arrayOfInt;
    }
  }

  private static int[] b(int paramInt)
  {
    return new int[paramInt + 31 >> 5];
  }

  public final void appendBit(boolean paramBoolean)
  {
    a(1 + this.size);
    if (paramBoolean)
    {
      int[] arrayOfInt = this.bits;
      int i = this.size >> 5;
      arrayOfInt[i] |= 1 << (0x1F & this.size);
    }
    this.size = (1 + this.size);
  }

  public final void appendBitArray(BitArray paramBitArray)
  {
    int i = paramBitArray.getSize();
    a(i + this.size);
    for (int j = 0; j < i; j++)
      appendBit(paramBitArray.get(j));
  }

  public final void appendBits(int paramInt1, int paramInt2)
  {
    if ((paramInt2 < 0) || (paramInt2 > 32))
      throw new IllegalArgumentException("Num bits must be between 0 and 32");
    a(paramInt2 + this.size);
    if (paramInt2 > 0)
    {
      if ((0x1 & paramInt1 >> paramInt2 - 1) == 1);
      for (boolean bool = true; ; bool = false)
      {
        appendBit(bool);
        paramInt2--;
        break;
      }
    }
  }

  public final void clear()
  {
    int i = this.bits.length;
    for (int j = 0; j < i; j++)
      this.bits[j] = 0;
  }

  public final void flip(int paramInt)
  {
    int[] arrayOfInt = this.bits;
    int i = paramInt >> 5;
    arrayOfInt[i] ^= 1 << (paramInt & 0x1F);
  }

  public final boolean get(int paramInt)
  {
    return (this.bits[(paramInt >> 5)] & 1 << (paramInt & 0x1F)) != 0;
  }

  public final int[] getBitArray()
  {
    return this.bits;
  }

  public final int getSize()
  {
    return this.size;
  }

  public final int getSizeInBytes()
  {
    return 7 + this.size >> 3;
  }

  public final boolean isRange(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramInt2 < paramInt1)
      throw new IllegalArgumentException();
    if (paramInt2 == paramInt1)
      return true;
    int i = paramInt2 - 1;
    int j = paramInt1 >> 5;
    int k = i >> 5;
    label156: label162: for (int m = j; m <= k; m++)
    {
      int n;
      int i1;
      label68: int i3;
      label83: int i4;
      if (m > j)
      {
        n = 0;
        if (m >= k)
          break label117;
        i1 = 31;
        if ((n != 0) || (i1 != 31))
          break label127;
        i3 = -1;
        i4 = i3 & this.bits[m];
        if (!paramBoolean)
          break label156;
      }
      while (true)
      {
        if (i4 == i3)
          break label162;
        return false;
        n = paramInt1 & 0x1F;
        break;
        label117: i1 = i & 0x1F;
        break label68;
        label127: int i2 = n;
        i3 = 0;
        while (i2 <= i1)
        {
          i3 |= 1 << i2;
          i2++;
        }
        break label83;
        i3 = 0;
      }
    }
    return true;
  }

  public final void reverse()
  {
    int[] arrayOfInt = new int[this.bits.length];
    int i = this.size;
    for (int j = 0; j < i; j++)
      if (get(-1 + (i - j)))
      {
        int k = j >> 5;
        arrayOfInt[k] |= 1 << (j & 0x1F);
      }
    this.bits = arrayOfInt;
  }

  public final void set(int paramInt)
  {
    int[] arrayOfInt = this.bits;
    int i = paramInt >> 5;
    arrayOfInt[i] |= 1 << (paramInt & 0x1F);
  }

  public final void setBulk(int paramInt1, int paramInt2)
  {
    this.bits[(paramInt1 >> 5)] = paramInt2;
  }

  public final void toBytes(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    int i = 0;
    int m;
    for (int j = paramInt1; i < paramInt3; j = m)
    {
      int k = 0;
      m = j;
      int n = 0;
      while (k < 8)
      {
        if (get(m))
          n |= 1 << 7 - k;
        m++;
        k++;
      }
      paramArrayOfByte[(paramInt2 + i)] = ((byte)n);
      i++;
    }
  }

  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer(this.size);
    int i = 0;
    if (i < this.size)
    {
      if ((i & 0x7) == 0)
        localStringBuffer.append(' ');
      if (get(i));
      for (char c = 'X'; ; c = '.')
      {
        localStringBuffer.append(c);
        i++;
        break;
      }
    }
    return localStringBuffer.toString();
  }

  public final void xor(BitArray paramBitArray)
  {
    if (this.bits.length != paramBitArray.bits.length)
      throw new IllegalArgumentException("Sizes don't match");
    for (int i = 0; i < this.bits.length; i++)
    {
      int[] arrayOfInt = this.bits;
      arrayOfInt[i] ^= paramBitArray.bits[i];
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.common.BitArray
 * JD-Core Version:    0.6.2
 */