package com.alipay.pushsdk.push;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.IBinder;
import com.alipay.pushsdk.deliver.NotificationReceiver;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class NotificationService extends Service
{
  private static final String a = com.alipay.pushsdk.c.a.c.getBundle(NotificationService.class);
  private j b = null;
  private AlarmManager c = null;
  private PendingIntent d = null;
  private BroadcastReceiver e;
  private BroadcastReceiver f;
  private ExecutorService g;
  private c h;
  private d i;
  private String j = "";
  private String k = "";
  private Context l = null;

  public final ExecutorService a()
  {
    return this.g;
  }

  protected final void a(int paramInt)
  {
    com.alipay.pushsdk.c.a.c.e(3, a, "startAlarmTimer ELAPSED_REALTIME_WAKEUP! nextTime=" + paramInt);
    Intent localIntent = new Intent();
    localIntent.setAction(getPackageName() + ".push.action.CHECK");
    this.d = PendingIntent.getBroadcast(this, 100, localIntent, 0);
    try
    {
      if ((this.c != null) && (this.d != null))
        this.c.set(0, System.currentTimeMillis() + paramInt, this.d);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public final c b()
  {
    return this.h;
  }

  public final d c()
  {
    return this.i;
  }

  public final j d()
  {
    return this.b;
  }

  public IBinder onBind(Intent paramIntent)
  {
    com.alipay.pushsdk.c.a.c.e(4, a, "onBind()...");
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
    com.alipay.pushsdk.c.a.c.e(3, a, "onCreate()...");
    this.l = this;
    this.g = Executors.newSingleThreadExecutor();
    this.h = new c(this);
    this.i = new d(this);
    com.alipay.pushsdk.c.a.e.getBundle(this.l);
    try
    {
      if ((0x2 & this.l.getPackageManager().getApplicationInfo(this.l.getPackageName(), 16384).flags) != 0);
      for (com.alipay.pushsdk.c.a.c.a = true; ; com.alipay.pushsdk.c.a.c.a = false)
      {
        com.alipay.pushsdk.c.a.c.getInstance();
        this.b = new j(this);
        com.alipay.pushsdk.c.a.c.e(5, a, "onCreate=" + this.b.hashCode());
        com.alipay.pushsdk.c.a.c.e(3, a, "start()...");
        new g(this).a();
        this.j = new h(this).a();
        com.alipay.pushsdk.c.a.d.a(com.alipay.pushsdk.c.a.d.f, com.alipay.pushsdk.c.a.d.C, System.currentTimeMillis(), com.alipay.pushsdk.c.a.d.C, 10000L + System.currentTimeMillis(), "NotificationService_start():mUserId=" + this.j);
        p.c();
        this.c = ((AlarmManager)getSystemService("alarm"));
        this.e = new NotificationReceiver(getPackageName() + ".push.action.SHOW_NOTIFICATION");
        this.f = new ClientActionReceiver(this);
        IntentFilter localIntentFilter1 = new IntentFilter();
        localIntentFilter1.addAction(getPackageName() + ".push.action.SHOW_NOTIFICATION");
        registerReceiver(this.e, localIntentFilter1);
        IntentFilter localIntentFilter2 = new IntentFilter();
        localIntentFilter2.addAction(getPackageName() + ".push.action.CONNECT");
        localIntentFilter2.addAction(getPackageName() + ".push.action.KEEPLIVE");
        localIntentFilter2.addAction(getPackageName() + ".push.action.CHECK");
        localIntentFilter2.addAction("android.intent.action.SCREEN_ON");
        registerReceiver(this.f, localIntentFilter2);
        a(1000 * ClientActionReceiver.a);
        com.alipay.pushsdk.c.a.d.a(com.alipay.pushsdk.c.a.d.l, com.alipay.pushsdk.c.a.d.A, System.currentTimeMillis(), com.alipay.pushsdk.c.a.d.B, System.currentTimeMillis() + 1000 * ClientActionReceiver.a, "NotificationService_registerClientActionReceiver:" + ClientActionReceiver.a / 60 + " minutes");
        com.alipay.pushsdk.c.a.c.e(5, a, "onCreate() executorService isShutdown=" + this.g.isShutdown());
        if (this.g.isShutdown())
          this.g = Executors.newSingleThreadExecutor();
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      String str1 = a;
      if ("initDebugMode: " + localNameNotFoundException == null);
      String str2;
      for (Object localObject2 = ""; ; localObject2 = str2)
      {
        com.alipay.pushsdk.c.a.c.e(1, str1, (String)localObject2);
        com.alipay.pushsdk.c.a.c.a = false;
        com.alipay.pushsdk.c.a.c.getInstance();
        break;
        str2 = localNameNotFoundException.getMessage();
      }
    }
    finally
    {
      com.alipay.pushsdk.c.a.c.getInstance();
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    com.alipay.pushsdk.c.a.c.e(4, a, "onDestroy()...");
    com.alipay.pushsdk.c.a.d.a(com.alipay.pushsdk.c.a.d.g, com.alipay.pushsdk.c.a.d.D, System.currentTimeMillis(), com.alipay.pushsdk.c.a.d.D, 10000L + System.currentTimeMillis(), "NotificationService_onDestroy:mUserId=" + this.j);
    com.alipay.pushsdk.c.a.c.e(3, a, "stop()...");
    try
    {
      if ((this.c != null) && (this.d != null))
        this.c.cancel(this.d);
    }
    catch (Exception localIllegalArgumentException1)
    {
      try
      {
        unregisterReceiver(this.e);
        this.e = null;
      }
      catch (IllegalArgumentException localIllegalArgumentException1)
      {
        try
        {
          while (true)
          {
            unregisterReceiver(this.f);
            this.f = null;
            com.alipay.pushsdk.c.a.d.a(com.alipay.pushsdk.c.a.d.g, com.alipay.pushsdk.c.a.d.z, System.currentTimeMillis(), com.alipay.pushsdk.c.a.d.w, System.currentTimeMillis() + 1000 * com.alipay.pushsdk.push.a.o.getBundleName(), "NotificationService_stop:reconnectInterval=" + com.alipay.pushsdk.push.a.o.getBundleName() + " lostedTime=" + System.currentTimeMillis());
            this.b.c();
            com.alipay.pushsdk.c.a.c.e(5, a, "stop() executorService will be shutdown!");
            this.g.shutdown();
            com.alipay.pushsdk.c.a.e.getInstance();
            o localo = new o(this.l);
            if ((this.b.e() != null) && (this.b.e().length() > 0) && (localo.a()))
            {
              com.alipay.pushsdk.c.a.c.e(4, a, "onDestroy() will restart this service.");
              Intent localIntent = new Intent(this, NotificationService.class);
              localIntent.putExtra("cur_triger", "16");
              startService(localIntent);
            }
            this.j = "";
            return;
            localException = localException;
            localException.printStackTrace();
          }
          localIllegalArgumentException1 = localIllegalArgumentException1;
          localIllegalArgumentException1.printStackTrace();
        }
        catch (IllegalArgumentException localIllegalArgumentException2)
        {
          while (true)
            localIllegalArgumentException2.printStackTrace();
        }
      }
    }
  }

  public void onRebind(Intent paramIntent)
  {
    com.alipay.pushsdk.c.a.c.e(4, a, "onRebind()...");
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    com.alipay.pushsdk.c.a.c.e(5, a, "onStartCommand Received start id " + paramInt2 + ", intent: " + paramIntent);
    String str1;
    String str2;
    String str3;
    String str4;
    h localh;
    if (paramIntent != null)
    {
      String str5 = paramIntent.getStringExtra("cur_triger");
      String str6 = paramIntent.getStringExtra("cur_userId");
      String str7 = paramIntent.getStringExtra("cur_utdId");
      str1 = paramIntent.getStringExtra("cur_msptId");
      str2 = str7;
      str3 = str6;
      str4 = str5;
      if ((str4 != null) && (str4.length() > 0))
      {
        com.alipay.pushsdk.c.a.d.a(com.alipay.pushsdk.c.a.d.f, com.alipay.pushsdk.c.a.d.C, System.currentTimeMillis(), com.alipay.pushsdk.c.a.d.E, 10000L + System.currentTimeMillis(), "NotificationService_onStartCommand:trigerEvent=" + str4);
        localh = new h(this.l);
        if ((str3 == null) || (str3.length() <= 0))
          break label367;
        localh.a(str3);
        this.j = str3;
        localh.e(str2);
        this.k = str2;
        if ((str1 != null) && (str1.length() > 0))
          localh.f(str1);
      }
    }
    while (true)
    {
      this.b.a(this.j);
      com.alipay.pushsdk.c.a.c.e(3, a, "onStartCommand trigerEvent=" + str4 + ", userId=" + this.j + ", utdId=" + this.k);
      if ((this.b.e() != null) && (this.b.e().length() > 0))
        new Thread(new e(this, str4), "NotificationService Triger Runnable").start();
      com.alipay.pushsdk.c.a.c.e(4, a, "configRequest()...");
      this.h.a(new b(this));
      return 1;
      str1 = "";
      str2 = "";
      str3 = "";
      str4 = "10";
      break;
      label367: this.j = localh.a();
      this.k = localh.d();
    }
  }

  public boolean onUnbind(Intent paramIntent)
  {
    com.alipay.pushsdk.c.a.c.e(4, a, "onUnbind()...");
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.NotificationService
 * JD-Core Version:    0.6.2
 */