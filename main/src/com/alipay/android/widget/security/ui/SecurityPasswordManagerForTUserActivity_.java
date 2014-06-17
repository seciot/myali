package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SecurityPasswordManagerForTUserActivity_ extends SecurityPasswordManagerForTUserActivity
{
  private Handler q = new Handler();

  private void d()
  {
    this.c = ((APTableView)findViewById(R.id.ck));
    this.d = ((TextView)findViewById(R.id.cM));
    this.b = ((APTableView)findViewById(R.id.dr));
    this.a = ((APRadioTableView)findViewById(R.id.bm));
    this.e = ((ImageView)findViewById(R.id.ds));
    b();
  }

  public final void a()
  {
    BackgroundExecutor.execute(new SecurityPasswordManagerForTUserActivity_.6(this));
  }

  public final void a(UserInfo paramUserInfo)
  {
    this.q.post(new SecurityPasswordManagerForTUserActivity_.2(this, paramUserInfo));
  }

  public final void a(MobileSecurityResult paramMobileSecurityResult, boolean paramBoolean)
  {
    this.q.post(new SecurityPasswordManagerForTUserActivity_.3(this, paramMobileSecurityResult, paramBoolean));
  }

  public final void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    BackgroundExecutor.execute(new SecurityPasswordManagerForTUserActivity_.5(this, paramString1, paramString2, paramBoolean));
  }

  public final void a(boolean paramBoolean)
  {
    this.q.post(new SecurityPasswordManagerForTUserActivity_.4(this, paramBoolean));
  }

  public final void c()
  {
    this.q.post(new SecurityPasswordManagerForTUserActivity_.1(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aR);
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
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityPasswordManagerForTUserActivity_
 * JD-Core Version:    0.6.2
 */