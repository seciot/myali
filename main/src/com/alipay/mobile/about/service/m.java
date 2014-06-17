package com.alipay.mobile.about.service;

import android.app.Activity;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.about.UpdateInfo;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;
import com.alipay.mobileapp.common.service.facade.version.model.ClientVersionServiceReq;
import java.lang.ref.WeakReference;

public final class m
{
  private static Object a = new Object();
  private static Activity b;

  public static ClientUpdateCheckRes a(UpdateInfo paramUpdateInfo)
  {
    ClientUpdateCheckRes localClientUpdateCheckRes = null;
    if (paramUpdateInfo != null)
    {
      localClientUpdateCheckRes = new ClientUpdateCheckRes();
      localClientUpdateCheckRes.setDownloadURL(paramUpdateInfo.getDownloadURL());
      localClientUpdateCheckRes.setGuideMemo(paramUpdateInfo.getGuideMemo());
      localClientUpdateCheckRes.setMemo(paramUpdateInfo.getMemo());
      localClientUpdateCheckRes.setNewestVersion(paramUpdateInfo.getNewestVersion());
      localClientUpdateCheckRes.setResultStatus(paramUpdateInfo.getResultStatus());
    }
    return localClientUpdateCheckRes;
  }

  public static final ClientVersionServiceReq a()
  {
    ClientVersionServiceReq localClientVersionServiceReq = new ClientVersionServiceReq();
    localClientVersionServiceReq.setClientId(DeviceInfo.getInstance().getClientId());
    localClientVersionServiceReq.setOsVersion(DeviceInfo.getInstance().getOsVersion());
    localClientVersionServiceReq.setProductId(AppInfo.getInstance().getProductID());
    localClientVersionServiceReq.setProductVersion(AppInfo.getInstance().getmProductVersion());
    return localClientVersionServiceReq;
  }

  public static Activity b()
  {
    return f();
  }

  public static void c()
  {
    synchronized (a)
    {
      a.notifyAll();
      return;
    }
  }

  public static void d()
  {
    if (b == null)
    {
      Activity localActivity = f();
      if ((localActivity != null) && (localActivity.getClass().getSimpleName().equals("TabLauncher")))
        b = localActivity;
    }
  }

  public static Activity e()
  {
    return b;
  }

  private static Activity f()
  {
    long l = System.currentTimeMillis();
    WeakReference localWeakReference = AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity();
    Activity localActivity = null;
    if (localWeakReference != null)
      localActivity = (Activity)localWeakReference.get();
    while (true)
      if (((localWeakReference == null) || (localActivity == null)) && (System.currentTimeMillis() - l <= 15000L))
        try
        {
          Thread.sleep(500L);
          label56: localWeakReference = AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity();
          if (localWeakReference != null)
            localActivity = (Activity)localWeakReference.get();
        }
        catch (InterruptedException localInterruptedException)
        {
          break label56;
        }
    return localActivity;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.m
 * JD-Core Version:    0.6.2
 */