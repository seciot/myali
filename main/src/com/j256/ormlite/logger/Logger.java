package com.j256.ormlite.logger;

import java.util.Arrays;

public class Logger
{
  private static final int a = 2;
  private static final Object b = new Object();
  private final Log c;

  public Logger(Log paramLog)
  {
    this.c = paramLog;
  }

  private void a(Log.Level paramLevel, Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2, Object paramObject3, Object[] paramArrayOfObject)
  {
    int i = 0;
    String str;
    if (this.c.isLevelEnabled(paramLevel))
    {
      StringBuilder localStringBuilder = new StringBuilder(128);
      int j = 0;
      int k = paramString.indexOf("{}", j);
      if (k != -1)
      {
        localStringBuilder.append(paramString.substring(j, k));
        j = k + a;
        if (paramArrayOfObject == null)
          if (i == 0)
            a(localStringBuilder, paramObject1);
        while (true)
        {
          i++;
          break;
          if (i == 1)
          {
            a(localStringBuilder, paramObject2);
          }
          else if (i == 2)
          {
            a(localStringBuilder, paramObject3);
            continue;
            if (i < paramArrayOfObject.length)
              a(localStringBuilder, paramArrayOfObject[i]);
          }
        }
      }
      localStringBuilder.append(paramString.substring(j));
      str = localStringBuilder.toString();
      if (paramThrowable == null)
        this.c.log(paramLevel, str);
    }
    else
    {
      return;
    }
    this.c.log(paramLevel, str, paramThrowable);
  }

  private static void a(StringBuilder paramStringBuilder, Object paramObject)
  {
    if (paramObject != b)
    {
      if (paramObject == null)
        paramStringBuilder.append("null");
    }
    else
      return;
    if (paramObject.getClass().isArray())
    {
      paramStringBuilder.append(Arrays.toString((Object[])paramObject));
      return;
    }
    paramStringBuilder.append(paramObject);
  }

  public void debug(String paramString)
  {
    a(Log.Level.DEBUG, null, paramString, b, b, b, null);
  }

  public void debug(String paramString, Object paramObject)
  {
    a(Log.Level.DEBUG, null, paramString, paramObject, b, b, null);
  }

  public void debug(String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.DEBUG, null, paramString, paramObject1, paramObject2, b, null);
  }

  public void debug(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.DEBUG, null, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void debug(String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.DEBUG, null, paramString, b, b, b, paramArrayOfObject);
  }

  public void debug(Throwable paramThrowable, String paramString)
  {
    a(Log.Level.DEBUG, paramThrowable, paramString, b, b, b, null);
  }

  public void debug(Throwable paramThrowable, String paramString, Object paramObject)
  {
    a(Log.Level.DEBUG, paramThrowable, paramString, paramObject, b, b, null);
  }

  public void debug(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.DEBUG, paramThrowable, paramString, paramObject1, paramObject2, b, null);
  }

  public void debug(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.DEBUG, paramThrowable, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void debug(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.DEBUG, paramThrowable, paramString, b, b, b, paramArrayOfObject);
  }

  public void error(String paramString)
  {
    a(Log.Level.ERROR, null, paramString, b, b, b, null);
  }

  public void error(String paramString, Object paramObject)
  {
    a(Log.Level.ERROR, null, paramString, paramObject, b, b, null);
  }

  public void error(String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.ERROR, null, paramString, paramObject1, paramObject2, b, null);
  }

  public void error(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.ERROR, null, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void error(String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.ERROR, null, paramString, b, b, b, paramArrayOfObject);
  }

  public void error(Throwable paramThrowable, String paramString)
  {
    a(Log.Level.ERROR, paramThrowable, paramString, b, b, b, null);
  }

  public void error(Throwable paramThrowable, String paramString, Object paramObject)
  {
    a(Log.Level.ERROR, paramThrowable, paramString, paramObject, b, b, null);
  }

  public void error(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.ERROR, paramThrowable, paramString, paramObject1, paramObject2, b, null);
  }

  public void error(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.ERROR, paramThrowable, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void error(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.ERROR, paramThrowable, paramString, b, b, b, paramArrayOfObject);
  }

  public void fatal(String paramString)
  {
    a(Log.Level.FATAL, null, paramString, b, b, b, null);
  }

  public void fatal(String paramString, Object paramObject)
  {
    a(Log.Level.FATAL, null, paramString, paramObject, b, b, null);
  }

  public void fatal(String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.FATAL, null, paramString, paramObject1, paramObject2, b, null);
  }

  public void fatal(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.FATAL, null, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void fatal(String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.FATAL, null, paramString, b, b, b, paramArrayOfObject);
  }

  public void fatal(Throwable paramThrowable, String paramString)
  {
    a(Log.Level.FATAL, paramThrowable, paramString, b, b, b, null);
  }

  public void fatal(Throwable paramThrowable, String paramString, Object paramObject)
  {
    a(Log.Level.FATAL, paramThrowable, paramString, paramObject, b, b, null);
  }

  public void fatal(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.FATAL, paramThrowable, paramString, paramObject1, paramObject2, b, null);
  }

  public void fatal(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.FATAL, paramThrowable, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void fatal(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.FATAL, paramThrowable, paramString, b, b, b, paramArrayOfObject);
  }

  public void info(String paramString)
  {
    a(Log.Level.INFO, null, paramString, b, b, b, null);
  }

  public void info(String paramString, Object paramObject)
  {
    a(Log.Level.INFO, null, paramString, paramObject, b, b, null);
  }

  public void info(String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.INFO, null, paramString, paramObject1, paramObject2, b, null);
  }

  public void info(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.INFO, null, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void info(String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.INFO, null, paramString, b, b, b, paramArrayOfObject);
  }

  public void info(Throwable paramThrowable, String paramString)
  {
    a(Log.Level.INFO, paramThrowable, paramString, b, b, b, null);
  }

  public void info(Throwable paramThrowable, String paramString, Object paramObject)
  {
    a(Log.Level.INFO, paramThrowable, paramString, paramObject, b, b, null);
  }

  public void info(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.INFO, paramThrowable, paramString, paramObject1, paramObject2, b, null);
  }

  public void info(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.INFO, paramThrowable, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void info(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.INFO, paramThrowable, paramString, b, b, b, paramArrayOfObject);
  }

  public boolean isLevelEnabled(Log.Level paramLevel)
  {
    return this.c.isLevelEnabled(paramLevel);
  }

  public void log(Log.Level paramLevel, String paramString)
  {
    a(paramLevel, null, paramString, b, b, b, null);
  }

  public void log(Log.Level paramLevel, String paramString, Object paramObject)
  {
    a(paramLevel, null, paramString, paramObject, b, b, null);
  }

  public void log(Log.Level paramLevel, String paramString, Object paramObject1, Object paramObject2)
  {
    a(paramLevel, null, paramString, paramObject1, paramObject2, b, null);
  }

  public void log(Log.Level paramLevel, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(paramLevel, null, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void log(Log.Level paramLevel, String paramString, Object[] paramArrayOfObject)
  {
    a(paramLevel, null, paramString, b, b, b, paramArrayOfObject);
  }

  public void log(Log.Level paramLevel, Throwable paramThrowable, String paramString)
  {
    a(paramLevel, paramThrowable, paramString, b, b, b, null);
  }

  public void log(Log.Level paramLevel, Throwable paramThrowable, String paramString, Object paramObject)
  {
    a(paramLevel, paramThrowable, paramString, paramObject, b, b, null);
  }

  public void log(Log.Level paramLevel, Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2)
  {
    a(paramLevel, paramThrowable, paramString, paramObject1, paramObject2, b, null);
  }

  public void log(Log.Level paramLevel, Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(paramLevel, paramThrowable, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void log(Log.Level paramLevel, Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    a(paramLevel, paramThrowable, paramString, b, b, b, paramArrayOfObject);
  }

  public void trace(String paramString)
  {
    a(Log.Level.TRACE, null, paramString, b, b, b, null);
  }

  public void trace(String paramString, Object paramObject)
  {
    a(Log.Level.TRACE, null, paramString, paramObject, b, b, null);
  }

  public void trace(String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.TRACE, null, paramString, paramObject1, paramObject2, b, null);
  }

  public void trace(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.TRACE, null, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void trace(String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.TRACE, null, paramString, b, b, b, paramArrayOfObject);
  }

  public void trace(Throwable paramThrowable, String paramString)
  {
    a(Log.Level.TRACE, paramThrowable, paramString, b, b, b, null);
  }

  public void trace(Throwable paramThrowable, String paramString, Object paramObject)
  {
    a(Log.Level.TRACE, paramThrowable, paramString, paramObject, b, b, null);
  }

  public void trace(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.TRACE, paramThrowable, paramString, paramObject1, paramObject2, b, null);
  }

  public void trace(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.TRACE, paramThrowable, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void trace(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.TRACE, paramThrowable, paramString, b, b, b, paramArrayOfObject);
  }

  public void warn(String paramString)
  {
    a(Log.Level.WARNING, null, paramString, b, b, b, null);
  }

  public void warn(String paramString, Object paramObject)
  {
    a(Log.Level.WARNING, null, paramString, paramObject, b, b, null);
  }

  public void warn(String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.WARNING, null, paramString, paramObject1, paramObject2, b, null);
  }

  public void warn(String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.WARNING, null, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void warn(String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.WARNING, null, paramString, b, b, b, paramArrayOfObject);
  }

  public void warn(Throwable paramThrowable, String paramString)
  {
    a(Log.Level.WARNING, paramThrowable, paramString, b, b, b, null);
  }

  public void warn(Throwable paramThrowable, String paramString, Object paramObject)
  {
    a(Log.Level.WARNING, paramThrowable, paramString, paramObject, b, b, null);
  }

  public void warn(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2)
  {
    a(Log.Level.WARNING, paramThrowable, paramString, paramObject1, paramObject2, b, null);
  }

  public void warn(Throwable paramThrowable, String paramString, Object paramObject1, Object paramObject2, Object paramObject3)
  {
    a(Log.Level.WARNING, paramThrowable, paramString, paramObject1, paramObject2, paramObject3, null);
  }

  public void warn(Throwable paramThrowable, String paramString, Object[] paramArrayOfObject)
  {
    a(Log.Level.WARNING, paramThrowable, paramString, b, b, b, paramArrayOfObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.logger.Logger
 * JD-Core Version:    0.6.2
 */