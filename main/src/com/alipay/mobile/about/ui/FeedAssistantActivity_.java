package com.alipay.mobile.about.ui;

import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.HorizontalScrollView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import com.googlecode.androidannotations.api.SdkVersionHelper;

public final class FeedAssistantActivity_ extends FeedAssistantActivity
{
  private void f()
  {
    this.e = ((APEditText)findViewById(R.id.HostClassLoader));
    this.f = ((APInputBox)findViewById(R.id.DefaultThreadFactory));
    this.d = ((APTextView)findViewById(R.id.aV));
    this.g = ((APTitleBar)findViewById(R.id.ge));
    this.c = ((APLinearLayout)findViewById(R.id.fx));
    this.b = ((HorizontalScrollView)findViewById(R.id.fy));
    a();
  }

  public final void c()
  {
    BackgroundExecutor.execute(new z(this));
  }

  public final void d()
  {
    BackgroundExecutor.execute(new aa(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.W);
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
    f();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    f();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    f();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.FeedAssistantActivity_
 * JD-Core Version:    0.6.2
 */