package com.alipay.mobile.security.authcenter.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.layout;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import com.googlecode.androidannotations.api.SdkVersionHelper;

public final class CompletePhoneUserInfoActivity_ extends CompletePhoneUserInfoActivity
{
  private Handler b = new Handler();

  public final void a()
  {
    BackgroundExecutor.execute(new i(this));
  }

  public final void a(CompletePhoneUserInfoActivity.FragId paramFragId)
  {
    this.b.post(new h(this, paramFragId));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    super.setContentView(R.layout.aB);
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
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.CompletePhoneUserInfoActivity_
 * JD-Core Version:    0.6.2
 */