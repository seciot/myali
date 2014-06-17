package com.alipay.mobile.quinox.bundle;

import android.content.pm.Signature;
import com.alipay.mobile.quinox.utils.d;
import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.jar.Attributes;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.Manifest;
import java.util.zip.ZipFile;

public final class a
  implements Comparable
{
  private String a;
  private String b;
  private String c;
  private int d;
  private String e;
  private String[] f;
  private String[] g;
  private String h;
  private boolean i;
  private boolean j;
  private String[] k;
  private boolean l;

  public a(String paramString)
  {
    this.e = paramString;
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
      int m = paramArrayOfSignature1.length;
      for (int n = 0; n < m; n++)
        localHashSet1.add(paramArrayOfSignature1[n]);
      localHashSet2 = new HashSet();
      int i1 = paramArrayOfSignature2.length;
      for (int i2 = 0; i2 < i1; i2++)
        localHashSet2.add(paramArrayOfSignature2[i2]);
    }
    while (!localHashSet1.equals(localHashSet2));
    return true;
  }

  // ERROR //
  private static Certificate[] a(JarFile paramJarFile, JarEntry paramJarEntry, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_1
    //   3: ifnonnull +5 -> 8
    //   6: aload_3
    //   7: areturn
    //   8: aload_0
    //   9: aload_1
    //   10: invokevirtual 47	java/util/jar/JarFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   13: astore 7
    //   15: aload 7
    //   17: astore 5
    //   19: aload 5
    //   21: aload_2
    //   22: iconst_0
    //   23: aload_2
    //   24: arraylength
    //   25: invokevirtual 53	java/io/InputStream:read	([BII)I
    //   28: iconst_m1
    //   29: if_icmpne -10 -> 19
    //   32: aload 5
    //   34: invokevirtual 56	java/io/InputStream:close	()V
    //   37: aconst_null
    //   38: astore_3
    //   39: aload_1
    //   40: ifnull +12 -> 52
    //   43: aload_1
    //   44: invokevirtual 62	java/util/jar/JarEntry:getCertificates	()[Ljava/security/cert/Certificate;
    //   47: astore 8
    //   49: aload 8
    //   51: astore_3
    //   52: aload 5
    //   54: ifnull -48 -> 6
    //   57: aload 5
    //   59: invokevirtual 56	java/io/InputStream:close	()V
    //   62: aload_3
    //   63: areturn
    //   64: astore 4
    //   66: aconst_null
    //   67: astore 5
    //   69: aload 4
    //   71: astore 6
    //   73: aload 5
    //   75: ifnull +8 -> 83
    //   78: aload 5
    //   80: invokevirtual 56	java/io/InputStream:close	()V
    //   83: aload 6
    //   85: athrow
    //   86: astore 6
    //   88: goto -15 -> 73
    //
    // Exception table:
    //   from	to	target	type
    //   8	15	64	finally
    //   19	37	86	finally
    //   43	49	86	finally
  }

  public final void a()
  {
    JarFile localJarFile = new JarFile(this.e);
    if (localJarFile.getEntry("resources.arsc") != null)
      this.i = true;
    if (localJarFile.getEntry("classes.dex") != null)
      this.j = true;
    Attributes localAttributes = new Manifest(localJarFile.getInputStream(localJarFile.getJarEntry("META-INF/BUNDLE.MF"))).getMainAttributes();
    this.a = localAttributes.getValue("Bundle-Name");
    this.b = localAttributes.getValue("Bundle-Version");
    this.d = Integer.parseInt(localAttributes.getValue("Init-Level"));
    this.c = this.a.concat("@").concat(this.b);
    this.f = localAttributes.getValue("Package-Name").split(",");
    ArrayList localArrayList = new ArrayList();
    String str1 = localAttributes.getValue("Activity-Name");
    if (str1 != null)
      localArrayList.addAll(Arrays.asList(str1.split(",")));
    String str2 = localAttributes.getValue("Service-Name");
    if (str2 != null)
      localArrayList.addAll(Arrays.asList(str2.split(",")));
    String str3 = localAttributes.getValue("Receiver-Name");
    if (str3 != null)
      localArrayList.addAll(Arrays.asList(str3.split(",")));
    String str4 = localAttributes.getValue("Provider-Name");
    if (str4 != null)
      localArrayList.addAll(Arrays.asList(str4.split(",")));
    this.g = ((String[])localArrayList.toArray(new String[localArrayList.size()]));
    this.h = localAttributes.getValue("Package-Id");
    String str5 = localAttributes.getValue("Require-Bundle");
    if (str5 != null)
      this.k = str5.split(",");
  }

  public final void a(String paramString)
  {
    try
    {
      this.e = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(String[] paramArrayOfString, ZipFile paramZipFile)
  {
    if ((paramZipFile != null) && (paramZipFile.getEntry("resources.arsc") != null))
      this.i = true;
    if ((paramZipFile != null) && (paramZipFile.getEntry("classes.dex") != null))
      this.j = true;
    this.a = paramArrayOfString[1];
    this.b = paramArrayOfString[2];
    this.d = Integer.parseInt(paramArrayOfString[3]);
    this.c = this.a.concat("@").concat(this.b);
    this.f = paramArrayOfString[4].split(",");
    this.g = paramArrayOfString[5].split(",");
    this.h = paramArrayOfString[6];
    if (paramArrayOfString.length >= 8)
      this.k = paramArrayOfString[7].split(",");
  }

  public final boolean a(Signature[] paramArrayOfSignature)
  {
    int m;
    do
      try
      {
        localJarFile = new JarFile(f());
        byte[] arrayOfByte = new byte[8192];
        JarEntry localJarEntry = localJarFile.getJarEntry("classes.dex");
        if (localJarEntry == null)
          localJarEntry = localJarFile.getJarEntry("resources.arsc");
        arrayOfCertificate = a(localJarFile, localJarEntry, arrayOfByte);
        if (arrayOfCertificate == null)
          throw new IOException("Has no certificates");
      }
      catch (CertificateEncodingException localCertificateEncodingException)
      {
        JarFile localJarFile;
        Certificate[] arrayOfCertificate;
        d.a("Bundle", "verify sign error : " + f(), localCertificateEncodingException);
        return false;
        localJarFile.close();
        if (arrayOfCertificate == null)
        {
          m = 0;
        }
        else
        {
          int n = arrayOfCertificate.length;
          Signature[] arrayOfSignature = null;
          if (n > 0)
          {
            int i1 = arrayOfCertificate.length;
            arrayOfSignature = new Signature[arrayOfCertificate.length];
            for (int i2 = 0; i2 < i1; i2++)
              arrayOfSignature[i2] = new Signature(arrayOfCertificate[i2].getEncoded());
          }
          boolean bool = a(paramArrayOfSignature, arrayOfSignature);
          m = bool;
        }
      }
      catch (IOException localIOException)
      {
        d.a("Bundle", "verify sign error : " + f(), localIOException);
        return false;
      }
    while (m == 0);
    return true;
  }

  public final String b()
  {
    int m = 0;
    try
    {
      StringBuffer localStringBuffer1 = new StringBuffer();
      localStringBuffer1.append(this.e).append("|");
      localStringBuffer1.append(this.a).append("|");
      localStringBuffer1.append(this.b).append("|");
      localStringBuffer1.append(this.d).append("|");
      StringBuffer localStringBuffer2 = new StringBuffer();
      for (String str1 : this.f)
      {
        if (str1.length() > 0)
          localStringBuffer2.append(",");
        localStringBuffer2.append(str1);
      }
      localStringBuffer1.append(localStringBuffer2.toString()).append("|");
      StringBuffer localStringBuffer3 = new StringBuffer();
      for (String str2 : this.g)
      {
        if (str2.length() > 0)
          localStringBuffer3.append(",");
        localStringBuffer3.append(str2);
      }
      localStringBuffer1.append(localStringBuffer3.toString()).append("|");
      localStringBuffer1.append(this.h).append("|");
      StringBuffer localStringBuffer4 = new StringBuffer("");
      if (this.k != null)
      {
        String[] arrayOfString3 = this.k;
        int i4 = arrayOfString3.length;
        while (m < i4)
        {
          String str4 = arrayOfString3[m];
          if (localStringBuffer4.length() > 0)
            localStringBuffer4.append(",");
          localStringBuffer4.append(str4);
          m++;
        }
        localStringBuffer1.append(localStringBuffer4.toString());
      }
      String str3 = localStringBuffer1.toString();
      return str3;
    }
    finally
    {
    }
  }

  public final String c()
  {
    return this.a;
  }

  public final int d()
  {
    return this.d;
  }

  public final String e()
  {
    return this.c;
  }

  public final String f()
  {
    try
    {
      String str = this.e;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String[] g()
  {
    return this.f;
  }

  public final boolean h()
  {
    return this.i;
  }

  public final boolean i()
  {
    return this.j;
  }

  public final String[] j()
  {
    return this.k;
  }

  public final String k()
  {
    return this.b;
  }

  public final boolean l()
  {
    try
    {
      boolean bool = this.l;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void m()
  {
    try
    {
      this.l = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final String[] n()
  {
    return this.g;
  }

  public final String toString()
  {
    int m = 0;
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.e;
    arrayOfObject[1] = this.a;
    arrayOfObject[2] = this.b;
    String[] arrayOfString = this.k;
    StringBuilder localStringBuilder = new StringBuilder();
    int n = arrayOfString.length;
    while (m < n)
    {
      String str = arrayOfString[m];
      if (localStringBuilder.length() > 0)
        localStringBuilder.append(',');
      localStringBuilder.append(str.toString());
      m++;
    }
    arrayOfObject[3] = localStringBuilder.toString();
    return String.format("path=%s name=%s version=%s depends=%s", arrayOfObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.bundle.a
 * JD-Core Version:    0.6.2
 */