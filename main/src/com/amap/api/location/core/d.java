package com.amap.api.location.core;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.IOException;
import java.io.InputStream;
import java.security.Key;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public class d
{
  static byte[] a = { 1, 2, 3, 4, 5, 6, 7, 8 };

  static String a()
  {
    String str = "";
    for (int i = 0; i < 8; i++)
    {
      int j = (int)(33.0D + 94.0D * Math.random());
      str = str + (char)j;
    }
    return str;
  }

  static PublicKey a(Context paramContext)
  {
    AssetManager localAssetManager = paramContext.getAssets();
    try
    {
      InputStream localInputStream = localAssetManager.open("location_public_key.der");
      CertificateFactory localCertificateFactory = CertificateFactory.getInstance("X.509");
      KeyFactory localKeyFactory = KeyFactory.getInstance("RSA");
      Certificate localCertificate = localCertificateFactory.generateCertificate(localInputStream);
      localInputStream.close();
      PublicKey localPublicKey = localKeyFactory.generatePublic(new X509EncodedKeySpec(localCertificate.getPublicKey().getEncoded()));
      return localPublicKey;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new Exception("无此算法");
    }
    catch (InvalidKeySpecException localInvalidKeySpecException)
    {
      throw new Exception("公钥非法");
    }
    catch (NullPointerException localNullPointerException)
    {
      throw new Exception("公钥数据为空");
    }
    catch (CertificateException localCertificateException)
    {
      return null;
    }
    catch (IOException localIOException)
    {
      label105: break label105;
    }
  }

  static byte[] a(byte[] paramArrayOfByte, Key paramKey)
  {
    Cipher localCipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
    localCipher.init(1, paramKey);
    return localCipher.doFinal(paramArrayOfByte);
  }

  static byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    IvParameterSpec localIvParameterSpec = new IvParameterSpec(a);
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(paramArrayOfByte1, "DES");
    Cipher localCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
    localCipher.init(1, localSecretKeySpec, localIvParameterSpec);
    return localCipher.doFinal(paramArrayOfByte2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.d
 * JD-Core Version:    0.6.2
 */