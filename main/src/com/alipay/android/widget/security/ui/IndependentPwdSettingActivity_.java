package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class IndependentPwdSettingActivity_ extends IndependentPwdSettingActivity
{
  private Handler b = new Handler();

  public final void a(MobileSecurityResult paramMobileSecurityResult)
  {
    this.b.post(new IndependentPwdSettingActivity_.1(this, paramMobileSecurityResult));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new IndependentPwdSettingActivity_.2(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.IndependentPwdSettingActivity_
 * JD-Core Version:    0.6.2
 */