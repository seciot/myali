package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APToggleButton;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.NFCService;

public final class NFCSettingActivity_ extends NFCSettingActivity
{
  private void b()
  {
    this.a = ((APRadioTableView)findViewById(R.id.cz));
    this.b = ((NFCService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(NFCService.class.getName()));
    APToggleButton localAPToggleButton = this.a.getmToggleButton();
    a();
    this.a.getmToggleButton().setOnClickListener(new NFCSettingActivity.1(this, localAPToggleButton));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.ad);
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
 * Qualified Name:     com.alipay.android.widget.security.ui.NFCSettingActivity_
 * JD-Core Version:    0.6.2
 */