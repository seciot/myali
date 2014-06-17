package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.android.widget.security.service.SecurityGradeViewModel;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SecurityExaminationActivity_ extends SecurityExaminationActivity
{
  private Handler y = new Handler();

  private void f()
  {
    this.e = ((APTextView)findViewById(R.id.eJ));
    this.k = ((APTableView)findViewById(R.id.eH));
    this.b = ((APRelativeLayout)findViewById(R.id.bg));
    this.j = ((APTableView)findViewById(R.id.eE));
    this.i = ((APTableView)findViewById(R.id.eG));
    this.h = ((APTableView)findViewById(R.id.eF));
    this.l = ((APTextView)findViewById(R.id.fm));
    this.f = ((APTextView)findViewById(R.id.eI));
    this.g = ((APTableView)findViewById(R.id.et));
    this.n = ((APImageView)findViewById(R.id.fk));
    this.a = ((APTitleBar)findViewById(R.id.ge));
    this.d = ((APImageView)findViewById(R.id.fl));
    this.c = ((APLinearLayout)findViewById(R.id.eV));
    this.m = ((APTextView)findViewById(R.id.fn));
    a();
  }

  public final void a(SecurityGradeViewModel paramSecurityGradeViewModel)
  {
    this.y.post(new SecurityExaminationActivity_.2(this, paramSecurityGradeViewModel));
  }

  public final void a(String paramString)
  {
    this.y.post(new SecurityExaminationActivity_.3(this, paramString));
  }

  public final void b()
  {
    this.y.post(new SecurityExaminationActivity_.1(this));
  }

  public final void c()
  {
    this.y.post(new SecurityExaminationActivity_.4(this));
  }

  public final void d()
  {
    BackgroundExecutor.execute(new SecurityExaminationActivity_.6(this));
  }

  public final void e()
  {
    BackgroundExecutor.execute(new SecurityExaminationActivity_.5(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aJ);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    f();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    f();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    f();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityExaminationActivity_
 * JD-Core Version:    0.6.2
 */