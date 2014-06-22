package com.alipay.mobile.framework.service.ext.openplatform.apps;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.framework.service.ext.openplatform.persist.AppDao;

final class a extends BroadcastReceiver
{
  a(ApkApp paramApkApp)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    if (("android.intent.action.PACKAGE_ADDED".equalsIgnoreCase(str1)) || ("android.intent.action.PACKAGE_REPLACED".equalsIgnoreCase(str1)))
    {
      String str2 = paramIntent.getDataString();
      if ((str2 != null) && (str2.equalsIgnoreCase("package:" + this.a.getPackageName())))
      {
        this.a.onInstallComplete(true);
        ApkApp.getBundle(this.a);
        AppDao.getDao().saveOrUpdateAppEntity(ApkApp.dexopt(this.a));
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.apps.a
 * JD-Core Version:    0.6.2
 */