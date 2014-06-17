package com.aps;

import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class b
{
  private String a = "AES/CBC/PKCS5Padding";
  private Cipher b = null;
  private Cipher c = null;

  b()
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec("#a@u!t*o(n)a&v^i".getBytes("UTF-8"), "AES");
      this.b = Cipher.getInstance(this.a);
      IvParameterSpec localIvParameterSpec = new IvParameterSpec("_a+m-a=p?a>p<s%3".getBytes("UTF-8"));
      this.b.init(1, localSecretKeySpec, localIvParameterSpec);
      this.c = Cipher.getInstance(this.a);
      this.c.init(2, localSecretKeySpec, localIvParameterSpec);
      return;
    }
    catch (Exception localException)
    {
      localException = localException;
      n.a(localException);
      return;
    }
    finally
    {
    }
  }

  static String a(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = paramArrayOfByte.length;
    int j = 0;
    if (j < i)
    {
      String str = Integer.toHexString(0xFF & paramArrayOfByte[j]);
      if (str.length() == 1)
        localStringBuilder.append(String.format("0%s", new Object[] { str }));
      while (true)
      {
        j++;
        break;
        localStringBuilder.append(str);
      }
    }
    return localStringBuilder.toString();
  }

  private static byte[] a(String paramString)
  {
    int i = 0;
    byte[] arrayOfByte = null;
    if (paramString != null)
    {
      int j = paramString.length();
      arrayOfByte = null;
      if (j != 0)
      {
        int k = paramString.length() % 2;
        arrayOfByte = null;
        if (k != 1)
          break label37;
      }
    }
    while (true)
    {
      return arrayOfByte;
      try
      {
        label37: arrayOfByte = new byte[paramString.length() / 2];
        StringBuilder localStringBuilder = new StringBuilder();
        while (i < paramString.length())
        {
          localStringBuilder.delete(0, localStringBuilder.length());
          localStringBuilder.append("0X");
          localStringBuilder.append(paramString.substring(i, i + 2));
          String str = localStringBuilder.toString();
          arrayOfByte[(i / 2)] = ((byte)Integer.decode(str).intValue());
          i += 2;
        }
      }
      catch (Exception localException)
      {
        localException = localException;
        n.a(localException);
        return arrayOfByte;
      }
      finally
      {
      }
    }
  }

  public static String b(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null)
      return "";
    try
    {
      String str = Base64.encodeToString(paramArrayOfByte, 2);
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  String a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
      return null;
    try
    {
      byte[] arrayOfByte = a(paramString1);
      String str = new String(this.c.doFinal(arrayOfByte), paramString2);
      return str;
    }
    catch (Exception localException)
    {
      n.a(localException);
    }
    return null;
  }

  void a(StringBuilder paramStringBuilder, String paramString)
  {
    if ((paramStringBuilder == null) || (paramStringBuilder.length() == 0))
      return;
    try
    {
      byte[] arrayOfByte = paramStringBuilder.toString().getBytes(paramString);
      paramStringBuilder.delete(0, paramStringBuilder.length());
      paramStringBuilder.append(a(this.b.doFinal(arrayOfByte)));
      return;
    }
    catch (Exception localException)
    {
      localException = localException;
      n.a(localException);
      return;
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.b
 * JD-Core Version:    0.6.2
 */