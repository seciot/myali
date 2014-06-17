package com.j256.ormlite.logger;

public abstract interface Log
{
  public abstract boolean isLevelEnabled(Log.Level paramLevel);

  public abstract void log(Log.Level paramLevel, String paramString);

  public abstract void log(Log.Level paramLevel, String paramString, Throwable paramThrowable);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.logger.Log
 * JD-Core Version:    0.6.2
 */