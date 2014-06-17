package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobilesecurity.core.model.mainpage.quickhelp.QuickHelpResp;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class ReportLossActivity_ extends ReportLossActivity
{
  private Handler g = new Handler();

  private void c()
  {
    this.a = ((APTextView)findViewById(R.id.dO));
    this.f = ((APLinearLayout)findViewById(R.id.bf));
    this.b = ((APTextView)findViewById(R.id.dP));
    this.c = ((APTableView)findViewById(R.id.dd));
    this.d = ((APTableView)findViewById(R.id.cN));
    this.e = ((APLinearLayout)findViewById(R.id.gh));
    a();
  }

  public final void a(QuickHelpResp paramQuickHelpResp)
  {
    this.g.post(new ReportLossActivity_.1(this, paramQuickHelpResp));
  }

  public final void b()
  {
    BackgroundExecutor.execute(new ReportLossActivity_.2(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.am);
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
 * Qualified Name:     com.alipay.android.widget.security.ui.ReportLossActivity_
 * JD-Core Version:    0.6.2
 */