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
import com.alipay.mobile.commonui.widget.APTextView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class ModifyLoginPwdActivity_ extends ModifyLoginPwdActivity
{
  private Handler n = new Handler();

  private void d()
  {
    this.f = ((APLinearLayout)findViewById(R.id.eM));
    this.c = ((APButton)findViewById(R.id.eQ));
    this.e = ((APCheckboxWithLinkText)findViewById(R.id.eO));
    this.a = ((APInputBox)findViewById(R.id.eN));
    this.h = ((APTextView)findViewById(R.id.eU));
    this.b = ((APInputBox)findViewById(R.id.eP));
    this.i = ((APCheckCodeHorizontalView)findViewById(R.id.eS));
    this.g = ((APLinearLayout)findViewById(R.id.eR));
    this.d = ((APButton)findViewById(R.id.eT));
  }

  public final void a()
  {
    BackgroundExecutor.execute(new cs(this));
  }

  public final void b()
  {
    this.n.post(new cq(this));
  }

  public final void c()
  {
    this.n.post(new cr(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aK);
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
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.ModifyLoginPwdActivity_
 * JD-Core Version:    0.6.2
 */