package com.taobao.security;

public final class f
{
  public static int[] a(String paramString)
  {
    int i = 0;
    byte[] arrayOfByte = paramString.toUpperCase().getBytes();
    int j = arrayOfByte.length / 2;
    if (j <= 0)
      return null;
    int[] arrayOfInt = new int[j];
    int k = 0;
    while (k < arrayOfByte.length)
    {
      int m = "0123456789ABCDEF".indexOf(arrayOfByte[k]);
      int n = "0123456789ABCDEF".indexOf(arrayOfByte[(k + 1)]);
      if ((m != -1) && (n != -1))
        arrayOfInt[i] = ((byte)((m & 0xF) << 4 | n & 0xF));
      k += 2;
      i++;
    }
    return arrayOfInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.f
 * JD-Core Version:    0.6.2
 */