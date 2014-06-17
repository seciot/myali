package com.alipay.mobile.security.authcenter.ui;

import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobileapp.biz.rpc.register.vo.RegisterPcToMobileRes;
import com.googlecode.androidannotations.api.SdkVersionHelper;

public final class RegisterNewActivity_ extends RegisterNewActivity
{
  private Handler c = new Handler();

  public final void a(int paramInt)
  {
    this.c.post(new ax(this, paramInt));
  }

  public final void a(Fragment paramFragment)
  {
    this.c.post(new av(this, paramFragment));
  }

  public final void a(RegisterPcToMobileRes paramRegisterPcToMobileRes)
  {
    this.c.post(new aw(this, paramRegisterPcToMobileRes));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    super.setContentView(R.layout.al);
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
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.RegisterNewActivity_
 * JD-Core Version:    0.6.2
 */