package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SecurityAccountSecurityActivity_ extends SecurityAccountSecurityActivity
{
  private Handler v = new Handler();

  private void c()
  {
    this.b = ((APTableView)findViewById(R.id.bn));
    this.c = ((APTableView)findViewById(R.id.cl));
    this.h = ((APTableView)findViewById(R.id.cG));
    this.m = ((APRelativeLayout)findViewById(R.id.dN));
    this.i = ((APTableView)findViewById(R.id.fI));
    this.a = ((APTableView)findViewById(R.id.cm));
    this.k = ((APTextView)findViewById(R.id.bF));
    this.e = ((APTableView)findViewById(R.id.dc));
    this.f = ((APTableView)findViewById(R.id.O));
    this.g = ((APTableView)findViewById(R.id.aQ));
    this.d = ((APTableView)findViewById(R.id.bP));
    this.j = ((APTextView)findViewById(R.id.eW));
    this.l = ((APTextView)findViewById(R.id.bI));
    b();
  }

  public final void a()
  {
    BackgroundExecutor.execute(new SecurityAccountSecurityActivity_.6(this));
  }

  public final void a(UserInfo paramUserInfo)
  {
    this.v.post(new SecurityAccountSecurityActivity_.1(this, paramUserInfo));
  }

  public final void a(String paramString)
  {
    this.v.post(new SecurityAccountSecurityActivity_.4(this, paramString));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new SecurityAccountSecurityActivity_.8(this, paramString));
  }

  public final void c(String paramString)
  {
    this.v.post(new SecurityAccountSecurityActivity_.2(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.ar);
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
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityAccountSecurityActivity_
 * JD-Core Version:    0.6.2
 */