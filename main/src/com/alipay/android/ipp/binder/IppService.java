package com.alipay.android.ipp.binder;

import android.app.Service;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;

public class IppService extends Service
{
  private static final String a = IppService.class.getSimpleName();
  private boolean b = false;

  private static void a(String paramString)
  {
    Log.d(a, paramString);
  }

  private String b(String paramString)
  {
    PackageManager localPackageManager = getPackageManager();
    Object localObject1;
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(getPackageName(), 128);
      if ((localApplicationInfo != null) && (localApplicationInfo.metaData != null))
      {
        Object localObject2 = localApplicationInfo.metaData.get(paramString);
        localObject1 = localObject2;
        if (localObject1 != null)
          break label89;
        a("The name '" + paramString + "' is not defined in the manifest file's meta data.");
        return null;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        a("Could not read the name in the manifest file.");
        localObject1 = null;
      }
    }
    label89: return localObject1.toString();
  }

  public IBinder onBind(Intent paramIntent)
  {
    a("onBind()");
    a("get Binder");
    return new a(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.ipp.binder.IppService
 * JD-Core Version:    0.6.2
 */