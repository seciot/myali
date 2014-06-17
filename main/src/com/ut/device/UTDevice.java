package com.ut.device;

import android.content.Context;

public class UTDevice
{
  public static a getDevice(Context paramContext)
  {
    return b.getDevice(paramContext);
  }

  public static String getUtImei(Context paramContext)
  {
    a locala = b.getDevice(paramContext);
    if (locala == null)
      return "-";
    return locala.f();
  }

  public static String getUtImsi(Context paramContext)
  {
    a locala = b.getDevice(paramContext);
    if (locala == null)
      return "-";
    return locala.g();
  }

  public static String getUtdid(Context paramContext)
  {
    a locala = b.getDevice(paramContext);
    if (locala == null)
      return "-";
    return locala.h();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.ut.device.UTDevice
 * JD-Core Version:    0.6.2
 */