package com.alipay.mobile.common.apkutil;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import android.content.res.AssetManager;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.util.HashSet;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;

public class MiscUtils
{
  public static final String TAG = "MiscUtils";

  private static Method a(Object paramObject, String paramString, Class[] paramArrayOfClass)
  {
    Object localObject1 = null;
    Class localClass = paramObject.getClass();
    while (localClass != null)
    {
      if (paramArrayOfClass == null);
      try
      {
        Method localMethod;
        for (localObject1 = localClass.getDeclaredMethod(paramString, new Class[0]); ; localObject1 = localMethod)
        {
          ((Method)localObject1).setAccessible(true);
          return localObject1;
          localMethod = localClass.getDeclaredMethod(paramString, paramArrayOfClass);
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        Object localObject2 = localObject1;
        localNoSuchMethodException.printStackTrace();
        localClass = localClass.getSuperclass();
        localObject1 = localObject2;
      }
    }
    return localObject1;
  }

  // ERROR //
  private static boolean a(InputStream paramInputStream, OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: new 45	java/io/BufferedOutputStream
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 48	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   8: astore_2
    //   9: new 50	java/io/BufferedInputStream
    //   12: dup
    //   13: aload_0
    //   14: invokespecial 53	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   17: astore_3
    //   18: sipush 4096
    //   21: newarray byte
    //   23: astore 8
    //   25: aload_0
    //   26: aload 8
    //   28: invokevirtual 59	java/io/InputStream:read	([B)I
    //   31: istore 9
    //   33: iload 9
    //   35: iflt +36 -> 71
    //   38: aload_2
    //   39: aload 8
    //   41: iconst_0
    //   42: iload 9
    //   44: invokevirtual 63	java/io/BufferedOutputStream:write	([BII)V
    //   47: goto -22 -> 25
    //   50: astore 6
    //   52: aload_2
    //   53: astore 7
    //   55: aload 6
    //   57: invokevirtual 64	java/io/FileNotFoundException:printStackTrace	()V
    //   60: aload 7
    //   62: invokestatic 68	com/alipay/mobile/common/apkutil/MiscUtils:closeStream	(Ljava/io/Closeable;)V
    //   65: aload_3
    //   66: invokestatic 68	com/alipay/mobile/common/apkutil/MiscUtils:closeStream	(Ljava/io/Closeable;)V
    //   69: iconst_0
    //   70: ireturn
    //   71: aload_2
    //   72: invokevirtual 71	java/io/BufferedOutputStream:flush	()V
    //   75: aload_3
    //   76: invokevirtual 74	java/io/BufferedInputStream:close	()V
    //   79: aload_2
    //   80: invokevirtual 75	java/io/BufferedOutputStream:close	()V
    //   83: aload_2
    //   84: invokestatic 68	com/alipay/mobile/common/apkutil/MiscUtils:closeStream	(Ljava/io/Closeable;)V
    //   87: aload_3
    //   88: invokestatic 68	com/alipay/mobile/common/apkutil/MiscUtils:closeStream	(Ljava/io/Closeable;)V
    //   91: iconst_1
    //   92: ireturn
    //   93: astore 4
    //   95: aconst_null
    //   96: astore_3
    //   97: aconst_null
    //   98: astore_2
    //   99: aload 4
    //   101: invokevirtual 76	java/io/IOException:printStackTrace	()V
    //   104: aload_2
    //   105: invokestatic 68	com/alipay/mobile/common/apkutil/MiscUtils:closeStream	(Ljava/io/Closeable;)V
    //   108: aload_3
    //   109: invokestatic 68	com/alipay/mobile/common/apkutil/MiscUtils:closeStream	(Ljava/io/Closeable;)V
    //   112: iconst_0
    //   113: ireturn
    //   114: astore 5
    //   116: aconst_null
    //   117: astore_3
    //   118: aconst_null
    //   119: astore_2
    //   120: aload_2
    //   121: invokestatic 68	com/alipay/mobile/common/apkutil/MiscUtils:closeStream	(Ljava/io/Closeable;)V
    //   124: aload_3
    //   125: invokestatic 68	com/alipay/mobile/common/apkutil/MiscUtils:closeStream	(Ljava/io/Closeable;)V
    //   128: aload 5
    //   130: athrow
    //   131: astore 5
    //   133: aconst_null
    //   134: astore_3
    //   135: goto -15 -> 120
    //   138: astore 5
    //   140: goto -20 -> 120
    //   143: astore 5
    //   145: aload 7
    //   147: astore_2
    //   148: goto -28 -> 120
    //   151: astore 4
    //   153: aconst_null
    //   154: astore_3
    //   155: goto -56 -> 99
    //   158: astore 4
    //   160: goto -61 -> 99
    //   163: astore 6
    //   165: aconst_null
    //   166: astore_3
    //   167: aconst_null
    //   168: astore 7
    //   170: goto -115 -> 55
    //   173: astore 6
    //   175: aload_2
    //   176: astore 7
    //   178: aconst_null
    //   179: astore_3
    //   180: goto -125 -> 55
    //
    // Exception table:
    //   from	to	target	type
    //   18	25	50	java/io/FileNotFoundException
    //   25	33	50	java/io/FileNotFoundException
    //   38	47	50	java/io/FileNotFoundException
    //   71	83	50	java/io/FileNotFoundException
    //   0	9	93	java/io/IOException
    //   0	9	114	finally
    //   9	18	131	finally
    //   18	25	138	finally
    //   25	33	138	finally
    //   38	47	138	finally
    //   71	83	138	finally
    //   99	104	138	finally
    //   55	60	143	finally
    //   9	18	151	java/io/IOException
    //   18	25	158	java/io/IOException
    //   25	33	158	java/io/IOException
    //   38	47	158	java/io/IOException
    //   71	83	158	java/io/IOException
    //   0	9	163	java/io/FileNotFoundException
    //   9	18	173	java/io/FileNotFoundException
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

  public static Object callActivityOnMethod(Activity paramActivity, String paramString, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    if (paramActivity == null);
    while (true)
    {
      return null;
      try
      {
        Method localMethod = a(paramActivity, paramString, paramArrayOfClass);
        if (localMethod != null)
        {
          if (paramArrayOfObject == null)
            return localMethod.invoke(paramActivity, new Object[0]);
          Object localObject = localMethod.invoke(paramActivity, paramArrayOfObject);
          return localObject;
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.printStackTrace();
        return null;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
        return null;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        localInvocationTargetException.printStackTrace();
      }
    }
    return null;
  }

  public static void closeStream(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      return;
    }
    catch (IOException localIOException)
    {
      new StringBuilder().append(localIOException).toString();
    }
  }

  public static boolean copyFile(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString2 == null));
    File localFile1;
    do
    {
      return false;
      localFile1 = new File(paramString1);
    }
    while (!localFile1.exists());
    try
    {
      File localFile2 = new File(paramString2);
      if (!localFile2.exists())
        localFile2.createNewFile();
      boolean bool = a(new FileInputStream(localFile1), new FileOutputStream(localFile2));
      return bool;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return false;
  }

  public static boolean copyToFile(InputStream paramInputStream, File paramFile)
  {
    try
    {
      if (paramFile.exists())
        paramFile.delete();
      FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
      try
      {
        byte[] arrayOfByte = new byte[4096];
        while (true)
        {
          int i = paramInputStream.read(arrayOfByte);
          if (i < 0)
            break;
          localFileOutputStream.write(arrayOfByte, 0, i);
        }
      }
      finally
      {
        localFileOutputStream.close();
      }
      localFileOutputStream.close();
      return true;
    }
    catch (IOException localIOException)
    {
    }
    return false;
  }

  public static boolean fileFromAssets(String paramString1, AssetManager paramAssetManager, String paramString2)
  {
    if ((paramString1 == null) || (paramAssetManager == null) || (paramString2 == null))
      return false;
    try
    {
      File localFile = new File(paramString2);
      if (!localFile.exists())
        localFile.createNewFile();
      boolean bool = a(paramAssetManager.open(paramString1), new FileOutputStream(localFile));
      return bool;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return false;
  }

  public static ClassLoader getBootClassLoader(ClassLoader paramClassLoader)
  {
    while (!paramClassLoader.getClass().getSimpleName().equalsIgnoreCase("BootClassLoader"))
      paramClassLoader = paramClassLoader.getParent();
    return paramClassLoader;
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

  public static Object newInstance(String paramString, ClassLoader paramClassLoader)
  {
    try
    {
      Object localObject = paramClassLoader.loadClass(paramString).newInstance();
      return localObject;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return null;
    }
    catch (InstantiationException localInstantiationException)
    {
      while (true)
        localInstantiationException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
  }

  public static void reportFail(Context paramContext, Throwable paramThrowable)
  {
    if (paramThrowable == null);
    StringWriter localStringWriter;
    for (String str = null; ; str = localStringWriter.toString())
    {
      if (str != null)
        paramThrowable.printStackTrace();
      return;
      localStringWriter = new StringWriter();
      PrintWriter localPrintWriter = new PrintWriter(localStringWriter);
      Throwable localThrowable = paramThrowable.getCause();
      if (localThrowable == null)
        paramThrowable.printStackTrace(localPrintWriter);
      while (localThrowable != null)
      {
        localThrowable.printStackTrace(localPrintWriter);
        localThrowable = localThrowable.getCause();
      }
      localPrintWriter.close();
    }
  }

  public static boolean verifyApk(Signature[] paramArrayOfSignature, String paramString)
  {
    Certificate[] arrayOfCertificate = verifyMD5AndLoadCertificates(paramString);
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

  // ERROR //
  public static Certificate[] verifyMD5AndLoadCertificates(String paramString)
  {
    // Byte code:
    //   0: new 92	java/util/jar/JarFile
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 292	java/util/jar/JarFile:<init>	(Ljava/lang/String;)V
    //   8: astore_1
    //   9: sipush 8192
    //   12: newarray byte
    //   14: astore 5
    //   16: aload_1
    //   17: ldc_w 294
    //   20: invokevirtual 298	java/util/jar/JarFile:getJarEntry	(Ljava/lang/String;)Ljava/util/jar/JarEntry;
    //   23: astore 6
    //   25: aload_1
    //   26: aload 6
    //   28: aload 5
    //   30: invokestatic 300	com/alipay/mobile/common/apkutil/MiscUtils:a	(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    //   33: astore 7
    //   35: aload 7
    //   37: astore_3
    //   38: aload_3
    //   39: ifnonnull +31 -> 70
    //   42: new 108	java/lang/StringBuilder
    //   45: dup
    //   46: ldc_w 302
    //   49: invokespecial 113	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   52: aload 6
    //   54: invokevirtual 117	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   57: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: ldc_w 304
    //   63: invokevirtual 121	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: invokevirtual 127	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: pop
    //   70: aload_1
    //   71: invokevirtual 305	java/util/jar/JarFile:close	()V
    //   74: aload_3
    //   75: areturn
    //   76: astore_2
    //   77: aconst_null
    //   78: astore_3
    //   79: aload_2
    //   80: astore 4
    //   82: aload 4
    //   84: invokevirtual 76	java/io/IOException:printStackTrace	()V
    //   87: aload_3
    //   88: areturn
    //   89: astore 4
    //   91: goto -9 -> 82
    //
    // Exception table:
    //   from	to	target	type
    //   0	35	76	java/io/IOException
    //   42	70	89	java/io/IOException
    //   70	74	89	java/io/IOException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.apkutil.MiscUtils
 * JD-Core Version:    0.6.2
 */