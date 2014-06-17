package com.alipay.android.phone.home.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

final class h extends BroadcastReceiver
{
  h(HeaderAreaLayout paramHeaderAreaLayout)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("com.alipay.security.login"))
    {
      HeaderAreaLayout.f(this.a);
      HeaderAreaLayout.g(this.a);
    }
    while ((!paramIntent.getAction().equals("com.alipay.security.logout")) && (!paramIntent.getAction().equals("com.alipay.security.cleanAccount")))
      return;
    HeaderAreaLayout.f(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.h
 * JD-Core Version:    0.6.2
 */