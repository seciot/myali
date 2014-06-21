package com.alipay.mobile.alipassapp.ui.common;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.ui.R.string;

final class m
  implements Runnable
{
  m(k paramk, BaseActivity paramBaseActivity, View.OnClickListener paramOnClickListener, APTitleBar paramAPTitleBar)
  {
  }

  public final void run()
  {
    FrameLayout localFrameLayout = (FrameLayout)this.a.findViewById(16908290);
    if (k.d(this.d) == null)
      k.v(this.d, View.inflate(k.getBundle(this.d), R.layout.alipass_network_error_view, null));
    APFlowTipView localAPFlowTipView = (APFlowTipView)k.d(this.d).findViewById(R.id.asset_flowtipview);
    localAPFlowTipView.resetFlowTipType(16);
    localAPFlowTipView.setTips(AlipayApplication.getInstance().getResources().getString(R.string.flow_network_error));
    localAPFlowTipView.setAction(AlipayApplication.getInstance().getResources().getString(R.string.tryAgin), new n(this, localFrameLayout));
    k.d(this.d).setPadding(0, this.c.getHeight(), 0, 0);
    localFrameLayout.removeView(k.d(this.d));
    localFrameLayout.addView(k.d(this.d));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.m
 * JD-Core Version:    0.6.2
 */