package com.alipay.mobile.alipassapp.biz.service;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class UploadAlipassService extends Service
{
  private static final String a = UploadAlipassService.class.getSimpleName();

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
  }

  @Deprecated
  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    Intent localIntent = new Intent(this, UploadAlipassService.UploadAlipassIntentService.class);
    if ((paramIntent != null) && (paramIntent.getExtras() != null))
    {
      localIntent.putExtras(paramIntent.getExtras());
      startService(localIntent);
    }
    return 1;
  }

  public boolean onUnbind(Intent paramIntent)
  {
    return super.onUnbind(paramIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.service.UploadAlipassService
 * JD-Core Version:    0.6.2
 */