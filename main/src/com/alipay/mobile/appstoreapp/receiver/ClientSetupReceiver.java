package com.alipay.mobile.appstoreapp.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class ClientSetupReceiver extends BroadcastReceiver
{
  private static final String TAG = "ClientSetupReceiver";
  private long DelayTime = 0L;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.alipay.mobile.client.STARTED".equals(paramIntent.getAction()))
      new Thread(new a(this)).start();
    while (!"com.alipay.security.login".equals(paramIntent.getAction()))
      return;
    new Thread(new b(this)).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.receiver.ClientSetupReceiver
 * JD-Core Version:    0.6.2
 */