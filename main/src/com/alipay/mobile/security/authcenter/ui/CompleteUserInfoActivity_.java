package com.alipay.mobile.security.authcenter.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class CompleteUserInfoActivity_ extends CompleteUserInfoActivity
{
  private Handler g = new Handler();

  private void d()
  {
    this.d = ((APInputBox)findViewById(R.id.eX));
    this.f = ((APButton)findViewById(R.id.aJ));
    this.e = ((APCheckboxWithLinkText)findViewById(R.id.ft));
    this.b = ((APTextView)findViewById(R.id.dQ));
    this.a = ((APTextView)findViewById(R.id.eB));
    this.c = ((APInputBox)findViewById(R.id.fv));
    a();
  }

  public final void a(String paramString1, String paramString2)
  {
    this.g.post(new o(this, paramString1, paramString2));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new p(this));
  }

  public final void c()
  {
    this.g.post(new n(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aC);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    d();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    d();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    d();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.CompleteUserInfoActivity_
 * JD-Core Version:    0.6.2
 */