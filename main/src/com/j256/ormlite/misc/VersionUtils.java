package com.j256.ormlite.misc;

import com.j256.ormlite.logger.Logger;
import com.j256.ormlite.logger.LoggerFactory;

public class VersionUtils
{
  private static Logger a;

  private static Logger a()
  {
    if (a == null)
      a = LoggerFactory.getLogger(VersionUtils.class);
    return a;
  }

  // ERROR //
  private static String a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: ldc 2
    //   4: aload_0
    //   5: invokevirtual 28	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   8: astore_2
    //   9: aload_2
    //   10: ifnonnull +14 -> 24
    //   13: invokestatic 30	com/j256/ormlite/misc/VersionUtils:a	()Lcom/j256/ormlite/logger/Logger;
    //   16: ldc 32
    //   18: aload_0
    //   19: invokevirtual 38	com/j256/ormlite/logger/Logger:error	(Ljava/lang/String;Ljava/lang/Object;)V
    //   22: aload_1
    //   23: areturn
    //   24: new 40	java/io/BufferedReader
    //   27: dup
    //   28: new 42	java/io/InputStreamReader
    //   31: dup
    //   32: aload_2
    //   33: invokespecial 45	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   36: invokespecial 48	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   39: astore_3
    //   40: aload_3
    //   41: invokevirtual 52	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   44: astore 8
    //   46: aload 8
    //   48: astore_1
    //   49: aload_3
    //   50: invokevirtual 55	java/io/BufferedReader:close	()V
    //   53: aload_1
    //   54: ifnonnull -32 -> 22
    //   57: invokestatic 30	com/j256/ormlite/misc/VersionUtils:a	()Lcom/j256/ormlite/logger/Logger;
    //   60: ldc 57
    //   62: aload_0
    //   63: invokevirtual 38	com/j256/ormlite/logger/Logger:error	(Ljava/lang/String;Ljava/lang/Object;)V
    //   66: aload_1
    //   67: areturn
    //   68: astore 6
    //   70: invokestatic 30	com/j256/ormlite/misc/VersionUtils:a	()Lcom/j256/ormlite/logger/Logger;
    //   73: aload 6
    //   75: ldc 59
    //   77: aload_0
    //   78: invokevirtual 62	com/j256/ormlite/logger/Logger:error	(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/Object;)V
    //   81: aload_3
    //   82: invokevirtual 55	java/io/BufferedReader:close	()V
    //   85: aconst_null
    //   86: areturn
    //   87: astore 7
    //   89: aconst_null
    //   90: areturn
    //   91: astore 4
    //   93: aload_3
    //   94: invokevirtual 55	java/io/BufferedReader:close	()V
    //   97: aload 4
    //   99: athrow
    //   100: astore 9
    //   102: goto -49 -> 53
    //   105: astore 5
    //   107: goto -10 -> 97
    //
    // Exception table:
    //   from	to	target	type
    //   40	46	68	java/io/IOException
    //   81	85	87	java/io/IOException
    //   40	46	91	finally
    //   70	81	91	finally
    //   49	53	100	java/io/IOException
    //   93	97	105	java/io/IOException
  }

  private static void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (paramString2 == null)
      if (paramString4 != null)
        a().error("Unknown version for {}, version for {} is '{}'", paramString1, paramString3, paramString4);
    do
    {
      return;
      if (paramString4 == null)
      {
        a().error("Unknown version for {}, version for {} is '{}'", paramString3, paramString1, paramString2);
        return;
      }
    }
    while (paramString2.equals(paramString4));
    a().error("Mismatched versions: {} is '{}', while {} is '{}'", new Object[] { paramString1, paramString2, paramString3, paramString4 });
  }

  public static final void checkCoreVersusAndroidVersions()
  {
    a("core", a("/com/j256/ormlite/core/VERSION.txt"), "android", a("/com/j256/ormlite/android/VERSION.txt"));
  }

  public static final void checkCoreVersusJdbcVersions()
  {
    a("core", a("/com/j256/ormlite/core/VERSION.txt"), "jdbc", a("/com/j256/ormlite/jdbc/VERSION.txt"));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.misc.VersionUtils
 * JD-Core Version:    0.6.2
 */