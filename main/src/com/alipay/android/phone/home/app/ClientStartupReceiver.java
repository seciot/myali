package com.alipay.android.phone.home.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.common.logagent.StorageStateInfo;

public class ClientStartupReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.alipay.security.login".equals(paramIntent.getAction()))
      StorageStateInfo.getInstance().putValue("userID", paramIntent.getStringExtra("userId"));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.app.ClientStartupReceiver
 * JD-Core Version:    0.6.2
 */