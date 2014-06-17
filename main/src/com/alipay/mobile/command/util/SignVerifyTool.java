package com.alipay.mobile.command.util;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.util.Base64;
import java.io.IOException;
import java.io.InputStream;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.HashSet;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

public class SignVerifyTool
{
  public static final String TAG = "SignVerifyTool";
  private static final Signature[] a;

  static
  {
    Signature[] arrayOfSignature = new Signature[1];
    a = arrayOfSignature;
    arrayOfSignature[0] = new Signature(Base64.decode("MIICRDCCAa0CBEsoo8kwDQYJKoZIhvcNAQEEBQAwaDELMAkGA1UEBhMCY24xEDAOBgNVBAgTB2JlaWppbmcxEDAOBgNVBAcTB2JlaWppbmcxDzANBgNVBAoTBmFsaXBheTEPMA0GA1UECxMGYWxpcGF5MRMwEQYDVQQDEwpzaGlxdW4uc2hpMCAXDTA5MTIxNjA5MDkyOVoYDzIwNTEwMTEwMDkwOTI5WjBoMQswCQYDVQQGEwJjbjEQMA4GA1UECBMHYmVpamluZzEQMA4GA1UEBxMHYmVpamluZzEPMA0GA1UEChMGYWxpcGF5MQ8wDQYDVQQLEwZhbGlwYXkxEzARBgNVBAMTCnNoaXF1bi5zaGkwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBALbLrWy9XtDSCa/GmtO3phfvqumzxH6r4L5C2SSTb6eMgAGx/XSweeX/lpAGHaz6R2jpgaUmucp3FWyjYlHPL5BtEFSBN0mYp+bm4Y91ypi47S6vhv9ALIdMygomMFPyIjeFggaGfSEAINqjjEiyDMnf2CtEpRrrXbRZsieU4tZJAgMBAAEwDQYJKoZIhvcNAQEEBQADgYEAtrXjhUstXaqgLRJxldE6GSeZEXYEeYL+qj0WJXQHiClkQ+kAD+FN/mcB1+hr4GuSguaNTv8ysZ1IVVuKCDim4UYjjwSKyphnFdfqsPtEV5a70ZNgp3IbjZm6BFga+VeikMRzAgVfgThi88QLhA6ViY5yod4DtiV6GsrUtILNgVw=", 0));
  }

  private static boolean a(String paramString1, String paramString2)
  {
    Certificate[] arrayOfCertificate = b(paramString1, paramString2);
    if (arrayOfCertificate == null)
      return false;
    Signature[] arrayOfSignature = null;
    if (arrayOfCertificate != null)
    {
      int i = arrayOfCertificate.length;
      arrayOfSignature = null;
      if (i > 0)
      {
        int j = arrayOfCertificate.length;
        arrayOfSignature = new Signature[arrayOfCertificate.length];
        int k = 0;
        while (true)
          if (k < j)
            try
            {
              arrayOfSignature[k] = new Signature(arrayOfCertificate[k].getEncoded());
              k++;
            }
            catch (CertificateEncodingException localCertificateEncodingException)
            {
              while (true)
                localCertificateEncodingException.printStackTrace();
            }
      }
    }
    return a(a, arrayOfSignature);
  }

  private static boolean a(Signature[] paramArrayOfSignature1, Signature[] paramArrayOfSignature2)
  {
    if ((paramArrayOfSignature1 == null) || (paramArrayOfSignature2 == null));
    HashSet localHashSet1;
    HashSet localHashSet2;
    do
    {
      return false;
      localHashSet1 = new HashSet();
      int i = paramArrayOfSignature1.length;
      for (int j = 0; j < i; j++)
        localHashSet1.add(paramArrayOfSignature1[j]);
      localHashSet2 = new HashSet();
      int k = paramArrayOfSignature2.length;
      for (int m = 0; m < k; m++)
        localHashSet2.add(paramArrayOfSignature2[m]);
    }
    while (!localHashSet1.equals(localHashSet2));
    return true;
  }

  private static Certificate[] a(JarFile paramJarFile, JarEntry paramJarEntry, byte[] paramArrayOfByte)
  {
    try
    {
      InputStream localInputStream = paramJarFile.getInputStream(paramJarEntry);
      while (localInputStream.read(paramArrayOfByte, 0, paramArrayOfByte.length) != -1);
      localInputStream.close();
      Object localObject = null;
      if (paramJarEntry != null)
      {
        Certificate[] arrayOfCertificate = paramJarEntry.getCertificates();
        localObject = arrayOfCertificate;
      }
      return localObject;
    }
    catch (IOException localIOException)
    {
      new StringBuilder("Exception reading ").append(paramJarEntry.getName()).append(" in ").append(paramJarFile.getName()).toString();
      return null;
    }
    catch (RuntimeException localRuntimeException)
    {
      new StringBuilder("Exception reading ").append(paramJarEntry.getName()).append(" in ").append(paramJarFile.getName()).toString();
    }
    return null;
  }

  // ERROR //
  private static Certificate[] b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 66	java/util/jar/JarFile
    //   5: dup
    //   6: aload_0
    //   7: invokespecial 107	java/util/jar/JarFile:<init>	(Ljava/lang/String;)V
    //   10: astore_3
    //   11: sipush 8192
    //   14: newarray byte
    //   16: astore 11
    //   18: aload_3
    //   19: aload_1
    //   20: invokevirtual 111	java/util/jar/JarFile:getJarEntry	(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    //   23: astore 12
    //   25: aload_3
    //   26: aload 12
    //   28: aload 11
    //   30: invokestatic 113	com/alipay/mobile/command/util/SignVerifyTool:a	(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    //   33: astore_2
    //   34: aload_2
    //   35: ifnonnull +29 -> 64
    //   38: new 87	java/lang/StringBuilder
    //   41: dup
    //   42: ldc 115
    //   44: invokespecial 92	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: aload 12
    //   49: invokevirtual 96	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   52: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   55: ldc 117
    //   57: invokevirtual 100	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: pop
    //   64: aload_3
    //   65: invokevirtual 118	java/util/jar/JarFile:close	()V
    //   68: aload_2
    //   69: areturn
    //   70: astore 14
    //   72: iconst_1
    //   73: anewarray 4	java/lang/Object
    //   76: dup
    //   77: iconst_0
    //   78: ldc 120
    //   80: aastore
    //   81: pop
    //   82: aload_2
    //   83: areturn
    //   84: astore 17
    //   86: aconst_null
    //   87: astore_3
    //   88: iconst_1
    //   89: anewarray 4	java/lang/Object
    //   92: dup
    //   93: iconst_0
    //   94: ldc 122
    //   96: aastore
    //   97: pop
    //   98: aload_3
    //   99: ifnull -31 -> 68
    //   102: aload_3
    //   103: invokevirtual 118	java/util/jar/JarFile:close	()V
    //   106: aload_2
    //   107: areturn
    //   108: astore 6
    //   110: iconst_1
    //   111: anewarray 4	java/lang/Object
    //   114: dup
    //   115: iconst_0
    //   116: ldc 120
    //   118: aastore
    //   119: pop
    //   120: aload_2
    //   121: areturn
    //   122: astore 16
    //   124: aconst_null
    //   125: astore_3
    //   126: aload 16
    //   128: astore 8
    //   130: aload_3
    //   131: ifnull +7 -> 138
    //   134: aload_3
    //   135: invokevirtual 118	java/util/jar/JarFile:close	()V
    //   138: aload 8
    //   140: athrow
    //   141: astore 9
    //   143: iconst_1
    //   144: anewarray 4	java/lang/Object
    //   147: dup
    //   148: iconst_0
    //   149: ldc 120
    //   151: aastore
    //   152: pop
    //   153: goto -15 -> 138
    //   156: astore 8
    //   158: goto -28 -> 130
    //   161: astore 4
    //   163: goto -75 -> 88
    //
    // Exception table:
    //   from	to	target	type
    //   64	68	70	java/io/IOException
    //   2	11	84	java/io/IOException
    //   102	106	108	java/io/IOException
    //   2	11	122	finally
    //   134	138	141	java/io/IOException
    //   11	34	156	finally
    //   38	64	156	finally
    //   88	98	156	finally
    //   11	34	161	java/io/IOException
    //   38	64	161	java/io/IOException
  }

  public static Signature[] getPackageSignatures(Context paramContext, String paramString)
  {
    try
    {
      Signature[] arrayOfSignature = paramContext.getPackageManager().getPackageInfo(paramString, 64).signatures;
      return arrayOfSignature;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return null;
  }

  public static boolean verifyApk(Signature[] paramArrayOfSignature, String paramString1, String paramString2)
  {
    if (CommandUtil.isInWallet())
    {
      Certificate[] arrayOfCertificate = b(paramString1, paramString2);
      if (arrayOfCertificate == null)
        return false;
      Signature[] arrayOfSignature = null;
      if (arrayOfCertificate != null)
      {
        int i = arrayOfCertificate.length;
        arrayOfSignature = null;
        if (i > 0)
        {
          int j = arrayOfCertificate.length;
          arrayOfSignature = new Signature[arrayOfCertificate.length];
          int k = 0;
          while (true)
            if (k < j)
              try
              {
                arrayOfSignature[k] = new Signature(arrayOfCertificate[k].getEncoded());
                k++;
              }
              catch (CertificateEncodingException localCertificateEncodingException)
              {
                while (true)
                  localCertificateEncodingException.printStackTrace();
              }
        }
      }
      return a(paramArrayOfSignature, arrayOfSignature);
    }
    return a(paramString1, paramString2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.util.SignVerifyTool
 * JD-Core Version:    0.6.2
 */