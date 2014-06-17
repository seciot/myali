package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SecurityDribbletActivity_ extends SecurityDribbletActivity
{
  private Handler o = new Handler();

  private void f()
  {
    this.b = ((APTextView)findViewById(R.id.dM));
    this.a = ((APRadioTableView)findViewById(R.id.dL));
    a();
  }

  public final void a(Boolean paramBoolean)
  {
    this.o.post(new SecurityDribbletActivity_.2(this, paramBoolean));
  }

  public final void a(String paramString)
  {
    this.o.post(new SecurityDribbletActivity_.1(this, paramString));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new SecurityDribbletActivity_.7(this));
  }

  public final void c()
  {
    this.o.post(new SecurityDribbletActivity_.3(this));
  }

  public final void d()
  {
    this.o.post(new SecurityDribbletActivity_.4(this));
  }

  public final void e()
  {
    BackgroundExecutor.execute(new SecurityDribbletActivity_.6(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aH);
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
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity_
 * JD-Core Version:    0.6.2
 */