package com.alipay.mobile.security.accountmanager.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeGetter;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobilesecurity.core.model.mainpage.imagecode.ApplyImageCodeResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import com.googlecode.androidannotations.api.SdkVersionHelper;

public final class ForgotLoginPwdActivity_ extends ForgotLoginPwdActivity
{
  private Handler z = new Handler();

  private void f()
  {
    this.f = ((APLinearLayout)findViewById(R.id.dW));
    this.e = ((APLinearLayout)findViewById(R.id.eC));
    this.n = ((APButton)findViewById(R.id.dU));
    this.q = ((APInputBox)findViewById(R.id.dZ));
    this.h = ((APLinearLayout)findViewById(R.id.fs));
    this.l = ((APTextView)findViewById(R.id.dV));
    this.d = ((APLinearLayout)findViewById(R.id.fq));
    this.g = ((APLinearLayout)findViewById(R.id.dX));
    this.o = ((APInputBox)findViewById(R.id.ec));
    this.r = ((APCheckboxWithLinkText)findViewById(R.id.bE));
    this.s = ((APButton)findViewById(R.id.dY));
    this.j = ((APCheckCodeGetter)findViewById(R.id.eL));
    this.m = ((APCheckCodeHorizontalView)findViewById(R.id.dT));
    this.p = ((APButton)findViewById(R.id.eb));
    this.a = ((APTitleBar)findViewById(R.id.ed));
    this.i = ((APInputBox)findViewById(R.id.fb));
    this.c = ((APLinearLayout)findViewById(R.id.dS));
    this.b = ((APLinearLayout)findViewById(R.id.ea));
    this.k = ((APButton)findViewById(R.id.dR));
    a();
  }

  public final void OnAutoReadSms(String paramString)
  {
    this.z.post(new bj(this, paramString));
  }

  public final void a(ApplyImageCodeResult paramApplyImageCodeResult)
  {
    this.z.post(new be(this, paramApplyImageCodeResult));
  }

  public final void a(String paramString)
  {
    this.z.post(new bh(this, paramString));
  }

  public final void a(boolean paramBoolean)
  {
    this.z.post(new bi(this, paramBoolean));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new bk(this));
  }

  public final void c()
  {
    this.z.post(new bg(this));
  }

  public final void d()
  {
    this.z.post(new bf(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.as);
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((SdkVersionHelper.getSdkInt() < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
      onBackPressed();
    return super.onKeyDown(paramInt, paramKeyEvent);
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
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ForgotLoginPwdActivity_
 * JD-Core Version:    0.6.2
 */