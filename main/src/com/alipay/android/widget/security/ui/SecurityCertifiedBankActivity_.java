package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.commonui.widget.APScrollView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SecurityCertifiedBankActivity_ extends SecurityCertifiedBankActivity
{
  private Handler g = new Handler();

  private void c()
  {
    this.d = ((APScrollView)findViewById(R.id.ai));
    this.f = ((APFlowTipView)findViewById(R.id.cv));
    this.e = ((APButton)findViewById(R.id.ah));
    a();
  }

  public final void b()
  {
    BackgroundExecutor.execute(new SecurityCertifiedBankActivity_.3(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.ax);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    c();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    c();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    c();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityCertifiedBankActivity_
 * JD-Core Version:    0.6.2
 */