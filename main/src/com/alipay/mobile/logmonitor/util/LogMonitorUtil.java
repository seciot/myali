package com.alipay.mobile.logmonitor.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class LogMonitorUtil
{
  private static SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd");

  public static String currentDate()
  {
    Date localDate = new Date();
    return a.format(localDate);
  }

  public static long currentTime()
  {
    String str = a.format(new Date());
    try
    {
      Date localDate = a.parse(str);
      return localDate.getTime();
    }
    catch (ParseException localParseException)
    {
    }
    return 0L;
  }

  public static String getSpecifiedDay(String paramString, int paramInt)
  {
    try
    {
      Date localDate = a.parse(paramString);
      String str = a.format(Long.valueOf(localDate.getTime() + 1000 * (3600 * (paramInt * 24))));
      return str;
    }
    catch (ParseException localParseException)
    {
    }
    return paramString;
  }

  // ERROR //
  public static java.util.List<String> readFileToString(java.io.File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 59	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 60	java/util/ArrayList:<init>	()V
    //   9: astore_2
    //   10: new 62	java/io/BufferedReader
    //   13: dup
    //   14: new 64	java/io/InputStreamReader
    //   17: dup
    //   18: new 66	java/io/FileInputStream
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 69	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   26: invokespecial 72	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   29: invokespecial 75	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   32: astore_3
    //   33: aload_3
    //   34: invokevirtual 78	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   37: astore 9
    //   39: aload 9
    //   41: ifnull +32 -> 73
    //   44: aload_2
    //   45: aload 9
    //   47: invokeinterface 84 2 0
    //   52: pop
    //   53: goto -20 -> 33
    //   56: astore 6
    //   58: aload_3
    //   59: astore 7
    //   61: aload 7
    //   63: ifnull +8 -> 71
    //   66: aload 7
    //   68: invokevirtual 87	java/io/BufferedReader:close	()V
    //   71: aconst_null
    //   72: areturn
    //   73: aload_3
    //   74: invokevirtual 87	java/io/BufferedReader:close	()V
    //   77: aload_2
    //   78: areturn
    //   79: astore 11
    //   81: aload_2
    //   82: areturn
    //   83: astore 4
    //   85: aload_1
    //   86: ifnull +7 -> 93
    //   89: aload_1
    //   90: invokevirtual 87	java/io/BufferedReader:close	()V
    //   93: aload 4
    //   95: athrow
    //   96: astore 8
    //   98: goto -27 -> 71
    //   101: astore 5
    //   103: goto -10 -> 93
    //   106: astore 4
    //   108: aload_3
    //   109: astore_1
    //   110: goto -25 -> 85
    //   113: astore 12
    //   115: aconst_null
    //   116: astore 7
    //   118: goto -57 -> 61
    //
    // Exception table:
    //   from	to	target	type
    //   33	39	56	java/lang/Exception
    //   44	53	56	java/lang/Exception
    //   73	77	79	java/io/IOException
    //   2	33	83	finally
    //   66	71	96	java/io/IOException
    //   89	93	101	java/io/IOException
    //   33	39	106	finally
    //   44	53	106	finally
    //   2	33	113	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.logmonitor.util.LogMonitorUtil
 * JD-Core Version:    0.6.2
 */