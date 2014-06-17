package com.alipay.mobile.mobilerechargeapp.activity;

import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APButtonInputBox;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class MobileReChargePPBindMobileAcitvity_ extends MobileReChargePPBindMobileAcitvity
{
  private void b()
  {
    this.b = ((APButton)findViewById(R.id.C));
    this.a = ((APButtonInputBox)findViewById(R.id.E));
    a();
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new am(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.j);
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
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.MobileReChargePPBindMobileAcitvity_
 * JD-Core Version:    0.6.2
 */