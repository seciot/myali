package com.alipay.mobile.security.devicemanage.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.account.device.DeviceInfo;
import com.alipay.mobilesecurity.core.model.account.device.QueryAuthedDeviceRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.List;

public final class DeviceManageActivity_ extends DeviceManageActivity
{
  private Handler g = new Handler();

  private void d()
  {
    this.b = ((APListView)findViewById(R.id.eD));
    this.c = ((APFlowTipView)findViewById(R.id.aW));
    this.d = ((APRelativeLayout)findViewById(R.id.aR));
    a();
  }

  public final void a(MobileSecurityResult paramMobileSecurityResult, List<DeviceInfo> paramList)
  {
    this.g.post(new f(this, paramMobileSecurityResult, paramList));
  }

  public final void a(QueryAuthedDeviceRes paramQueryAuthedDeviceRes)
  {
    this.g.post(new e(this, paramQueryAuthedDeviceRes));
  }

  public final void a(String paramString, List<DeviceInfo> paramList)
  {
    BackgroundExecutor.execute(new h(this, paramString, paramList));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new g(this));
  }

  public final void c()
  {
    this.g.post(new d(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aF);
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
 * Qualified Name:     com.alipay.mobile.security.devicemanage.ui.DeviceManageActivity_
 * JD-Core Version:    0.6.2
 */