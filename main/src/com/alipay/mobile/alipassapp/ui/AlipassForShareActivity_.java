package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class AlipassForShareActivity_ extends AlipassForShareActivity
{
  private Handler a = new Handler();

  public final void a()
  {
    BackgroundExecutor.execute(new w(this));
  }

  public final void b()
  {
    this.a.post(new v(this));
  }

  public final void c()
  {
    this.a.post(new u(this));
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
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassForShareActivity_
 * JD-Core Version:    0.6.2
 */