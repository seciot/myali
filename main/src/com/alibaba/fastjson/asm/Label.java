package com.alibaba.fastjson.asm;

public class Label
{
  static final int RESOLVED = 2;
  public Object info;
  int inputStackTop;
  int line;
  Label next;
  int outputStackMax;
  int position;
  private int referenceCount;
  private int[] srcAndRefPositions;
  int status;
  Label successor;

  private void addReference(int paramInt1, int paramInt2)
  {
    if (this.srcAndRefPositions == null)
      this.srcAndRefPositions = new int[6];
    if (this.referenceCount >= this.srcAndRefPositions.length)
    {
      int[] arrayOfInt3 = new int[6 + this.srcAndRefPositions.length];
      System.arraycopy(this.srcAndRefPositions, 0, arrayOfInt3, 0, this.srcAndRefPositions.length);
      this.srcAndRefPositions = arrayOfInt3;
    }
    int[] arrayOfInt1 = this.srcAndRefPositions;
    int i = this.referenceCount;
    this.referenceCount = (i + 1);
    arrayOfInt1[i] = paramInt1;
    int[] arrayOfInt2 = this.srcAndRefPositions;
    int j = this.referenceCount;
    this.referenceCount = (j + 1);
    arrayOfInt2[j] = paramInt2;
  }

  void put(MethodWriter paramMethodWriter, ByteVector paramByteVector, int paramInt)
  {
    if ((0x2 & this.status) == 0)
    {
      addReference(paramInt, paramByteVector.length);
      paramByteVector.putShort(-1);
      return;
    }
    paramByteVector.putShort(this.position - paramInt);
  }

  boolean resolve(MethodWriter paramMethodWriter, int paramInt, byte[] paramArrayOfByte)
  {
    int i = 0;
    this.status = (0x2 | this.status);
    this.position = paramInt;
    boolean bool = false;
    while (i < this.referenceCount)
    {
      int[] arrayOfInt1 = this.srcAndRefPositions;
      int j = i + 1;
      int k = arrayOfInt1[i];
      int[] arrayOfInt2 = this.srcAndRefPositions;
      i = j + 1;
      int m = arrayOfInt2[j];
      if (k >= 0)
      {
        int i4 = paramInt - k;
        int i5;
        if ((i4 < -32768) || (i4 > 32767))
        {
          i5 = 0xFF & paramArrayOfByte[(m - 1)];
          if (i5 > 168)
            break label156;
          paramArrayOfByte[(m - 1)] = ((byte)(i5 + 49));
        }
        while (true)
        {
          bool = true;
          int i6 = m + 1;
          paramArrayOfByte[m] = ((byte)(i4 >>> 8));
          paramArrayOfByte[i6] = ((byte)i4);
          break;
          label156: paramArrayOfByte[(m - 1)] = ((byte)(i5 + 20));
        }
      }
      int n = 1 + (k + paramInt);
      int i1 = m + 1;
      paramArrayOfByte[m] = ((byte)(n >>> 24));
      int i2 = i1 + 1;
      paramArrayOfByte[i1] = ((byte)(n >>> 16));
      int i3 = i2 + 1;
      paramArrayOfByte[i2] = ((byte)(n >>> 8));
      paramArrayOfByte[i3] = ((byte)n);
    }
    return bool;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alibaba.fastjson.asm.Label
 * JD-Core Version:    0.6.2
 */