package com.alipay.mobile.security.accountmanager.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.mainpage.password.FoundPasswordResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class ForgotPayPwdActivity_ extends ForgotPayPwdActivity
{
  private Handler v = new Handler();

  private void d()
  {
    this.f = ((APButton)findViewById(R.id.ei));
    this.j = ((APTextView)findViewById(R.id.en));
    this.m = ((APInputBox)findViewById(R.id.eg));
    this.e = ((APInputBox)findViewById(R.id.fL));
    this.d = ((APLinearLayout)findViewById(R.id.eo));
    this.o = ((APTitleBar)findViewById(R.id.ep));
    this.a = ((APLinearLayout)findViewById(R.id.eh));
    this.l = ((APButton)findViewById(R.id.ee));
    this.g = ((APTextView)findViewById(R.id.ek));
    this.c = ((APLinearLayout)findViewById(R.id.el));
    this.n = ((APButton)findViewById(R.id.ef));
    this.i = ((APCheckCodeHorizontalView)findViewById(R.id.fr));
    this.b = ((APLinearLayout)findViewById(R.id.ej));
    this.h = ((APButton)findViewById(R.id.fj));
    this.k = ((APCheckCodeHorizontalView)findViewById(R.id.em));
    this.p = ((APCheckboxWithLinkText)findViewById(R.id.bE));
  }

  public final void a()
  {
    BackgroundExecutor.execute(new cd(this));
  }

  public final void a(MobileSecurityResult paramMobileSecurityResult)
  {
    this.v.post(new cc(this, paramMobileSecurityResult));
  }

  public final void a(FoundPasswordResult paramFoundPasswordResult)
  {
    this.v.post(new by(this, paramFoundPasswordResult));
  }

  public final void a(String paramString)
  {
    this.v.post(new ca(this, paramString));
  }

  public final void b()
  {
    this.v.post(new bz(this));
  }

  public final void c()
  {
    this.v.post(new cb(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.at);
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
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ForgotPayPwdActivity_
 * JD-Core Version:    0.6.2
 */