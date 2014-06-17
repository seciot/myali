package com.alipay.android.app.encrypt;

import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class TriDes
{
  private static String a = "DESede/ECB/PKCS5Padding";

  public static String a(String paramString1, String paramString2)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString1.getBytes(), "DESede");
      Cipher localCipher = Cipher.getInstance(a);
      localCipher.init(1, localSecretKeySpec);
      String str = Base64.a(localCipher.doFinal(paramString2.getBytes()));
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public static String b(String paramString1, String paramString2)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString1.getBytes(), "DESede");
      Cipher localCipher = Cipher.getInstance(a);
      localCipher.init(2, localSecretKeySpec);
      String str = new String(localCipher.doFinal(Base64.a(paramString2)));
      return str;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.encrypt.TriDes
 * JD-Core Version:    0.6.2
 */