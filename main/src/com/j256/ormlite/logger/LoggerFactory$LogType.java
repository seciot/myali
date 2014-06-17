package com.j256.ormlite.logger;

import java.lang.reflect.Constructor;

 enum LoggerFactory$LogType
{
  private final String a;
  private final String b;

  static
  {
    LOCAL = new LoggerFactory.LogType.1("LOCAL", 3, LocalLog.class.getName(), LocalLog.class.getName());
    LogType[] arrayOfLogType = new LogType[4];
    arrayOfLogType[0] = ANDROID;
    arrayOfLogType[1] = COMMONS_LOGGING;
    arrayOfLogType[2] = LOG4J;
    arrayOfLogType[3] = LOCAL;
  }

  private LoggerFactory$LogType(String paramString1, String paramString2)
  {
    this.a = paramString1;
    this.b = paramString2;
  }

  public Log createLog(String paramString)
  {
    return createLogFromClassName(paramString);
  }

  Log createLogFromClassName(String paramString)
  {
    try
    {
      Log localLog = (Log)Class.forName(this.b).getConstructor(new Class[] { String.class }).newInstance(new Object[] { paramString });
      return localLog;
    }
    catch (Exception localException)
    {
      LocalLog localLocalLog = new LocalLog(paramString);
      localLocalLog.log(Log.Level.WARNING, "Unable to call constructor with single String argument for class " + this.b + ", so had to use local log", localException);
      return localLocalLog;
    }
  }

  public boolean isAvailable()
  {
    return isAvailableTestClass();
  }

  boolean isAvailableTestClass()
  {
    try
    {
      Class.forName(this.a);
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.logger.LoggerFactory.LogType
 * JD-Core Version:    0.6.2
 */