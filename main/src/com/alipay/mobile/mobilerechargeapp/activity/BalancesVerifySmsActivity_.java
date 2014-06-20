package com.alipay.mobile.mobilerechargeapp.activity;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class BalancesVerifySmsActivity_ extends BalancesVerifySmsActivity
{
  private Handler g = new Handler();

  private void c()
  {
    this.d = ((APTextView)findViewById(R.id.r));
    this.e = ((APButton)findViewById(R.id.M));
    this.f = ((APCheckCodeHorizontalView)findViewById(R.id.BundlesManager));
    a();
  }

  public final void OnAutoReadSms(String paramString)
  {
    this.g.post(new f(this, paramString));
  }

  public final void a(AlertSignRes paramAlertSignRes)
  {
    this.g.post(new e(this, paramAlertSignRes));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new g(this, paramString));
  }

  public final void a(String paramString1, String paramString2)
  {
    BackgroundExecutor.execute(new h(this, paramString1, paramString2));
  }

  public final void b(AlertSignRes paramAlertSignRes)
  {
    this.g.post(new d(this, paramAlertSignRes));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.m);
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
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.BalancesVerifySmsActivity_
 * JD-Core Version:    0.6.2
 */