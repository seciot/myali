package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APExtTableView;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.service.ext.security.bean.ResultBean;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.core.model.mainpage.password.QuerySimplePwdStatusResp;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SecurityPasswordManagerActivity_ extends SecurityPasswordManagerActivity
{
  private Handler r = new Handler();

  private void h()
  {
    this.b = ((APTextView)findViewById(R.id.bC));
    this.g = ((APImageView)findViewById(R.id.ds));
    this.a = ((APRadioTableView)findViewById(R.id.bm));
    this.f = ((APTextView)findViewById(R.id.cM));
    this.c = ((APExtTableView)findViewById(R.id.bD));
    this.e = ((APTableView)findViewById(R.id.ck));
    c();
  }

  public final void a()
  {
    BackgroundExecutor.execute(new SecurityPasswordManagerActivity_.17(this));
  }

  public final void a(ResultBean paramResultBean, boolean paramBoolean)
  {
    this.r.post(new SecurityPasswordManagerActivity_.9(this, paramResultBean, paramBoolean));
  }

  public final void a(UserInfo paramUserInfo)
  {
    this.r.post(new SecurityPasswordManagerActivity_.11(this, paramUserInfo));
  }

  public final void a(QuerySimplePwdStatusResp paramQuerySimplePwdStatusResp)
  {
    this.r.post(new SecurityPasswordManagerActivity_.5(this, paramQuerySimplePwdStatusResp));
  }

  public final void a(String paramString)
  {
    this.r.post(new SecurityPasswordManagerActivity_.13(this, paramString));
  }

  public final void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    BackgroundExecutor.execute(new SecurityPasswordManagerActivity_.16(this, paramString1, paramString2, paramBoolean));
  }

  public final void a(boolean paramBoolean)
  {
    this.r.post(new SecurityPasswordManagerActivity_.1(this, paramBoolean));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new SecurityPasswordManagerActivity_.14(this));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new SecurityPasswordManagerActivity_.19(this, paramString));
  }

  public final void b(boolean paramBoolean)
  {
    this.r.post(new SecurityPasswordManagerActivity_.2(this, paramBoolean));
  }

  public final void d()
  {
    this.r.post(new SecurityPasswordManagerActivity_.10(this));
  }

  public final void e()
  {
    this.r.post(new SecurityPasswordManagerActivity_.7(this));
  }

  public final void f()
  {
    this.r.post(new SecurityPasswordManagerActivity_.12(this));
  }

  public final void g()
  {
    this.r.post(new SecurityPasswordManagerActivity_.8(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aQ);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    h();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    h();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    h();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerActivity_
 * JD-Core Version:    0.6.2
 */