package com.alipay.mobilesecuritysdk.deviceID;

import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class SecurityUtils
{
  private static String a = new String("idnjfhncnsfuobcnt847y929o449u474w7j3h22aoddc98euk#%&&)*&^%#");

  public static String a()
  {
    String str = new String();
    for (int i = 0; ; i += 4)
    {
      if (i >= -1 + a.length())
        return str;
      str = str + a.charAt(i);
    }
  }

  public static String a(String paramString1, String paramString2)
  {
    try
    {
      byte[] arrayOfByte2 = a(paramString1.getBytes());
      byte[] arrayOfByte3 = paramString2.getBytes();
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte2, "AES");
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      localCipher.init(1, localSecretKeySpec, new IvParameterSpec(new byte[localCipher.getBlockSize()]));
      byte[] arrayOfByte4 = localCipher.doFinal(arrayOfByte3);
      arrayOfByte1 = arrayOfByte4;
      return b(arrayOfByte1);
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        byte[] arrayOfByte1 = null;
      }
    }
  }

  private static byte[] a(byte[] paramArrayOfByte)
  {
    KeyGenerator localKeyGenerator = KeyGenerator.getInstance("AES");
    SecureRandom localSecureRandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");
    localSecureRandom.setSeed(paramArrayOfByte);
    localKeyGenerator.init(128, localSecureRandom);
    return localKeyGenerator.generateKey().getEncoded();
  }

  public static String b(String paramString1, String paramString2)
  {
    try
    {
      byte[] arrayOfByte1 = a(paramString1.getBytes());
      int i = paramString2.length() / 2;
      byte[] arrayOfByte2 = new byte[i];
      for (int j = 0; ; j++)
      {
        if (j >= i)
        {
          SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte1, "AES");
          Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
          localCipher.init(2, localSecretKeySpec, new IvParameterSpec(new byte[localCipher.getBlockSize()]));
          return new String(localCipher.doFinal(arrayOfByte2));
        }
        arrayOfByte2[j] = Integer.valueOf(paramString2.substring(j * 2, 2 + j * 2), 16).byteValue();
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  private static String b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return "";
    StringBuffer localStringBuffer = new StringBuffer(2 * paramArrayOfByte.length);
    for (int i = 0; ; i++)
    {
      if (i >= paramArrayOfByte.length)
        return localStringBuffer.toString();
      int j = paramArrayOfByte[i];
      localStringBuffer.append("0123456789ABCDEF".charAt(0xF & j >> 4)).append("0123456789ABCDEF".charAt(j & 0xF));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecuritysdk.deviceID.SecurityUtils
 * JD-Core Version:    0.6.2
 */