package com.alipay.android.app.encrypt;

import com.alipay.android.app.util.LogUtils;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;

public class Des
{
  private static String a(int paramInt, String paramString1, String paramString2)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramString2.getBytes(), "DES");
      Cipher localCipher = Cipher.getInstance("DES");
      localCipher.init(paramInt, localSecretKeySpec);
      if (paramInt == 2);
      byte[] arrayOfByte2;
      for (byte[] arrayOfByte1 = Base64.a(paramString1); ; arrayOfByte1 = paramString1.getBytes("UTF-8"))
      {
        arrayOfByte2 = localCipher.doFinal(arrayOfByte1);
        if (paramInt != 2)
          break;
        return new String(arrayOfByte2);
      }
      String str = Base64.a(arrayOfByte2);
      return str;
    }
    catch (Exception localException)
    {
      LogUtils.a(localException);
    }
    return null;
  }

  public static String a(String paramString1, String paramString2)
  {
    return a(1, paramString1, paramString2);
  }

  public static String b(String paramString1, String paramString2)
  {
    return a(2, paramString1, paramString2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.encrypt.Des
 * JD-Core Version:    0.6.2
 */