package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import com.googlecode.androidannotations.api.SdkVersionHelper;

public final class AlipassDetailActivity_ extends AlipassDetailActivity
{
  private Handler a = new Handler();

  public final void a()
  {
    this.a.post(new l(this));
  }

  public final void a(DeletePassResult paramDeletePassResult)
  {
    this.a.post(new j(this, paramDeletePassResult));
  }

  public final void a(PassInfoResult paramPassInfoResult)
  {
    this.a.post(new k(this, paramPassInfoResult));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new r(this, paramString));
  }

  public final void a(boolean paramBoolean)
  {
    BackgroundExecutor.execute(new m(this, paramBoolean));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new q(this));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new p(this, paramString));
  }

  public final void c()
  {
    BackgroundExecutor.execute(new o(this));
  }

  public final void d()
  {
    BackgroundExecutor.execute(new n(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
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
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassDetailActivity_
 * JD-Core Version:    0.6.2
 */