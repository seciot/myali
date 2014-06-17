package com.ut.c;

public class b
{
  public static byte[] getBytes(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    arrayOfByte[3] = ((byte)(paramInt % 256));
    int i = paramInt >> 8;
    arrayOfByte[2] = ((byte)(i % 256));
    int j = i >> 8;
    arrayOfByte[1] = ((byte)(j % 256));
    arrayOfByte[0] = ((byte)((j >> 8) % 256));
    return arrayOfByte;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.c.b
 * JD-Core Version:    0.6.2
 */