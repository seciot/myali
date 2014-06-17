package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobilesecurity.core.model.mainpage.password.VerifyAuthCodeResp;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SmsCheckActivity_ extends SmsCheckActivity
{
  private Handler f = new Handler();

  private void c()
  {
    this.c = ((APCheckCodeHorizontalView)findViewById(R.id.dj));
    this.d = ((APButton)findViewById(R.id.dp));
    this.e = ((APTitleBar)findViewById(R.id.I));
    this.b = ((APTextView)findViewById(R.id.dl));
    a();
  }

  public final void OnAutoReadSms(String paramString)
  {
    this.f.post(new SmsCheckActivity_.2(this, paramString));
  }

  public final void a(VerifyAuthCodeResp paramVerifyAuthCodeResp)
  {
    this.f.post(new SmsCheckActivity_.1(this, paramVerifyAuthCodeResp));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new SmsCheckActivity_.3(this, paramString));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new SmsCheckActivity_.4(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aj);
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
 * Qualified Name:     com.alipay.android.widget.security.ui.SmsCheckActivity_
 * JD-Core Version:    0.6.2
 */