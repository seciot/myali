package com.alipay.mobile.security.accountmanager.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SelectAccountActivity_ extends SelectAccountActivity
{
  private Handler g = new Handler();

  private void c()
  {
    this.a = ((APListView)findViewById(R.id.fp));
    a();
  }

  public final void a(UserInfo paramUserInfo)
  {
    BackgroundExecutor.execute(new dp(this, paramUserInfo));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new dq(this, paramString));
  }

  public final void b()
  {
    this.g.post(new do(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aU);
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
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.SelectAccountActivity_
 * JD-Core Version:    0.6.2
 */