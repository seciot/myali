package com.j256.ormlite.logger;

 enum LoggerFactory$LogType$1
{
  LoggerFactory$LogType$1(String arg3, String arg4)
  {
    super(paramString1, paramString2, str1, str2, null);
  }

  public final Log createLog(String paramString)
  {
    return new LocalLog(paramString);
  }

  public final boolean isAvailable()
  {
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.logger.LoggerFactory.LogType.1
 * JD-Core Version:    0.6.2
 */