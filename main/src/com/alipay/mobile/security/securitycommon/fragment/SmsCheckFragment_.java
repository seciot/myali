package com.alipay.mobile.security.securitycommon.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.service.ext.security.SmsCheckResultCallBack;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SmsCheckFragment_ extends SmsCheckFragment
{
  private View g;
  private Handler h = new Handler();

  private View a(int paramInt)
  {
    if (this.g == null)
      return null;
    return this.g.findViewById(paramInt);
  }

  public final void OnAutoReadSms(String paramString)
  {
    this.h.post(new SmsCheckFragment_.1(this, paramString));
  }

  public final void a(Object paramObject, int paramInt)
  {
    this.h.post(new SmsCheckFragment_.3(this, paramObject, paramInt));
  }

  public final void a(String paramString, SmsCheckResultCallBack paramSmsCheckResultCallBack)
  {
    BackgroundExecutor.execute(new SmsCheckFragment_.5(this, paramString, paramSmsCheckResultCallBack));
  }

  public final void b(boolean paramBoolean)
  {
    this.h.post(new SmsCheckFragment_.2(this, paramBoolean));
  }

  public final void c()
  {
    BackgroundExecutor.execute(new SmsCheckFragment_.4(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.g = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    return this.g;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b = ((APTextView)a(R.id.dl));
    this.e = ((APButton)a(R.id.dp));
    b();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.SmsCheckFragment_
 * JD-Core Version:    0.6.2
 */