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
    if (WifiConnectingActivity.a(this.a) == true)
    {
      if ((WifiConnectingActivity.b(this.a) != null) && (WifiConnectingActivity.b(this.a).a))
      {
        WifiConnectingActivity.c(this.a);
        return;
      }
      this.a.f();
      return;
    }
    WifiConnectingActivity.d(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.wifisdk.ui.b
 * JD-Core Version:    0.6.2
 */