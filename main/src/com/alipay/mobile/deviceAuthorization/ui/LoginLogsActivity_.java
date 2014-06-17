package com.alipay.mobile.deviceAuthorization.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobilesecurity.core.model.account.loginLog.LoginLogRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class LoginLogsActivity_ extends LoginLogsActivity
{
  private Handler b = new Handler();

  public final void a()
  {
    BackgroundExecutor.execute(new ai(this));
  }

  public final void a(LoginLogRes paramLoginLogRes)
  {
    this.b.post(new ah(this, paramLoginLogRes));
  }

  public final void b(LoginLogRes paramLoginLogRes)
  {
    this.b.post(new ag(this, paramLoginLogRes));
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
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.LoginLogsActivity_
 * JD-Core Version:    0.6.2
 */