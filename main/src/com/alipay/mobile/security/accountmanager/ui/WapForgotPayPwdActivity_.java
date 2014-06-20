package com.alipay.mobile.security.accountmanager.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APProgressBar;
import com.alipay.mobile.commonui.widget.APWebView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class WapForgotPayPwdActivity_ extends WapForgotPayPwdActivity
{
  private Handler c = new Handler();

  private void e()
  {
    this.b = ((APProgressBar)findViewById(R.id.BundlesManager));
    this.a = ((APWebView)findViewById(R.id.AppBundle));
    a();
  }

  public final void b()
  {
    this.c.post(new dt(this));
  }

  public final void c()
  {
    this.c.post(new du(this));
  }

  public final void d()
  {
    BackgroundExecutor.execute(new dv(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.ba);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    e();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    e();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    e();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.WapForgotPayPwdActivity_
 * JD-Core Version:    0.6.2
 */