package com.alipay.mobile.withdraw.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.android.phone.wealth.withdraw.R.id;
import com.alipay.android.phone.wealth.withdraw.R.layout;
import com.alipay.kabaoprod.biz.financial.withdraw.result.PreWithdrawResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import com.googlecode.androidannotations.api.SdkVersionHelper;

public final class WithdrawActivity_ extends WithdrawActivity
{
  private Handler b = new Handler();

  private void g()
  {
    this.a = ((APTitleBar)findViewById(R.id.n));
    a();
  }

  public final void a(PreWithdrawResult paramPreWithdrawResult)
  {
    this.b.post(new v(this, paramPreWithdrawResult));
  }

  public final void a(KabaoCommonResult paramKabaoCommonResult)
  {
    this.b.post(new t(this, paramKabaoCommonResult));
  }

  public final void a(String paramString1, String paramString2)
  {
    BackgroundExecutor.execute(new w(this, paramString1, paramString2));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new x(this));
  }

  public final void b(PreWithdrawResult paramPreWithdrawResult)
  {
    this.b.post(new r(this, paramPreWithdrawResult));
  }

  public final void b(KabaoCommonResult paramKabaoCommonResult)
  {
    this.b.post(new s(this, paramKabaoCommonResult));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new y(this, paramString));
  }

  public final void c()
  {
    this.b.post(new u(this));
  }

  public final void c(String paramString)
  {
    this.b.post(new q(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.e);
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
 * Qualified Name:     com.alipay.mobile.withdraw.ui.WithdrawActivity_
 * JD-Core Version:    0.6.2
 */