package com.j256.ormlite.logger;

public enum Log$Level
{
  private int a;

  static
  {
    DEBUG = new Level("DEBUG", 1, 2);
    INFO = new Level("INFO", 2, 3);
    WARNING = new Level("WARNING", 3, 4);
    ERROR = new Level("ERROR", 4, 5);
    FATAL = new Level("FATAL", 5, 6);
    Level[] arrayOfLevel = new Level[6];
    arrayOfLevel[0] = TRACE;
    arrayOfLevel[1] = DEBUG;
    arrayOfLevel[2] = INFO;
    arrayOfLevel[3] = WARNING;
    arrayOfLevel[4] = ERROR;
    arrayOfLevel[5] = FATAL;
  }

  private Log$Level(int paramInt)
  {
    this.a = paramInt;
  }

  public final boolean isEnabled(Level paramLevel)
  {
    return this.a <= paramLevel.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.logger.Log.Level
 * JD-Core Version:    0.6.2
 */