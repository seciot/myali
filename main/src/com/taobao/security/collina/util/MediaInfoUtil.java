package com.taobao.security.collina.util;

import android.content.Context;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Environment;
import android.os.StatFs;
import android.util.DisplayMetrics;
import java.io.File;

public class MediaInfoUtil
{
  public static int getAvailableInternalMemorySize()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getAvailableBlocks() / 1024;
  }

  public static int getCurrentAlarmVolume(Context paramContext)
  {
    return ((AudioManager)paramContext.getSystemService("audio")).getStreamVolume(4);
  }

  public static int getCurrentCallVolume(Context paramContext)
  {
    return ((AudioManager)paramContext.getSystemService("audio")).getStreamVolume(0);
  }

  public static int getCurrentMusicVolume(Context paramContext)
  {
    return ((AudioManager)paramContext.getSystemService("audio")).getStreamVolume(3);
  }

  public static int getCurrentRingVolume(Context paramContext)
  {
    return ((AudioManager)paramContext.getSystemService("audio")).getStreamVolume(2);
  }

  public static int getCurrentSystemVolume(Context paramContext)
  {
    return ((AudioManager)paramContext.getSystemService("audio")).getStreamVolume(1);
  }

  public static String getDisplayInfo(Context paramContext)
  {
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    return localDisplayMetrics.widthPixels + "*" + localDisplayMetrics.heightPixels + "," + localDisplayMetrics.density + "," + localDisplayMetrics.xdpi + "*" + localDisplayMetrics.ydpi;
  }

  public static int getMaxAlarmVolume(Context paramContext)
  {
    return ((AudioManager)paramContext.getSystemService("audio")).getStreamMaxVolume(4);
  }

  public static int getMaxCallVolume(Context paramContext)
  {
    return ((AudioManager)paramContext.getSystemService("audio")).getStreamMaxVolume(0);
  }

  public static int getMaxMusicVolume(Context paramContext)
  {
    return ((AudioManager)paramContext.getSystemService("audio")).getStreamMaxVolume(3);
  }

  public static int getMaxRingVolume(Context paramContext)
  {
    return ((AudioManager)paramContext.getSystemService("audio")).getStreamMaxVolume(2);
  }

  public static int getMaxSystemVolume(Context paramContext)
  {
    return ((AudioManager)paramContext.getSystemService("audio")).getStreamMaxVolume(1);
  }

  public static int getTotalInternalMemorySize()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getBlockCount() / 1024;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.security.collina.util.MediaInfoUtil
 * JD-Core Version:    0.6.2
 */