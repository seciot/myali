package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobilesecurity.core.model.mainpage.operations.OperationsLogRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SecurityOperateRecordsActivity_ extends SecurityOperateRecordsActivity
{
  private Handler b = new Handler();

  public final void a(OperationsLogRes paramOperationsLogRes)
  {
    this.b.post(new SecurityOperateRecordsActivity_.1(this, paramOperationsLogRes));
  }

  public final void c()
  {
    BackgroundExecutor.execute(new SecurityOperateRecordsActivity_.5(this));
  }

  public final void d()
  {
    this.b.post(new SecurityOperateRecordsActivity_.2(this));
  }

  public final void e()
  {
    BackgroundExecutor.execute(new SecurityOperateRecordsActivity_.6(this));
  }

  public final void f()
  {
    this.b.post(new SecurityOperateRecordsActivity_.3(this));
  }

  public final void g()
  {
    this.b.post(new SecurityOperateRecordsActivity_.4(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityOperateRecordsActivity_
 * JD-Core Version:    0.6.2
 */