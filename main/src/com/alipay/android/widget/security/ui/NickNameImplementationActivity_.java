package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class NickNameImplementationActivity_ extends NickNameImplementationActivity
{
  private Handler c = new Handler();

  private void c()
  {
    this.b = ((APButton)findViewById(R.id.aZ));
    this.a = ((APInputBox)findViewById(R.id.cA));
    a();
  }

  public final void a(MobileSecurityResult paramMobileSecurityResult)
  {
    this.c.post(new NickNameImplementationActivity_.1(this, paramMobileSecurityResult));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new NickNameImplementationActivity_.2(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.ae);
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
 * Qualified Name:     com.alipay.android.widget.security.ui.NickNameImplementationActivity_
 * JD-Core Version:    0.6.2
 */