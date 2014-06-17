package com.alipay.mobile.security.accountmanager.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeHorizontalView;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APScrollView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class ModifyPayPwdActivity_ extends ModifyPayPwdActivity
{
  private Handler o = new Handler();

  private void d()
  {
    this.j = ((APCheckCodeHorizontalView)findViewById(R.id.fg));
    this.b = ((APInputBox)findViewById(R.id.fc));
    this.e = ((APCheckboxWithLinkText)findViewById(R.id.fa));
    this.g = ((APLinearLayout)findViewById(R.id.eY));
    this.a = ((APInputBox)findViewById(R.id.eZ));
    this.d = ((APButton)findViewById(R.id.ff));
    this.c = ((APButton)findViewById(R.id.fd));
    this.h = ((APLinearLayout)findViewById(R.id.fe));
    this.f = ((APScrollView)findViewById(R.id.fi));
    this.i = ((APTextView)findViewById(R.id.fh));
  }

  public final void a()
  {
    BackgroundExecutor.execute(new di(this));
  }

  public final void b()
  {
    this.o.post(new dg(this));
  }

  public final void c()
  {
    this.o.post(new dh(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aS);
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
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ModifyPayPwdActivity_
 * JD-Core Version:    0.6.2
 */