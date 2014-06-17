package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class MemberCardDetailActivity_ extends MemberCardDetailActivity
{
  private Handler d = new Handler();

  public final void a()
  {
    this.d.post(new eg(this));
  }

  public final void a(DeletePassResult paramDeletePassResult)
  {
    this.d.post(new ef(this, paramDeletePassResult));
  }

  public final void a(PassInfoResult paramPassInfoResult)
  {
    this.d.post(new ee(this, paramPassInfoResult));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new eh(this, paramString));
  }

  public final void a(boolean paramBoolean)
  {
    BackgroundExecutor.execute(new ei(this, paramBoolean));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new ej(this, paramString));
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
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.MemberCardDetailActivity_
 * JD-Core Version:    0.6.2
 */