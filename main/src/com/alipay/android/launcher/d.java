package com.alipay.android.launcher;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import android.widget.TabHost;

final class d extends BroadcastReceiver
{
  d(TabLauncher paramTabLauncher)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    TabLauncher.dexopt(this.a).measure(-1, -1);
    TabLauncher.getBundleByComponentName(this.a).unregisterReceiver(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.d
 * JD-Core Version:    0.6.2
 */