package com.alipay.mobile.command.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.webkit.CookieSyncManager;
import com.alipay.mobile.common.info.DeviceInfo;

public class CommandConfig
{
  private static Context a;
  private static boolean b = false;

  public static Context getContext()
  {
    return a;
  }

  public static void initial(Context paramContext)
  {
    if (paramContext == null)
      throw new RuntimeException("初始化commandCenter运行环境,不允许context为空.");
    if (a != null);
    while (true)
    {
      return;
      a = paramContext;
      if (CommandUtil.isInWallet())
        DeviceInfo.createInstance(paramContext);
      CookieSyncManager.createInstance(paramContext);
      try
      {
        if ((0x2 & paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 16384).flags) != 0)
        {
          b = true;
          return;
        }
      }
      catch (Throwable localThrowable)
      {
        new Object[] { "config initial Error." };
      }
    }
  }

  public static boolean isDebug()
  {
    return b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.util.CommandConfig
 * JD-Core Version:    0.6.2
 */