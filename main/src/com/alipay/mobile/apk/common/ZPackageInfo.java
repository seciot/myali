package com.alipay.mobile.apk.common;

import android.content.pm.PackageInfo;

public class ZPackageInfo extends PackageInfo
{
  private String a;
  public ZActivityInfo[] activities;

  public ZPackageInfo(PackageInfo paramPackageInfo)
  {
    if (paramPackageInfo == null)
      return;
    this.applicationInfo = paramPackageInfo.applicationInfo;
    this.configPreferences = paramPackageInfo.configPreferences;
    this.gids = paramPackageInfo.gids;
    this.instrumentation = paramPackageInfo.instrumentation;
    this.packageName = paramPackageInfo.packageName;
    this.permissions = paramPackageInfo.permissions;
    this.providers = paramPackageInfo.providers;
    this.receivers = paramPackageInfo.receivers;
    this.reqFeatures = paramPackageInfo.reqFeatures;
    this.requestedPermissions = paramPackageInfo.requestedPermissions;
    this.services = paramPackageInfo.services;
    this.sharedUserId = paramPackageInfo.sharedUserId;
    this.sharedUserLabel = paramPackageInfo.sharedUserLabel;
    this.signatures = paramPackageInfo.signatures;
    this.versionCode = paramPackageInfo.versionCode;
    this.versionName = paramPackageInfo.versionName;
    a(paramPackageInfo);
  }

  private void a(PackageInfo paramPackageInfo)
  {
    if ((paramPackageInfo == null) || (paramPackageInfo.activities == null) || (paramPackageInfo.activities.length <= 0));
    while (true)
    {
      return;
      this.activities = new ZActivityInfo[paramPackageInfo.activities.length];
      for (int i = 0; i < paramPackageInfo.activities.length; i++)
      {
        this.activities[i] = new ZActivityInfo(paramPackageInfo.activities[i]);
        this.activities[i].setArchiveFilePath(getArchiveFilePath());
      }
    }
  }

  public ZActivityInfo findActivityInfo(String paramString)
  {
    for (ZActivityInfo localZActivityInfo : this.activities)
      if ((localZActivityInfo != null) && (localZActivityInfo.name.equalsIgnoreCase(paramString)))
        return localZActivityInfo;
    return null;
  }

  public String getArchiveFilePath()
  {
    return this.a;
  }

  public void setArchiveFilePath(String paramString)
  {
    this.a = paramString;
    if (this.activities == null);
    while (true)
    {
      return;
      for (ZActivityInfo localZActivityInfo : this.activities)
        if (localZActivityInfo != null)
          localZActivityInfo.setArchiveFilePath(this.a);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.apk.common.ZPackageInfo
 * JD-Core Version:    0.6.2
 */