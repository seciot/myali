package com.alipay.android.phone.nfd.wifisdk.ui;

import android.os.Handler;
import java.util.TimerTask;

final class e extends TimerTask
{
  e(WifiConnectingActivity paramWifiConnectingActivity)
  {
  }

  public final void run()
  {
    WifiConnectingActivity.f(this.a).post(new f(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.wifisdk.ui.e
 * JD-Core Version:    0.6.2
 */