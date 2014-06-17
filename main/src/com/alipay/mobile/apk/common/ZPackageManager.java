package com.alipay.mobile.apk.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

public class ZPackageManager
{
  private Context a;

  public ZPackageManager(Context paramContext)
  {
    this.a = paramContext;
  }

  public ZPackageInfo getPackageArchiveInfo(String paramString, int paramInt)
  {
    PackageInfo localPackageInfo = this.a.getPackageManager().getPackageArchiveInfo(paramString, paramInt);
    if (localPackageInfo == null)
      return null;
    ZPackageInfo localZPackageInfo = new ZPackageInfo(localPackageInfo);
    localZPackageInfo.setArchiveFilePath(paramString);
    return localZPackageInfo;
  }

  public PackageInfo getPackageInfo(String paramString, int paramInt)
  {
    return this.a.getPackageManager().getPackageInfo(paramString, paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.apk.common.ZPackageManager
 * JD-Core Version:    0.6.2
 */