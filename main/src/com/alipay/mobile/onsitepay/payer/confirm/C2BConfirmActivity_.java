package com.alipay.mobile.onsitepay.payer.confirm;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.livetradeprod.core.model.rpc.SoundWavePayRes;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class C2BConfirmActivity_ extends C2BConfirmActivity
{
  private Handler n = new Handler();

  private void g()
  {
    this.i = ((APTextView)findViewById(com.alipay.mobile.onsitepay.d.aE));
    this.k = ((APTextView)findViewById(com.alipay.mobile.onsitepay.d.Y));
    this.g = ((APTextView)findViewById(com.alipay.mobile.onsitepay.d.aF));
    this.l = ((APButton)findViewById(com.alipay.mobile.onsitepay.d.a));
    this.j = ((APTextView)findViewById(com.alipay.mobile.onsitepay.d.X));
    this.m = ((APTitleBar)findViewById(com.alipay.mobile.onsitepay.d.aD));
    this.h = ((APTextView)findViewById(com.alipay.mobile.onsitepay.d.aG));
    e();
  }

  public final void a(SoundWavePayRes paramSoundWavePayRes)
  {
    this.n.post(new d(this, paramSoundWavePayRes));
  }

  public final void a(String paramString)
  {
    this.n.post(new b(this, paramString));
  }

  public final void a(String paramString1, String paramString2)
  {
    this.n.post(new e(this, paramString1, paramString2));
  }

  public final void a(String paramString1, boolean paramBoolean, String paramString2)
  {
    this.n.post(new c(this, paramString1, paramBoolean, paramString2));
  }

  public final void b(String paramString)
  {
    this.n.post(new f(this, paramString));
  }

  public final void c(String paramString)
  {
    BackgroundExecutor.execute(new h(this, paramString));
  }

  public final void d()
  {
    BackgroundExecutor.execute(new i(this));
  }

  public final void f()
  {
    BackgroundExecutor.execute(new g(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(com.alipay.mobile.onsitepay.e.h);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    g();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    g();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    g();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.confirm.C2BConfirmActivity_
 * JD-Core Version:    0.6.2
 */