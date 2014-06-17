package com.alipay.mobile.appstoreapp.util;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.framework.service.ext.openplatform.persist.AppDao;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;

public class PackageReplacedReceiver extends BroadcastReceiver
{
  private static void a(Context paramContext, Intent paramIntent)
  {
    LinkedHashMap localLinkedHashMap = AppDao.getDao().getApkAppPackages();
    if (localLinkedHashMap == null);
    while (true)
    {
      return;
      Iterator localIterator = localLinkedHashMap.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        new StringBuilder("package name:").append(str).append(", appName:").append((String)localLinkedHashMap.get(str)).toString();
        if (paramIntent.getDataString().equalsIgnoreCase("package:" + str))
          a(paramContext, (String)localLinkedHashMap.get(str));
      }
    }
  }

  private static void a(Context paramContext, String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
      return;
    new StringBuilder("remove: ").append(paramString).toString();
    Intent localIntent1 = new Intent("com.android.launcher.action.UNINSTALL_SHORTCUT");
    localIntent1.putExtra("android.intent.extra.shortcut.NAME", paramString);
    ComponentName localComponentName1 = new ComponentName(paramContext.getPackageName(), "com.alipay.mobile.appstoreapp.ui.AppLaunchFromShortcutActivity");
    localIntent1.putExtra("android.intent.extra.shortcut.INTENT", new Intent("android.intent.action.MAIN").setComponent(localComponentName1));
    paramContext.getApplicationContext().sendBroadcast(localIntent1);
    Intent localIntent2 = new Intent("com.android.launcher.action.UNINSTALL_SHORTCUT");
    localIntent2.putExtra("android.intent.extra.shortcut.NAME", paramString);
    ComponentName localComponentName2 = new ComponentName(paramContext.getPackageName(), "com.alipay.mobile.appstoreapp.ui.AppLaunchFromShortcutActivity");
    localIntent2.putExtra("android.intent.extra.shortcut.INTENT", new Intent("android.intent.action.MAIN").addCategory("android.intent.category.DEFAULT").setComponent(localComponentName2));
    paramContext.getApplicationContext().sendBroadcast(localIntent2);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    new StringBuilder("Intent action: ").append(paramIntent.getAction()).toString();
    new StringBuilder("Intent data: ").append(paramIntent.getDataString()).toString();
    if ((paramIntent.getAction().equals("android.intent.action.PACKAGE_REMOVED")) && (!paramIntent.getDataString().equalsIgnoreCase(paramContext.getPackageName())))
      a(paramContext, paramIntent);
    while ((!paramIntent.getAction().equals("android.intent.action.PACKAGE_REPLACED")) || (!paramIntent.getDataString().equalsIgnoreCase("package:" + paramContext.getPackageName())))
      return;
    a(paramContext, "支付宝钱包");
    a(paramContext, "声波支付");
    a(paramContext, "条码支付");
    a(paramContext, "当面收");
    a(paramContext, "当面付");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.util.PackageReplacedReceiver
 * JD-Core Version:    0.6.2
 */