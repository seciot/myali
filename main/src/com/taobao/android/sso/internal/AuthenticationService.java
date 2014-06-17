package com.taobao.android.sso.internal;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

public class AuthenticationService extends Service
{
  private a a;

  public IBinder onBind(Intent paramIntent)
  {
    return this.a.getIBinder();
  }

  public void onCreate()
  {
    this.a = new a(this);
  }

  public void onDestroy()
  {
    this.a = null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.android.sso.internal.AuthenticationService
 * JD-Core Version:    0.6.2
 */