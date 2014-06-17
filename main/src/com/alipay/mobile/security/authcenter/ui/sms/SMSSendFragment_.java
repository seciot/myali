package com.alipay.mobile.security.authcenter.ui.sms;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobileapp.biz.rpc.smscode.SmsCodeRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SMSSendFragment_ extends SMSSendFragment
{
  private View f;
  private Handler j = new Handler();

  private View a(int paramInt)
  {
    if (this.f == null)
      return null;
    return this.f.findViewById(paramInt);
  }

  public final void a(SmsCodeRes paramSmsCodeRes)
  {
    this.j.post(new j(this, paramSmsCodeRes));
  }

  public final void d(String paramString)
  {
    BackgroundExecutor.execute(new k(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.f = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.f == null)
      this.f = paramLayoutInflater.inflate(R.layout.be, paramViewGroup, false);
    return this.f;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.d = ((APTextView)a(R.id.cF));
    this.e = ((APButton)a(R.id.aE));
    c();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.sms.SMSSendFragment_
 * JD-Core Version:    0.6.2
 */