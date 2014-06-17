package com.alipay.android.phone.home.ui;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;

final class r extends BroadcastReceiver
{
  r(HomeFragment paramHomeFragment)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    HomeFragment.access$200(this.a).post(new s(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.r
 * JD-Core Version:    0.6.2
 */