package com.alipay.mobile.onsitepay.payer.confirm;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.alipay.livetradeprod.core.model.rpc.SoundWavePayRes;
import com.alipay.mobile.common.misc.CircularImageView;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.onsitepay.d;
import com.alipay.mobile.onsitepay.e;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class C2CConfirmActivity_ extends C2CConfirmActivity
{
  private Handler H = new Handler();

  private void f()
  {
    this.k = ((APInputBox)findViewById(d.ao));
    this.r = ((APButton)findViewById(d.A));
    this.i = ((APTextView)findViewById(d.b));
    this.B = ((RelativeLayout)findViewById(d.W));
    this.z = ((LinearLayout)findViewById(d.M));
    this.F = ((APTitleBar)findViewById(d.aD));
    this.l = ((APButton)findViewById(d.u));
    this.w = ((APButton)findViewById(d.D));
    this.v = ((APButton)findViewById(d.t));
    this.y = ((LinearLayout)findViewById(d.L));
    this.D = ((LinearLayout)findViewById(d.n));
    this.u = ((APButton)findViewById(d.E));
    this.p = ((APButton)findViewById(d.y));
    this.s = ((APButton)findViewById(d.B));
    this.t = ((APButton)findViewById(d.C));
    this.o = ((APButton)findViewById(d.x));
    this.q = ((APButton)findViewById(d.z));
    this.C = ((LinearLayout)findViewById(d.I));
    this.m = ((APButton)findViewById(d.v));
    this.g = ((APButton)findViewById(d.q));
    this.E = ((APTextView)findViewById(d.Z));
    this.A = ((LinearLayout)findViewById(d.V));
    this.j = ((CircularImageView)findViewById(d.H));
    this.n = ((APButton)findViewById(d.w));
    this.x = ((LinearLayout)findViewById(d.K));
    this.h = ((APTextView)findViewById(d.aq));
    e();
  }

  public final void a(Bitmap paramBitmap)
  {
    this.H.post(new p(this, paramBitmap));
  }

  public final void a(SoundWavePayRes paramSoundWavePayRes)
  {
    this.H.post(new q(this, paramSoundWavePayRes));
  }

  public final void a(String paramString)
  {
    this.H.post(new s(this, paramString));
  }

  public final void a(String paramString1, String paramString2)
  {
    this.H.post(new t(this, paramString1, paramString2));
  }

  public final void a(String paramString1, boolean paramBoolean, String paramString2)
  {
    this.H.post(new u(this, paramString1, paramBoolean, paramString2));
  }

  public final void b(String paramString)
  {
    this.H.post(new r(this, paramString));
  }

  public final void c(String paramString)
  {
    BackgroundExecutor.execute(new v(this, paramString));
  }

  public final void d()
  {
    BackgroundExecutor.execute(new w(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(e.i);
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
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.confirm.C2CConfirmActivity_
 * JD-Core Version:    0.6.2
 */