package com.alipay.mobile.longlink.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class LongLinkService extends Service
{
  public static a a = null;
  private static final String b = com.alipay.mobile.longlink.c.a.getBundle(LongLinkService.class);
  private ExecutorService c = Executors.newSingleThreadExecutor();
  private o d = new o(this);
  private p e = new p(this);
  private BroadcastReceiver f = new j(this);

  public static a d()
  {
    return a;
  }

  public final ExecutorService a()
  {
    return this.c;
  }

  public final o b()
  {
    return this.d;
  }

  public final p c()
  {
    return this.e;
  }

  public IBinder onBind(Intent paramIntent)
  {
    com.alipay.mobile.longlink.c.a.e(4, b, "onBind()...");
    return new n(this, null);
  }

  public void onCreate()
  {
    super.onCreate();
    com.alipay.mobile.longlink.c.a.e(3, b, "onCreate()...");
    l.b();
    a = new a(this);
    com.alipay.mobile.longlink.c.a.e(5, b, "onCreate=" + a.hashCode());
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
    registerReceiver(this.f, localIntentFilter);
    if (this.c.isShutdown())
      this.c = Executors.newSingleThreadExecutor();
    q.b();
  }

  public void onDestroy()
  {
    super.onDestroy();
    com.alipay.mobile.longlink.c.a.e(4, b, "onDestroy()...");
    a.c();
    try
    {
      unregisterReceiver(this.f);
      this.f = null;
      com.alipay.mobile.longlink.c.a.e(5, b, "onDestroy() executorService will be shutdown!");
      this.c.shutdown();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
  }

  public void onRebind(Intent paramIntent)
  {
    com.alipay.mobile.longlink.c.a.e(4, b, "onRebind()...");
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    com.alipay.mobile.longlink.c.a.e(5, b, "onStartCommand Received start id " + paramInt2 + ", intent: " + paramIntent);
    return 2;
  }

  public boolean onUnbind(Intent paramIntent)
  {
    com.alipay.mobile.longlink.c.a.e(4, b, "onUnbind()...");
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.service.LongLinkService
 * JD-Core Version:    0.6.2
 */