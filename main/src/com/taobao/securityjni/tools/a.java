package com.taobao.securityjni.tools;

import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;

public final class a
{
  public static String a(InputStream paramInputStream)
  {
    return a(paramInputStream, "MD5");
  }

  private static String a(InputStream paramInputStream, String paramString)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance(paramString);
      byte[] arrayOfByte = new byte[1024];
      for (int i = paramInputStream.read(arrayOfByte, 0, 1024); i >= 0; i = paramInputStream.read(arrayOfByte, 0, 1024))
        localMessageDigest.update(arrayOfByte, 0, i);
      String str = b.a(localMessageDigest.digest());
      return str;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new IllegalStateException("Security exception", localGeneralSecurityException);
    }
  }

  public static String b(InputStream paramInputStream)
  {
    return a(paramInputStream, "SHA-256");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.tools.a
 * JD-Core Version:    0.6.2
 */