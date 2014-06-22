package com.alipay.android.phone.nfd.wifisdk.ui;

import android.view.animation.Animation;
import android.widget.TextView;

final class b extends i
{
  b(WifiConnectingActivity paramWifiConnectingActivity)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    this.a.j.setVisibility(8);
    if (WifiConnectingActivity.getBundle(this.a) == true)
    {
      if ((WifiConnectingActivity.dexopt(this.a) != null) && (WifiConnectingActivity.dexopt(this.a).a))
      {
        WifiConnectingActivity.getBundleByComponentName(this.a);
        return;
      }
      this.a.getBundlePath();
      return;
    }
    WifiConnectingActivity.d(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.wifisdk.ui.b
 * JD-Core Version:    0.6.2
 */