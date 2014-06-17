package com.alipay.nfc.tech;

import com.alipay.nfc.Util;

public class Iso7816
{
  public static final byte[] a = { 0 };
  protected byte[] b;

  protected Iso7816()
  {
    this.b = a;
  }

  protected Iso7816(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      paramArrayOfByte = a;
    this.b = paramArrayOfByte;
  }

  public int a()
  {
    return this.b.length;
  }

  public final boolean a(byte paramByte)
  {
    return (this.b.length == 1) && (this.b[0] == paramByte);
  }

  public final boolean a(byte[] paramArrayOfByte, int paramInt)
  {
    byte[] arrayOfByte = this.b;
    if (arrayOfByte.length <= paramArrayOfByte.length - paramInt)
    {
      int i = arrayOfByte.length;
      int j = 0;
      while (j < i)
      {
        int k = arrayOfByte[j];
        int m = paramInt + 1;
        if (k != paramArrayOfByte[paramInt])
          return false;
        j++;
        paramInt = m;
      }
    }
    return true;
  }

  public byte[] b()
  {
    return this.b;
  }

  public String toString()
  {
    return Util.b(this.b, 0, this.b.length);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.nfc.tech.Iso7816
 * JD-Core Version:    0.6.2
 */