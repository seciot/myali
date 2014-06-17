package com.alipay.mobile.security.accountmanager.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.List;

public final class AccountManagerActivity_ extends AccountManagerActivity
{
  private Handler k = new Handler();

  private void d()
  {
    this.b = ((APListView)findViewById(R.id.fu));
  }

  public final void a(int paramInt, Object paramObject)
  {
    this.k.post(new k(this, paramInt, paramObject));
  }

  public final void a(UserInfo paramUserInfo)
  {
    BackgroundExecutor.execute(new n(this, paramUserInfo));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new p(this, paramString));
  }

  public final void a(String paramString1, String paramString2)
  {
    BackgroundExecutor.execute(new m(this, paramString1, paramString2));
  }

  public final void a(List<UserInfo> paramList)
  {
    this.k.post(new l(this, paramList));
  }

  public final void b()
  {
    this.k.post(new h(this));
  }

  public final void b(UserInfo paramUserInfo)
  {
    BackgroundExecutor.execute(new i(this, paramUserInfo));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new j(this, paramString));
  }

  public final void c()
  {
    BackgroundExecutor.execute(new o(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aZ);
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
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.AccountManagerActivity_
 * JD-Core Version:    0.6.2
 */