package com.alipay.mobile.about.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobileapp.common.service.facade.version.model.ClientUpdateCheckRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class AboutMainActivity_ extends AboutMainActivity
{
  private Handler a = new Handler();

  public final void a()
  {
    BackgroundExecutor.execute(new l(this));
  }

  public final void a(ClientUpdateCheckRes paramClientUpdateCheckRes)
  {
    this.a.post(new k(this, paramClientUpdateCheckRes));
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
 * Qualified Name:     com.alipay.mobile.about.ui.AboutMainActivity_
 * JD-Core Version:    0.6.2
 */