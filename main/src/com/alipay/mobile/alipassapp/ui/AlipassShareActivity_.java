package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class AlipassShareActivity_ extends AlipassShareActivity
{
  private Handler b = new Handler();

  public final void a()
  {
    this.b.post(new db(this));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new dd(this, paramString));
  }

  public final void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.b.post(new dc(this, paramString1, paramString2, paramString3, paramString4));
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
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassShareActivity_
 * JD-Core Version:    0.6.2
 */