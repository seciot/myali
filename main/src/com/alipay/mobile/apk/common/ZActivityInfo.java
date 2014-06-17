package com.alipay.mobile.apk.common;

import android.content.pm.ActivityInfo;

public class ZActivityInfo extends ActivityInfo
{
  private String a;

  public ZActivityInfo()
  {
  }

  public ZActivityInfo(ActivityInfo paramActivityInfo)
  {
    super(paramActivityInfo);
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
 * Qualified Name:     com.alipay.mobile.apk.common.ZActivityInfo
 * JD-Core Version:    0.6.2
 */