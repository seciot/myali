package com.alipay.mobile.mobilerechargeapp.activity;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class MobileRechargeCashierActivity_ extends MobileRechargeCashierActivity
{
  private Handler e = new Handler();

  private void b()
  {
    this.a = ((APRadioTableView)findViewById(R.id.J));
    this.b = ((APTextView)findViewById(R.id.I));
    this.c = ((APTableView)findViewById(R.id.f));
    this.d = ((APTitleBar)findViewById(R.id.B));
    a();
  }

  public final void a(AlertSignRes paramAlertSignRes, int paramInt)
  {
    this.e.post(new cf(this, paramAlertSignRes, paramInt));
  }

  public final void a(String paramString, int paramInt)
  {
    BackgroundExecutor.execute(new ch(this, paramString, paramInt));
  }

  public final void a(boolean paramBoolean)
  {
    this.e.post(new cg(this, paramBoolean));
  }

  public final void b(AlertSignRes paramAlertSignRes, int paramInt)
  {
    this.e.post(new ce(this, paramAlertSignRes, paramInt));
  }

  public final void b(String paramString, int paramInt)
  {
    BackgroundExecutor.execute(new ci(this, paramString, paramInt));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.k);
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
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.MobileRechargeCashierActivity_
 * JD-Core Version:    0.6.2
 */