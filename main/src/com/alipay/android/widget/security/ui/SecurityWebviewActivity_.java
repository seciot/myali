package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTitleBar;

public final class SecurityWebviewActivity_ extends SecurityWebviewActivity
{
  private void b()
  {
    this.b = ((APRelativeLayout)findViewById(R.id.dq));
    this.a = ((APTitleBar)findViewById(R.id.ge));
    a();
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.bb);
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
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityWebviewActivity_
 * JD-Core Version:    0.6.2
 */