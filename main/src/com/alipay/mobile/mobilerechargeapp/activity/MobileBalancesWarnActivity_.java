package com.alipay.mobile.mobilerechargeapp.activity;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.mobilerechargeapp.R.id;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignQueryRes;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class MobileBalancesWarnActivity_ extends MobileBalancesWarnActivity
{
  private Handler c = new Handler();

  private void c()
  {
    this.a = ((APListView)findViewById(R.id.D));
    a();
  }

  public final void a(int paramInt1, int paramInt2)
  {
    this.c.post(new ag(this, paramInt1, paramInt2));
  }

  public final void a(AlertSignQueryRes paramAlertSignQueryRes, boolean paramBoolean)
  {
    this.c.post(new ai(this, paramAlertSignQueryRes, paramBoolean));
  }

  public final void a(AlertSignRes paramAlertSignRes, int paramInt1, int paramInt2)
  {
    this.c.post(new af(this, paramAlertSignRes, paramInt1, paramInt2));
  }

  public final void a(String paramString, int paramInt1, int paramInt2)
  {
    BackgroundExecutor.execute(new aj(this, paramString, paramInt1, paramInt2));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new al(this));
  }

  public final void b(AlertSignRes paramAlertSignRes, int paramInt1, int paramInt2)
  {
    this.c.post(new ah(this, paramAlertSignRes, paramInt1, paramInt2));
  }

  public final void b(String paramString, int paramInt1, int paramInt2)
  {
    BackgroundExecutor.execute(new ak(this, paramString, paramInt1, paramInt2));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.g);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    c();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    c();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    c();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.MobileBalancesWarnActivity_
 * JD-Core Version:    0.6.2
 */