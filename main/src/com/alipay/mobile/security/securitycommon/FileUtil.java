package com.alipay.mobile.security.securitycommon;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.os.Environment;
import java.io.File;

public class FileUtil
{
  public static File a(Context paramContext)
  {
    File localFile;
    if (a())
      if (Build.VERSION.SDK_INT >= 8)
        localFile = paramContext.getExternalCacheDir();
    while (true)
    {
      if ((localFile != null) && (!localFile.exists()))
        localFile.mkdirs();
      return localFile;
      localFile = c(paramContext);
      continue;
      localFile = paramContext.getCacheDir();
    }
  }

  private static boolean a()
  {
    return Environment.getExternalStorageState().equals("mounted");
  }

  public static File b(Context paramContext)
  {
    boolean bool = a();
    File localFile = null;
    if (bool)
      if (Build.VERSION.SDK_INT < 8)
        break label41;
    label41: for (localFile = paramContext.getExternalCacheDir(); ; localFile = c(paramContext))
    {
      if ((localFile != null) && (!localFile.exists()))
        localFile.mkdirs();
      return localFile;
    }
  }

  private static final File c(Context paramContext)
  {
    return new File(Environment.getExternalStorageDirectory(), "/Android/data/" + paramContext.getApplicationInfo().packageName + "/cache/");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.FileUtil
 * JD-Core Version:    0.6.2
 */