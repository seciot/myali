package com.alipay.mobile.about.service;

import android.app.Service;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import com.alipay.mobile.about.ui.ag;
import java.util.Timer;
import java.util.TimerTask;

public class FloatWindowService extends Service
{
  private Handler a = new Handler();
  private Timer b;

  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public void onCreate()
  {
    super.onCreate();
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.b.cancel();
    this.b = null;
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    ag.b();
    if (this.b == null)
    {
      this.b = new Timer();
      this.b.scheduleAtFixedRate(new a(), 0L, 500L);
    }
    return 2;
  }

  final class a extends TimerTask
  {
    a()
    {
    }

    public final void run()
    {
      if ((FloatWindowService.getBundle(FloatWindowService.this)) && (!ag.a().c()))
        FloatWindowService.dexopt(FloatWindowService.this).post(new d(this));
      while ((FloatWindowService.getBundle(FloatWindowService.this)) || (!ag.a().c()))
        return;
      FloatWindowService.dexopt(FloatWindowService.this).post(new e(this));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.service.FloatWindowService
 * JD-Core Version:    0.6.2
 */