package com.alipay.mobile.withdraw.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class WithdrawSmsCheckActivity_ extends WithdrawSmsCheckActivity
{
  private Handler b = new Handler();

  public final void a()
  {
    BackgroundExecutor.execute(new am(this));
  }

  public final void a(KabaoCommonResult paramKabaoCommonResult)
  {
    this.b.post(new ae(this, paramKabaoCommonResult));
  }

  public final void a(String paramString)
  {
    this.b.post(new ai(this, paramString));
  }

  public final void b()
  {
    this.b.post(new ah(this));
  }

  public final void b(KabaoCommonResult paramKabaoCommonResult)
  {
    this.b.post(new ak(this, paramKabaoCommonResult));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new al(this, paramString));
  }

  public final void c()
  {
    this.b.post(new af(this));
  }

  public final void c(KabaoCommonResult paramKabaoCommonResult)
  {
    this.b.post(new aj(this, paramKabaoCommonResult));
  }

  public final void d(KabaoCommonResult paramKabaoCommonResult)
  {
    this.b.post(new ag(this, paramKabaoCommonResult));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
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
 * Qualified Name:     com.alipay.mobile.withdraw.ui.WithdrawSmsCheckActivity_
 * JD-Core Version:    0.6.2
 */