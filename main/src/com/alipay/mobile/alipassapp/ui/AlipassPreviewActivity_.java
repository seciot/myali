package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import com.googlecode.androidannotations.api.SdkVersionHelper;

public final class AlipassPreviewActivity_ extends AlipassPreviewActivity
{
  private Handler a = new Handler();

  public final void a()
  {
    this.a.post(new bj(this));
  }

  public final void a(int paramInt, String paramString)
  {
    this.a.post(new bl(this, paramInt, paramString));
  }

  public final void a(String paramString)
  {
    this.a.post(new bi(this, paramString));
  }

  public final void a(boolean paramBoolean)
  {
    this.a.post(new bk(this, paramBoolean));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new bm(this));
  }

  public final void c()
  {
    BackgroundExecutor.execute(new bp(this));
  }

  public final void d()
  {
    BackgroundExecutor.execute(new bo(this));
  }

  public final void e()
  {
    BackgroundExecutor.execute(new bn(this));
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
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassPreviewActivity_
 * JD-Core Version:    0.6.2
 */