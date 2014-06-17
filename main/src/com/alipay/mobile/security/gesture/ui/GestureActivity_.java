package com.alipay.mobile.security.gesture.ui;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class GestureActivity_ extends GestureActivity
{
  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new j(this, paramString));
  }

  public final void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    BackgroundExecutor.execute(new k(this, paramString, paramBoolean1, paramBoolean2));
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
 * Qualified Name:     com.alipay.mobile.security.gesture.ui.GestureActivity_
 * JD-Core Version:    0.6.2
 */