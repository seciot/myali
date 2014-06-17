package com.alipay.mobile.security.authcenter.ui.sms;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobileapp.biz.rpc.smscode.SmsCodeRes;
import com.alipay.mobileapp.biz.rpc.user.MobileUserResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SMSReceiveFragment_ extends SMSReceiveFragment
{
  private View j;
  private Handler k = new Handler();

  private View a(int paramInt)
  {
    if (this.j == null)
      return null;
    return this.j.findViewById(paramInt);
  }

  public final void a(SmsCodeRes paramSmsCodeRes)
  {
    this.k.post(new e(this, paramSmsCodeRes));
  }

  public final void a(MobileUserResult paramMobileUserResult)
  {
    this.k.post(new b(this, paramMobileUserResult));
  }

  public final void b(SmsCodeRes paramSmsCodeRes)
  {
    this.k.post(new c(this, paramSmsCodeRes));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new g(this, paramString));
  }

  public final void c(String paramString)
  {
    this.k.post(new d(this, paramString));
  }

  public final void d()
  {
    BackgroundExecutor.execute(new f(this));
  }

  public final void d(String paramString)
  {
    BackgroundExecutor.execute(new h(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.j = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.j == null)
      this.j = paramLayoutInflater.inflate(R.layout.bd, paramViewGroup, false);
    return this.j;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.e = ((APCheckCodeHorizontalView)a(R.id.aC));
    this.d = ((APTextView)a(R.id.aD));
    this.f = ((APButton)a(R.id.fM));
    c();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.sms.SMSReceiveFragment_
 * JD-Core Version:    0.6.2
 */