package com.alipay.mobile.apk.common;

import android.content.pm.ApplicationInfo;

public class ZApplicationInfo extends ApplicationInfo
{
  private String a;

  public ZApplicationInfo()
  {
  }

  public ZApplicationInfo(ApplicationInfo paramApplicationInfo)
  {
    super(paramApplicationInfo);
  }

  public String getArchiveFilePath()
  {
    return this.a;
  }

  public void setArchiveFilePath(String paramString)
  {
    this.a = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.apk.common.ZApplicationInfo
 * JD-Core Version:    0.6.2
 */