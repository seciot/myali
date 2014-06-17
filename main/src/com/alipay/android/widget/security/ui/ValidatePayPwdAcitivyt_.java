package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class ValidatePayPwdAcitivyt_ extends ValidatePayPwdAcitivyt
{
  private Handler f = new Handler();

  private void d()
  {
    this.a = ((APInputBox)findViewById(R.id.cO));
    this.b = ((APButton)findViewById(R.id.cy));
    a();
  }

  public final void b()
  {
    BackgroundExecutor.execute(new ValidatePayPwdAcitivyt_.2(this));
  }

  public final void c()
  {
    this.f.post(new ValidatePayPwdAcitivyt_.1(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.bh);
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
 * Qualified Name:     com.alipay.android.widget.security.ui.ValidatePayPwdAcitivyt_
 * JD-Core Version:    0.6.2
 */