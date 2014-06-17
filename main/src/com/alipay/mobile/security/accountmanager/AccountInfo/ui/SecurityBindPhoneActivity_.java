package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTitleBar;

public final class SecurityBindPhoneActivity_ extends SecurityBindPhoneActivity
{
  private void b()
  {
    this.b = ((APTableView)findViewById(R.id.S));
    this.c = ((APTableView)findViewById(R.id.aA));
    this.a = ((APTitleBar)findViewById(R.id.s));
    a();
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.a);
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
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.SecurityBindPhoneActivity_
 * JD-Core Version:    0.6.2
 */