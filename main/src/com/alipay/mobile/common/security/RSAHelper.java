package com.alipay.mobile.common.security;

import android.util.Base64;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

public class RSAHelper
{
  private static PublicKey a(String paramString1, String paramString2)
  {
    try
    {
      X509EncodedKeySpec localX509EncodedKeySpec = new X509EncodedKeySpec(Base64.decode(paramString2, 2));
      PublicKey localPublicKey = KeyFactory.getInstance(paramString1).generatePublic(localX509EncodedKeySpec);
      return localPublicKey;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String encrypt(String paramString1, String paramString2)
  {
    String str1;
    if ("".equals(paramString1))
      str1 = "";
    while (true)
    {
      return str1;
      try
      {
        PublicKey localPublicKey = a("RSA", paramString2);
        str1 = null;
        if (localPublicKey != null)
        {
          Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
          localCipher.init(1, localPublicKey);
          String str2 = new String(Base64.encode(localCipher.doFinal(paramString1.getBytes("UTF-8")), 2));
          return str2;
        }
      }
      catch (Exception localException)
      {
      }
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.security.RSAHelper
 * JD-Core Version:    0.6.2
 */