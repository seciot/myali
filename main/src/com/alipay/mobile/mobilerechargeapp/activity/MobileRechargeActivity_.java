package com.alipay.mobile.mobilerechargeapp.activity;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APSpinner;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.alipay.mobile.mobilerechargeapp.adapter.EcardVOWrapper;
import com.alipay.mobile.mobilerechargeapp.data.ItemData;
import com.alipay.mobile.mobilerechargeapp.view.APButtonInputBoxAutoC;
import com.alipay.mobileprod.biz.recharge.dto.AlertSwitchRes;
import com.alipay.mobileprod.biz.recharge.dto.CreateOrderRes;
import com.alipay.mobileprod.biz.recharge.dto.QueryEcardRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class MobileRechargeActivity_ extends MobileRechargeActivity
{
  private Handler l = new Handler();

  private void d()
  {
    this.c = ((APButtonInputBoxAutoC)findViewById(R.id.E));
    this.b = ((APRelativeLayout)findViewById(R.id.A));
    this.a = ((APTitleBar)findViewById(R.id.B));
    this.f = ((APButton)findViewById(R.id.Bundleable));
    this.k = ((APListView)findViewById(R.id.m));
    this.d = ((APTextView)findViewById(R.id.y));
    this.i = ((APButton)findViewById(R.id.z));
    this.e = ((APSpinner)findViewById(R.id.G));
    this.g = ((APButton)findViewById(R.id.ZLog));
    this.j = ((APButton)findViewById(R.id.AppBundle));
    this.h = ((APTextView)findViewById(R.id.HostClassLoader));
    a();
  }

  public final void a(int paramInt)
  {
    this.l.post(new bs(this, paramInt));
  }

  public final void a(int paramInt, ItemData paramItemData)
  {
    this.l.post(new bo(this, paramInt, paramItemData));
  }

  public final void a(AlertSwitchRes paramAlertSwitchRes)
  {
    this.l.post(new bq(this, paramAlertSwitchRes));
  }

  public final void a(CreateOrderRes paramCreateOrderRes)
  {
    this.l.post(new bn(this, paramCreateOrderRes));
  }

  public final void a(QueryEcardRes paramQueryEcardRes)
  {
    this.l.post(new bp(this, paramQueryEcardRes));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new bt(this, paramString));
  }

  public final void a(String paramString, int paramInt)
  {
    this.l.post(new br(this, paramString, paramInt));
  }

  public final void a(String paramString, EcardVOWrapper paramEcardVOWrapper)
  {
    BackgroundExecutor.execute(new bl(this, paramString, paramEcardVOWrapper));
  }

  public final void b()
  {
    this.l.post(new bk(this));
  }

  public final void c()
  {
    BackgroundExecutor.execute(new bm(this));
  }

  public final void c(String paramString)
  {
    BackgroundExecutor.execute(new bu(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.i);
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
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.MobileRechargeActivity_
 * JD-Core Version:    0.6.2
 */