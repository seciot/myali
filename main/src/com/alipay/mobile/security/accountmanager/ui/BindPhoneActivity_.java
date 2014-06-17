package com.alipay.mobile.security.accountmanager.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class BindPhoneActivity_ extends BindPhoneActivity
{
  private Handler x = new Handler();

  private void d()
  {
    this.l = ((APCheckCodeHorizontalView)findViewById(R.id.dv));
    this.h = ((APButton)findViewById(R.id.dz));
    this.e = ((APLinearLayout)findViewById(R.id.dx));
    this.m = ((APInputBox)findViewById(R.id.dC));
    this.d = ((APLinearLayout)findViewById(R.id.dI));
    this.i = ((APInputBox)findViewById(R.id.dB));
    this.q = ((APButton)findViewById(R.id.dy));
    this.o = ((APButton)findViewById(R.id.dJ));
    this.k = ((TextView)findViewById(R.id.dH));
    this.r = ((APTextView)findViewById(R.id.er));
    this.f = ((APTextView)findViewById(R.id.dK));
    this.p = ((APTextView)findViewById(R.id.bd));
    this.b = ((APLinearLayout)findViewById(R.id.dF));
    this.g = ((APInputBox)findViewById(R.id.dD));
    this.n = ((APButton)findViewById(R.id.dw));
    this.c = ((APLinearLayout)findViewById(R.id.dG));
    this.a = ((APLinearLayout)findViewById(R.id.dE));
    this.j = ((APButton)findViewById(R.id.dA));
  }

  public final void a()
  {
    BackgroundExecutor.execute(new ai(this));
  }

  public final void a(String paramString)
  {
    this.x.post(new ag(this, paramString));
  }

  public final void b()
  {
    this.x.post(new ah(this));
  }

  public final void c()
  {
    this.x.post(new af(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.au);
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
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.BindPhoneActivity_
 * JD-Core Version:    0.6.2
 */