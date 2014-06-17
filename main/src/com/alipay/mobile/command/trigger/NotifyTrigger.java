package com.alipay.mobile.command.trigger;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import com.alipay.mobile.command.engine.TaskExeService;
import com.alipay.mobile.command.model.TriggerTypeEnum;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

public class NotifyTrigger extends BaseTrigger
{
  private boolean a(Context paramContext, String paramString1, String paramString2)
  {
    File[] arrayOfFile = new File(paramString1).listFiles();
    int j;
    File localFile;
    if (arrayOfFile != null)
    {
      int i = arrayOfFile.length;
      j = 0;
      if (j < i)
      {
        localFile = arrayOfFile[j];
        if (localFile.isFile())
        {
          if (!localFile.getPath().endsWith("apk"))
            break label146;
          String str = localFile.getPath();
          PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageArchiveInfo(str, 1);
          if ((localPackageInfo == null) || (localPackageInfo.applicationInfo == null) || (!paramString2.equals(localPackageInfo.applicationInfo.packageName)))
            break label154;
        }
      }
    }
    label146: label154: for (int k = 1; ; k = 0)
    {
      if (k != 0)
      {
        return true;
        if ((localFile.isDirectory()) && (localFile.canRead()))
          a(paramContext, localFile.getPath(), paramString2);
      }
      j++;
      break;
      return false;
    }
  }

  public void doReceive(Context paramContext, Intent paramIntent)
  {
    String str1;
    String str2;
    HashMap localHashMap;
    if ((paramIntent != null) && ("com.alipay.mobile.command.NOTIFY".equals(paramIntent.getAction())))
    {
      str1 = paramIntent.getStringExtra("NOTIFICATION_UNIQUE_FLAG");
      str2 = paramIntent.getStringExtra("BODY");
      localHashMap = new HashMap();
      if (!TextUtils.isEmpty(str2))
      {
        String[] arrayOfString1 = str2.split("&");
        if (arrayOfString1 != null)
        {
          int i = arrayOfString1.length;
          for (int j = 0; j < i; j++)
          {
            String[] arrayOfString2 = arrayOfString1[j].split("=");
            if ((arrayOfString2 != null) && (arrayOfString2.length == 2))
              localHashMap.put(arrayOfString2[0], arrayOfString2[1]);
          }
        }
      }
      String str3 = (String)localHashMap.get("NOTIFY_RECEIVER");
      if ((TextUtils.isEmpty(str3)) || (paramContext.getPackageName().equals(str3)))
        break label168;
      new Object[] { "指定了NOTIFY_RECEIVER,但是跟当前包名不匹配" };
    }
    label168: String str4;
    do
    {
      return;
      str4 = (String)localHashMap.get("PACKAGE_NAME");
      if (str4 == null)
        break;
    }
    while (!a(paramContext, "sdcard/ExtDataTunnel/" + paramContext.getPackageName() + ".res", str4));
    abortBroadcast();
    Intent localIntent = new Intent(paramContext, TaskExeService.class);
    localIntent.putExtra("trigger_type", TriggerTypeEnum.NOTIFY.getType());
    if (!TextUtils.isEmpty(str1))
    {
      localIntent.putExtra("trigger_fm_context", str1);
      if (!TextUtils.isEmpty(str2))
        localIntent.putExtra("trigger_biz_context", str2);
      paramContext.startService(localIntent);
      return;
    }
    new Object[] { "there is no notificationFlag." };
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.trigger.NotifyTrigger
 * JD-Core Version:    0.6.2
 */