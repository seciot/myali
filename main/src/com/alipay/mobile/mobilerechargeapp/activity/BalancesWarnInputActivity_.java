package com.alipay.mobile.mobilerechargeapp.activity;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APButtonInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class BalancesWarnInputActivity_ extends BalancesWarnInputActivity
{
  private Handler f = new Handler();

  private void d()
  {
    this.b = ((APTextView)findViewById(R.id.q));
    this.c = ((APButton)findViewById(R.id.Bundleable));
    this.d = ((APTextView)findViewById(R.id.DefaultThreadFactory));
    this.a = ((APButtonInputBox)findViewById(R.id.N));
    a();
  }

  public final void a(AlertSignRes paramAlertSignRes)
  {
    this.f.post(new u(this, paramAlertSignRes));
  }

  public final void a(AlertSignRes paramAlertSignRes, String paramString)
  {
    this.f.post(new t(this, paramAlertSignRes, paramString));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new v(this, paramString));
  }

  public final void c()
  {
    BackgroundExecutor.execute(new w(this));
  }

  public final void c(String paramString)
  {
    BackgroundExecutor.execute(new x(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.HostClassLoader);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    d();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    d();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    d();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.BalancesWarnInputActivity_
 * JD-Core Version:    0.6.2
 */