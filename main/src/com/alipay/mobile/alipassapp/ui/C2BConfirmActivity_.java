package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APTextView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class C2BConfirmActivity_ extends C2BConfirmActivity
{
  private Handler m = new Handler();

  private void f()
  {
    this.k = ((APTextView)findViewById(R.id.originalAmountView));
    this.i = ((APTextView)findViewById(R.id.tradeAmountView));
    this.h = ((APTextView)findViewById(R.id.tradeOppositeView));
    this.l = ((APButton)findViewById(R.id.C2BConfirmPay));
    this.j = ((APTextView)findViewById(R.id.originalAmountMessage));
    this.g = ((APTextView)findViewById(R.id.tradeNameView));
    d();
  }

  public final void a()
  {
    this.m.post(new dh(this));
  }

  public final void a(String paramString)
  {
    this.m.post(new df(this, paramString));
  }

  public final void a(String paramString1, String paramString2)
  {
    this.m.post(new dj(this, paramString1, paramString2));
  }

  public final void a(String paramString, boolean paramBoolean)
  {
    this.m.post(new dg(this, paramString, paramBoolean));
  }

  public final void b()
  {
    this.m.post(new di(this));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new dl(this, paramString));
  }

  public final void c()
  {
    BackgroundExecutor.execute(new dm(this));
  }

  public final void e()
  {
    BackgroundExecutor.execute(new dk(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.alipass_payment_c2b_confirminfor);
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
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.C2BConfirmActivity_
 * JD-Core Version:    0.6.2
 */