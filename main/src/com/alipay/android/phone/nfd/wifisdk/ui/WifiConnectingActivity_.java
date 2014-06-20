package com.alipay.android.phone.nfd.wifisdk.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.alipay.android.phone.nfd.wifisdk.R.anim;
import com.alipay.android.phone.nfd.wifisdk.R.id;
import com.alipay.android.phone.nfd.wifisdk.R.layout;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import com.googlecode.androidannotations.api.SdkVersionHelper;

public final class WifiConnectingActivity_ extends WifiConnectingActivity
{
  private Handler r = new Handler();

  private void i()
  {
    this.g = ((ImageView)findViewById(R.id.e));
    this.h = ((ImageView)findViewById(R.id.f));
    this.f = ((TextView)findViewById(R.id.BundlesManagerImpl));
    this.c = ((ViewGroup)findViewById(R.id.AppBundle));
    this.k = ((LinearLayout)findViewById(R.id.g));
    this.j = ((TextView)findViewById(R.id.i));
    this.i = ((TextView)findViewById(R.id.h));
    this.d = ((ViewGroup)findViewById(R.id.BundlesManager));
    this.e = ((Button)findViewById(R.id.d));
    b();
  }

  public final void c()
  {
    BackgroundExecutor.execute(new l(this));
  }

  public final void d()
  {
    this.r.post(new k(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    this.q = AnimationUtils.loadAnimation(this, R.anim.f);
    this.p = AnimationUtils.loadAnimation(this, R.anim.e);
    this.m = AnimationUtils.loadAnimation(this, R.anim.BundlesManagerImpl);
    this.o = AnimationUtils.loadAnimation(this, R.anim.d);
    this.n = AnimationUtils.loadAnimation(this, R.anim.BundlesManager);
    this.l = AnimationUtils.loadAnimation(this, R.anim.AppBundle);
    a();
    super.onCreate(paramBundle);
    setContentView(R.layout.AppBundle);
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((SdkVersionHelper.getSdkInt() < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
      onBackPressed();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    i();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    i();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    i();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.nfd.wifisdk.ui.WifiConnectingActivity_
 * JD-Core Version:    0.6.2
 */