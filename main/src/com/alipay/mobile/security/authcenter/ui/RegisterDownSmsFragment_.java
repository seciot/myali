package com.alipay.mobile.security.authcenter.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobileapp.biz.rpc.register.vo.SendSmsCodeRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class RegisterDownSmsFragment_ extends RegisterDownSmsFragment
{
  private View g;
  private Handler h = new Handler();

  private View a(int paramInt)
  {
    if (this.g == null)
      return null;
    return this.g.findViewById(paramInt);
  }

  public final void a(SendSmsCodeRes paramSendSmsCodeRes, String paramString)
  {
    this.h.post(new aj(this, paramSendSmsCodeRes, paramString));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new ak(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.g = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.g == null)
      this.g = paramLayoutInflater.inflate(R.layout.ak, paramViewGroup, false);
    return this.g;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.f = ((APButton)getBundle(R.id.dm));
    this.e = ((APCheckboxWithLinkText)getBundle(R.id.di));
    this.d = ((APInputBox)getBundle(R.id.dn));
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.RegisterDownSmsFragment_
 * JD-Core Version:    0.6.2
 */