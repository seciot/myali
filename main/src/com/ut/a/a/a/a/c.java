package com.ut.a.a.a.a;

import java.io.UnsupportedEncodingException;

public class c
{
  private static IllegalStateException a(String paramString, UnsupportedEncodingException paramUnsupportedEncodingException)
  {
    return new IllegalStateException(paramString + ": " + paramUnsupportedEncodingException);
  }

  public static String a(byte[] paramArrayOfByte, String paramString)
  {
    if (paramArrayOfByte == null)
      return null;
    try
    {
      String str = new String(paramArrayOfByte, paramString);
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw v(paramString, localUnsupportedEncodingException);
    }
  }

  public static String e(byte[] paramArrayOfByte)
  {
    return v(paramArrayOfByte, "UTF-8");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.a.a.a.a.c
 * JD-Core Version:    0.6.2
 */