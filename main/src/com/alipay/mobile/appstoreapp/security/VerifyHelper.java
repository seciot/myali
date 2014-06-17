package com.alipay.mobile.appstoreapp.security;

import android.util.Base64;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;

public class VerifyHelper
{
  public static boolean a(File paramFile, String paramString)
  {
    MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
    FileInputStream localFileInputStream = new FileInputStream(paramFile);
    byte[] arrayOfByte1 = new byte[8192];
    while (true)
    {
      int i = localFileInputStream.read(arrayOfByte1);
      if (i <= 0)
        break;
      localMessageDigest.update(arrayOfByte1, 0, i);
    }
    byte[] arrayOfByte2 = localMessageDigest.digest();
    localFileInputStream.close();
    X509EncodedKeySpec localX509EncodedKeySpec = new X509EncodedKeySpec(Base64.decode("MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCiTyQpH9s5luQw15KpRM20UeNaSl5u4YYkcqoCljz4lb5Z8qw6gdU8WG7AENn4kRF3X2hvr42i6IU+j/vGO2DQDuPVaihysDEm2e7rgT1AVTaMHNYdEvbLFPrYqDntSAmH07nknOYEDbobGaQInfJsUf3TUh4rZiAMxC2DnlPftwIDAQAB", 2));
    PublicKey localPublicKey = KeyFactory.getInstance("RSA").generatePublic(localX509EncodedKeySpec);
    Signature localSignature = Signature.getInstance("MD5withRSA");
    localSignature.initVerify(localPublicKey);
    localSignature.update(arrayOfByte2);
    return localSignature.verify(Base64.decode(paramString, 2));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.security.VerifyHelper
 * JD-Core Version:    0.6.2
 */