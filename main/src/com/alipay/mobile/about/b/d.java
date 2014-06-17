package com.alipay.mobile.about.b;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class d
{
  private static final char[] a = { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70 };

  public static String a(String paramString)
  {
    return c(paramString);
  }

  private static byte[] b(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString)))
      return new byte[0];
    try
    {
      synchronized (MessageDigest.getInstance("MD5"))
      {
        ???.update(paramString.getBytes());
        byte[] arrayOfByte = ???.digest();
        return arrayOfByte;
      }
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
    }
    throw new IllegalStateException("System doesn't support MD5 algorithm.");
  }

  private static String c(String paramString)
  {
    String str1;
    if ((paramString == null) || ("".equals(paramString)))
    {
      str1 = paramString;
      return str1;
    }
    while (true)
    {
      int k;
      int m;
      try
      {
        byte[] arrayOfByte = b(paramString);
        str1 = new String();
        int i = 0;
        if (i >= arrayOfByte.length)
          break;
        int j = arrayOfByte[i];
        k = (char)(0xF & j >>> 4);
        if (k >= 10)
        {
          c1 = (char)(-10 + (k + 97));
          String str2 = str1 + c1;
          m = (char)(j & 0xF);
          if (m < 10)
            break label167;
          c2 = (char)(-10 + (m + 97));
          str1 = str2 + c2;
          i++;
          continue;
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return "";
      }
      char c1 = (char)(k + 48);
      continue;
      label167: char c2 = (char)(m + 48);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.b.d
 * JD-Core Version:    0.6.2
 */