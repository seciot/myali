package com.j256.ormlite.logger;

public class LoggerFactory
{
  private static LoggerFactory.LogType a;

  public static Logger getLogger(Class<?> paramClass)
  {
    return getLogger(paramClass.getName());
  }

  public static Logger getLogger(String paramString)
  {
    int j;
    LoggerFactory.LogType localLogType;
    if (a == null)
    {
      LoggerFactory.LogType[] arrayOfLogType = LoggerFactory.LogType.values();
      int i = arrayOfLogType.length;
      j = 0;
      if (j >= i)
        break label59;
      localLogType = arrayOfLogType[j];
      if (!localLogType.isAvailable())
        break label53;
    }
    while (true)
    {
      a = localLogType;
      return new Logger(a.createLog(paramString));
      label53: j++;
      break;
      label59: localLogType = LoggerFactory.LogType.LOCAL;
    }
  }

  public static String getSimpleClassName(String paramString)
  {
    String[] arrayOfString = paramString.split("\\.");
    if (arrayOfString.length <= 1)
      return paramString;
    return arrayOfString[(-1 + arrayOfString.length)];
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.logger.LoggerFactory
 * JD-Core Version:    0.6.2
 */