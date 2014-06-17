package com.alipay.mobile.security.authcenter.androidaccountmanager;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.alipay.mobile.common.logging.LogCatLog;

public class AlipayAuthenticationService extends Service
{
  private a a;

  public IBinder onBind(Intent paramIntent)
  {
    if (Log.isLoggable("AuthenticationService", 2))
      LogCatLog.v("AuthenticationService", "getBinder()...  returning the AccountAuthenticator binder for intent " + paramIntent);
    return this.a.getIBinder();
  }

  public void onCreate()
  {
    if (Log.isLoggable("AuthenticationService", 2))
      LogCatLog.v("AuthenticationService", "SampleSyncAdapter Authentication Service started.");
    this.a = new a(this);
  }

  public void onDestroy()
  {
    if (Log.isLoggable("AuthenticationService", 2))
      LogCatLog.v("AuthenticationService", "SampleSyncAdapter Authentication Service stopped.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.androidaccountmanager.AlipayAuthenticationService
 * JD-Core Version:    0.6.2
 */