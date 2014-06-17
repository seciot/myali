package com.j256.ormlite.logger;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintStream;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class LocalLog
  implements Log
{
  public static final String LOCAL_LOG_FILE_PROPERTY = "com.j256.ormlite.logger.file";
  public static final String LOCAL_LOG_LEVEL_PROPERTY = "com.j256.ormlite.logger.level";
  public static final String LOCAL_LOG_PROPERTIES_FILE = "/ormliteLocalLog.properties";
  private static final Log.Level a = Log.Level.DEBUG;
  private static final ThreadLocal<DateFormat> b = new LocalLog.1();
  private static PrintStream c;
  private static final List<LocalLog.PatternLevel> d;
  private final String e;
  private final Log.Level f;

  // ERROR //
  static
  {
    // Byte code:
    //   0: getstatic 37	com/j256/ormlite/logger/Log$Level:DEBUG	Lcom/j256/ormlite/logger/Log$Level;
    //   3: putstatic 39	com/j256/ormlite/logger/LocalLog:a	Lcom/j256/ormlite/logger/Log$Level;
    //   6: new 41	com/j256/ormlite/logger/LocalLog$1
    //   9: dup
    //   10: invokespecial 44	com/j256/ormlite/logger/LocalLog$1:<init>	()V
    //   13: putstatic 46	com/j256/ormlite/logger/LocalLog:b	Ljava/lang/ThreadLocal;
    //   16: ldc 2
    //   18: ldc 16
    //   20: invokevirtual 52	java/lang/Class:getResourceAsStream	(Ljava/lang/String;)Ljava/io/InputStream;
    //   23: astore_0
    //   24: aconst_null
    //   25: astore_1
    //   26: aload_0
    //   27: ifnull +16 -> 43
    //   30: aload_0
    //   31: invokestatic 55	com/j256/ormlite/logger/LocalLog:a	(Ljava/io/InputStream;)Ljava/util/List;
    //   34: astore 6
    //   36: aload 6
    //   38: astore_1
    //   39: aload_0
    //   40: invokevirtual 60	java/io/InputStream:close	()V
    //   43: aload_1
    //   44: putstatic 62	com/j256/ormlite/logger/LocalLog:d	Ljava/util/List;
    //   47: ldc 10
    //   49: invokestatic 68	java/lang/System:getProperty	(Ljava/lang/String;)Ljava/lang/String;
    //   52: invokestatic 72	com/j256/ormlite/logger/LocalLog:openLogFile	(Ljava/lang/String;)V
    //   55: return
    //   56: astore 4
    //   58: getstatic 75	java/lang/System:err	Ljava/io/PrintStream;
    //   61: new 77	java/lang/StringBuilder
    //   64: dup
    //   65: ldc 79
    //   67: invokespecial 81	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   70: aload 4
    //   72: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   75: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   78: invokevirtual 94	java/io/PrintStream:println	(Ljava/lang/String;)V
    //   81: aload_0
    //   82: invokevirtual 60	java/io/InputStream:close	()V
    //   85: aconst_null
    //   86: astore_1
    //   87: goto -44 -> 43
    //   90: astore 5
    //   92: aconst_null
    //   93: astore_1
    //   94: goto -51 -> 43
    //   97: astore_2
    //   98: aload_0
    //   99: invokevirtual 60	java/io/InputStream:close	()V
    //   102: aload_2
    //   103: athrow
    //   104: astore 7
    //   106: goto -63 -> 43
    //   109: astore_3
    //   110: goto -8 -> 102
    //
    // Exception table:
    //   from	to	target	type
    //   30	36	56	java/io/IOException
    //   81	85	90	java/io/IOException
    //   30	36	97	finally
    //   58	81	97	finally
    //   39	43	104	java/io/IOException
    //   98	102	109	java/io/IOException
  }

  public LocalLog(String paramString)
  {
    this.e = LoggerFactory.getSimpleClassName(paramString);
    Object localObject1 = null;
    Object localObject3;
    if (d != null)
    {
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        LocalLog.PatternLevel localPatternLevel = (LocalLog.PatternLevel)localIterator.next();
        if ((!localPatternLevel.pattern.matcher(paramString).matches()) || ((localObject1 != null) && (localPatternLevel.level.ordinal() >= localObject1.ordinal())))
          break label177;
        localObject3 = localPatternLevel.level;
        localObject1 = localObject3;
      }
    }
    for (Object localObject2 = localObject1; ; localObject2 = null)
    {
      String str;
      if (localObject2 == null)
      {
        str = System.getProperty("com.j256.ormlite.logger.level");
        if (str != null)
          break label127;
        localObject2 = a;
      }
      while (true)
      {
        this.f = ((Log.Level)localObject2);
        return;
        try
        {
          label127: Log.Level localLevel = Log.Level.valueOf(str.toUpperCase());
          localObject2 = localLevel;
        }
        catch (IllegalArgumentException localIllegalArgumentException)
        {
          throw new IllegalArgumentException("Level '" + str + "' was not found", localIllegalArgumentException);
        }
      }
      label177: localObject3 = localObject1;
      break;
    }
  }

  private static List<LocalLog.PatternLevel> a(InputStream paramInputStream)
  {
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(paramInputStream));
    ArrayList localArrayList = new ArrayList();
    while (true)
    {
      String str = localBufferedReader.readLine();
      if (str == null)
        break;
      if ((str.length() != 0) && (str.charAt(0) != '#'))
      {
        String[] arrayOfString = str.split("=");
        if (arrayOfString.length != 2)
        {
          System.err.println("Line is not in the format of 'pattern = level': " + str);
        }
        else
        {
          Pattern localPattern = Pattern.compile(arrayOfString[0].trim());
          try
          {
            Log.Level localLevel = Log.Level.valueOf(arrayOfString[1].trim());
            localArrayList.add(new LocalLog.PatternLevel(localPattern, localLevel));
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            System.err.println("Level '" + arrayOfString[1] + "' was not found");
          }
        }
      }
    }
    return localArrayList;
  }

  private void a(Log.Level paramLevel, String paramString, Throwable paramThrowable)
  {
    if (!isLevelEnabled(paramLevel));
    do
    {
      return;
      StringBuilder localStringBuilder = new StringBuilder(128);
      localStringBuilder.append(((DateFormat)b.get()).format(new Date()));
      localStringBuilder.append(" [").append(paramLevel.name()).append("] ");
      localStringBuilder.append(this.e).append(' ');
      localStringBuilder.append(paramString);
      c.println(localStringBuilder.toString());
    }
    while (paramThrowable == null);
    paramThrowable.printStackTrace(c);
  }

  public static void openLogFile(String paramString)
  {
    if (paramString == null)
    {
      c = System.out;
      return;
    }
    try
    {
      c = new PrintStream(new File(paramString));
      return;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new IllegalArgumentException("Log file " + paramString + " was not found", localFileNotFoundException);
    }
  }

  void flush()
  {
    c.flush();
  }

  public boolean isLevelEnabled(Log.Level paramLevel)
  {
    return this.f.isEnabled(paramLevel);
  }

  public void log(Log.Level paramLevel, String paramString)
  {
    a(paramLevel, paramString, null);
  }

  public void log(Log.Level paramLevel, String paramString, Throwable paramThrowable)
  {
    a(paramLevel, paramString, paramThrowable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.logger.LocalLog
 * JD-Core Version:    0.6.2
 */