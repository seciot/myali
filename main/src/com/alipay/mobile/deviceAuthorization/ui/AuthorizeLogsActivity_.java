package com.alipay.mobile.deviceAuthorization.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobilesecurity.core.model.approve.QueryApproveRecordRes;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class AuthorizeLogsActivity_ extends AuthorizeLogsActivity
{
  private Handler b = new Handler();

  public final void a()
  {
    BackgroundExecutor.execute(new j(this));
  }

  public final void a(QueryApproveRecordRes paramQueryApproveRecordRes)
  {
    this.b.post(new i(this, paramQueryApproveRecordRes));
  }

  public final void b(QueryApproveRecordRes paramQueryApproveRecordRes)
  {
    this.b.post(new h(this, paramQueryApproveRecordRes));
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
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.AuthorizeLogsActivity_
 * JD-Core Version:    0.6.2
 */