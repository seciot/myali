package com.alipay.mobile.quinox.engine;

import android.app.Application;
import com.alipay.mobile.apk.common.AbstractEngine;
import com.alipay.mobile.apk.common.ZPackageInfo;
import com.alipay.mobile.apk.common.ZPackageManager;
import dalvik.system.DexClassLoader;
import java.io.File;

public class ApkEngineManager
{
  private static ApkEngineManager a;
  private Application b;
  private AbstractEngine c;

  private ApkEngineManager(Application paramApplication)
  {
    this.b = paramApplication;
    String str = this.b.getCacheDir().getAbsolutePath() + File.separator + "tmpEngine.apk";
    MiscUtils.fileFromAssets("NativeApkEngine.apk", this.b.getAssets(), str);
    updateEngine(str);
  }

  private int a(String paramString)
  {
    ZPackageInfo localZPackageInfo = new ZPackageManager(this.b).getPackageArchiveInfo(paramString, 1);
    if (localZPackageInfo != null)
      return localZPackageInfo.versionCode;
    return -1;
  }

  private String a()
  {
    String str = this.b.getFilesDir() + File.separator + "apk.engine";
    File localFile = new File(str);
    if ((localFile.mkdirs()) || (localFile.isDirectory()))
      return str + File.separator + "NativeApkEngine.apk";
    return null;
  }

  public static ApkEngineManager getInstance(Application paramApplication)
  {
    try
    {
      if (a == null)
        a = new ApkEngineManager(paramApplication);
      ApkEngineManager localApkEngineManager = a;
      return localApkEngineManager;
    }
    finally
    {
    }
  }

  public AbstractEngine getEngine()
  {
    try
    {
      AbstractEngine localAbstractEngine = getEngine("DefaultEngine");
      return localAbstractEngine;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public AbstractEngine getEngine(String paramString)
  {
    try
    {
      DexClassLoader localDexClassLoader = new DexClassLoader(a(), this.b.getCacheDir().getAbsolutePath(), null, getClass().getClassLoader());
      this.c = ((AbstractEngine)MiscUtils.newInstance("com.alipay.mobile.apk.engine." + paramString, localDexClassLoader));
      AbstractEngine localAbstractEngine = this.c;
      return localAbstractEngine;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public Throwable getUnsupportedCause()
  {
    return getUnsupportedCause("DefaultEngine");
  }

  public Throwable getUnsupportedCause(String paramString)
  {
    AbstractEngine localAbstractEngine = getEngine(paramString);
    if (localAbstractEngine == null)
      return null;
    return localAbstractEngine.getUnsupportedCause();
  }

  public int getVersion()
  {
    return a(a());
  }

  public String getVersionName()
  {
    String str = a();
    return new ZPackageManager(this.b).getPackageArchiveInfo(str, 1).versionName;
  }

  public boolean isSupported()
  {
    return isSupported("DefaultEngine");
  }

  public boolean isSupported(String paramString)
  {
    AbstractEngine localAbstractEngine = getEngine(paramString);
    return (localAbstractEngine != null) && (localAbstractEngine.isSupported(this.b));
  }

  public boolean updateEngine(String paramString)
  {
    String str = a();
    boolean bool;
    if (a(paramString) <= a(str))
      bool = false;
    do
    {
      return bool;
      bool = MiscUtils.copyFile(paramString, str);
    }
    while (!bool);
    this.c = null;
    return bool;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.engine.ApkEngineManager
 * JD-Core Version:    0.6.2
 */