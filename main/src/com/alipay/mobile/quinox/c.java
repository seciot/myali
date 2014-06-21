package com.alipay.mobile.quinox;

import com.alipay.mobile.quinox.classloader.a;
import com.alipay.mobile.quinox.utils.ZLog;

final class c extends ClassLoader
{
  c(LauncherApplication paramLauncherApplication)
  {
  }

  public final Class findClass(String paramString)
  {
    ZLog.d("OriginClassLoader", this + "load class: " + paramString);
    if ((this.a.pattern(paramString)) || (this.a.patternHost(paramString)))
      return super.findClass(paramString);
    while (!LauncherApplication.access$300(this.a))
      try
      {
        Thread.sleep(300L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    return LauncherApplication.access$400(this.a).loadClass(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.c
 * JD-Core Version:    0.6.2
 */