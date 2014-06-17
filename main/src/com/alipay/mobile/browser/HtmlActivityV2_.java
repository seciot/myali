package com.alipay.mobile.browser;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class HtmlActivityV2_ extends HtmlActivityV2
{
  private Handler a = new Handler();

  public static HtmlActivityV2_.IntentBuilder_ intent(Context paramContext)
  {
    return new HtmlActivityV2_.IntentBuilder_(paramContext);
  }

  public final void doLoginAndLoadUrl()
  {
    BackgroundExecutor.execute(new HtmlActivityV2_.3(this));
  }

  public final void finishActivity()
  {
    this.a.post(new HtmlActivityV2_.1(this));
  }

  public final void loadUrl()
  {
    this.a.post(new HtmlActivityV2_.2(this));
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
 * Qualified Name:     com.alipay.mobile.browser.HtmlActivityV2_
 * JD-Core Version:    0.6.2
 */