package com.alipay.mobile.framework;

import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.alipay.mobile.common.info.AppInfo;
import com.androidquery.callback.BitmapAjaxCallback;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public class AlipayApplication extends Application
{
  private static AlipayApplication a;
  private MicroApplicationContext b;
  private Map<String, Set<String>> c;
  private BundleContext d;

  public static AlipayApplication getInstance()
  {
    try
    {
      AlipayApplication localAlipayApplication = a;
      return localAlipayApplication;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void attachBaseContext(Context paramContext)
  {
    super.attachBaseContext(paramContext);
  }

  public void attachBundleContext(Object paramObject)
  {
    this.d = new BundleContext(paramObject);
  }

  public BundleContext getBundleContext()
  {
    return this.d;
  }

  public Map<String, Set<String>> getLazyBundles()
  {
    return this.c;
  }

  public MicroApplicationContext getMicroApplicationContext()
  {
    return this.b;
  }

  public void onCreate()
  {
    int i = 0;
    try
    {
      super.onCreate();
      a = this;
      try
      {
        arrayOfString1 = getPackageManager().getApplicationInfo(getApplicationContext().getPackageName(), 128).metaData.getString("lazy_bundle").split("\\|");
        this.c = new HashMap();
        int j = arrayOfString1.length;
        if (i < j);
      }
      catch (Exception localException1)
      {
        try
        {
          while (true)
          {
            String[] arrayOfString1;
            this.b = ((MicroApplicationContext)Class.forName("com.alipay.mobile.core.impl.MicroApplicationContextImpl").newInstance());
            this.b.attachContext(this);
            return;
            String[] arrayOfString2 = arrayOfString1[i].split(":");
            HashSet localHashSet = new HashSet();
            localHashSet.addAll(Arrays.asList(arrayOfString2[1].split(",")));
            this.c.put(arrayOfString2[0], localHashSet);
            i++;
            continue;
            localException1 = localException1;
            new StringBuilder("Failed to load meta-data, NameNotFound: ").append(localException1.getMessage()).toString();
          }
        }
        catch (Exception localException2)
        {
          while (true)
            localException2.printStackTrace();
        }
      }
    }
    finally
    {
    }
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    BitmapAjaxCallback.clearCache();
  }

  public void onTerminate()
  {
    this.b.clearState();
    super.onTerminate();
  }

  public void recover()
  {
    AppInfo.createInstance(getApplicationContext());
    AppInfo.getInstance().recoverProductVersion();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.AlipayApplication
 * JD-Core Version:    0.6.2
 */