package com.j256.ormlite.android;

import com.j256.ormlite.logger.Log.Level;
import com.j256.ormlite.logger.LoggerFactory;

public class AndroidLog
  implements com.j256.ormlite.logger.Log
{
  private static final String ALL_LOGS_NAME = "ORMLite";
  private static final int MAX_TAG_LENGTH = 23;
  private static final int REFRESH_LEVEL_CACHE_EVERY = 200;
  private String className;
  private final boolean[] levelCache;
  private volatile int levelCacheC = 0;

  public AndroidLog(String paramString)
  {
    this.className = LoggerFactory.getSimpleClassName(paramString);
    int i = this.className.length();
    if (i > 23)
      this.className = this.className.substring(i - 23, i);
    Log.Level[] arrayOfLevel = Log.Level.values();
    int j = arrayOfLevel.length;
    int k = 0;
    int m = 0;
    int n;
    if (k < j)
    {
      n = levelToAndroidLevel(arrayOfLevel[k]);
      if (n <= m)
        break label110;
    }
    while (true)
    {
      k++;
      m = n;
      break;
      this.levelCache = new boolean[m + 1];
      refreshLevelCache();
      return;
      label110: n = m;
    }
  }

  private boolean isLevelEnabledInternal(int paramInt)
  {
    return (android.util.Log.isLoggable(this.className, paramInt)) || (android.util.Log.isLoggable("ORMLite", paramInt));
  }

  private int levelToAndroidLevel(Log.Level paramLevel)
  {
    switch (AndroidLog.1.$SwitchMap$com$j256$ormlite$logger$Log$Level[paramLevel.ordinal()])
    {
    case 3:
    default:
      return 4;
    case 1:
      return 2;
    case 2:
      return 3;
    case 4:
      return 5;
    case 5:
      return 6;
    case 6:
    }
    return 6;
  }

  private void refreshLevelCache()
  {
    Log.Level[] arrayOfLevel = Log.Level.values();
    int i = arrayOfLevel.length;
    for (int j = 0; j < i; j++)
    {
      int k = levelToAndroidLevel(arrayOfLevel[j]);
      if (k < this.levelCache.length)
        this.levelCache[k] = isLevelEnabledInternal(k);
    }
  }

  public boolean isLevelEnabled(Log.Level paramLevel)
  {
    int i = 1 + this.levelCacheC;
    this.levelCacheC = i;
    if (i >= 200)
    {
      refreshLevelCache();
      this.levelCacheC = 0;
    }
    int j = levelToAndroidLevel(paramLevel);
    if (j < this.levelCache.length)
      return this.levelCache[j];
    return isLevelEnabledInternal(j);
  }

  public void log(Log.Level paramLevel, String paramString)
  {
    switch (AndroidLog.1.$SwitchMap$com$j256$ormlite$logger$Log$Level[paramLevel.ordinal()])
    {
    default:
      android.util.Log.i(this.className, paramString);
      return;
    case 1:
      android.util.Log.v(this.className, paramString);
      return;
    case 2:
      android.util.Log.d(this.className, paramString);
      return;
    case 3:
      android.util.Log.i(this.className, paramString);
      return;
    case 4:
      android.util.Log.w(this.className, paramString);
      return;
    case 5:
      android.util.Log.e(this.className, paramString);
      return;
    case 6:
    }
    android.util.Log.e(this.className, paramString);
  }

  public void log(Log.Level paramLevel, String paramString, Throwable paramThrowable)
  {
    switch (AndroidLog.1.$SwitchMap$com$j256$ormlite$logger$Log$Level[paramLevel.ordinal()])
    {
    default:
      android.util.Log.i(this.className, paramString, paramThrowable);
      return;
    case 1:
      android.util.Log.v(this.className, paramString, paramThrowable);
      return;
    case 2:
      android.util.Log.d(this.className, paramString, paramThrowable);
      return;
    case 3:
      android.util.Log.i(this.className, paramString, paramThrowable);
      return;
    case 4:
      android.util.Log.w(this.className, paramString, paramThrowable);
      return;
    case 5:
      android.util.Log.e(this.className, paramString, paramThrowable);
      return;
    case 6:
    }
    android.util.Log.e(this.className, paramString, paramThrowable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.j256.ormlite.android.AndroidLog
 * JD-Core Version:    0.6.2
 */