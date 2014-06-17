package com.alipay.mobile.common.utils;

public class HexStringUtil
{
  private static final String[] a = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f" };

  public static String byteArrayToHexString(byte[] paramArrayOfByte)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    for (int i = 0; i < paramArrayOfByte.length; i++)
    {
      int j = paramArrayOfByte[i];
      if (j < 0)
        j += 256;
      int k = j / 16;
      int m = j % 16;
      localStringBuffer.append(a[k] + a[m]);
    }
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.HexStringUtil
 * JD-Core Version:    0.6.2
 */