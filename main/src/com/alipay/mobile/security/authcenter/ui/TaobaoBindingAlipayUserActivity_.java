package com.alipay.mobile.security.authcenter.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobileapp.common.service.facade.taobao.binding.model.BindingLoginIdRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class TaobaoBindingAlipayUserActivity_ extends TaobaoBindingAlipayUserActivity
{
  private Handler i = new Handler();

  private void b()
  {
    this.f = ((APButton)findViewById(R.id.K));
    this.a = ((APInputBox)findViewById(R.id.T));
    this.e = ((APButton)findViewById(R.id.J));
    this.b = ((APInputBox)findViewById(R.id.U));
    a();
  }

  public final void a(String paramString1, String paramString2)
  {
    BackgroundExecutor.execute(new bf(this, paramString1, paramString2));
  }

  public final void a(String paramString1, String paramString2, BindingLoginIdRes paramBindingLoginIdRes)
  {
    this.i.post(new be(this, paramString1, paramString2, paramBindingLoginIdRes));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aw);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    b();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    b();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    b();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.TaobaoBindingAlipayUserActivity_
 * JD-Core Version:    0.6.2
 */