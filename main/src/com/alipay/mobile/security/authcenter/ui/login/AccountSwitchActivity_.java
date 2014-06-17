package com.alipay.mobile.security.authcenter.ui.login;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.googlecode.androidannotations.api.SdkVersionHelper;

public final class AccountSwitchActivity_ extends AccountSwitchActivity
{
  private void a()
  {
    this.c = ((APButton)findViewById(R.id.fT));
    this.d = ((APButton)findViewById(R.id.W));
    this.a = ((APButton)findViewById(R.id.fS));
    this.b = ((APButton)findViewById(R.id.fR));
    if (!getIntent().getBooleanExtra("canSwitchMobile", true))
      this.a.setVisibility(8);
    this.d.setOnClickListener(this);
    this.a.setOnClickListener(this);
    this.b.setOnClickListener(this);
    this.c.setOnClickListener(this);
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.c);
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
    a();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    a();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.AccountSwitchActivity_
 * JD-Core Version:    0.6.2
 */