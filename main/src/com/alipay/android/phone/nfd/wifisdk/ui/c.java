package com.alipay.android.phone.nfd.wifisdk.ui;

import android.view.animation.Animation;
import android.widget.LinearLayout;
import android.widget.TextView;

final class c extends i
{
  c(WifiConnectingActivity paramWifiConnectingActivity)
  {
  }

  public final void onAnimationEnd(Animation paramAnimation)
  {
    this.a.i.setVisibility(8);
    this.a.k.setVisibility(0);
    this.a.k.startAnimation(this.a.p);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.wifisdk.ui.c
 * JD-Core Version:    0.6.2
 */