package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobilesecurity.core.model.account.certify.CheckCertifyByMspRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SecurityCertifiedResultActivity_ extends SecurityCertifiedResultActivity
{
  private Handler j = new Handler();

  private void c()
  {
    this.d = ((APButton)findViewById(R.id.an));
    this.h = ((APTextView)findViewById(R.id.ey));
    this.i = ((APTextView)findViewById(R.id.ew));
    this.g = ((APTextView)findViewById(R.id.ev));
    this.e = ((APTableView)findViewById(R.id.av));
    this.f = ((APImageView)findViewById(R.id.ex));
    a();
  }

  public final void a(CheckCertifyByMspRes paramCheckCertifyByMspRes)
  {
    this.j.post(new SecurityCertifiedResultActivity_.1(this, paramCheckCertifyByMspRes));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new SecurityCertifiedResultActivity_.2(this, paramString));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new SecurityCertifiedResultActivity_.3(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aM);
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
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityCertifiedResultActivity_
 * JD-Core Version:    0.6.2
 */