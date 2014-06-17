package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.kabaoprod.biz.mwallet.pass.result.RemindDateResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.UpdateRemindDateResult;
import com.alipay.kabaoprod.core.model.model.RemindInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class AlipassRemindActivity_ extends AlipassRemindActivity
{
  private Handler a = new Handler();

  public final void a()
  {
    BackgroundExecutor.execute(new cw(this));
  }

  public final void a(RemindDateResult paramRemindDateResult)
  {
    this.a.post(new cu(this, paramRemindDateResult));
  }

  public final void a(UpdateRemindDateResult paramUpdateRemindDateResult)
  {
    this.a.post(new cv(this, paramUpdateRemindDateResult));
  }

  public final void a(RemindInfo paramRemindInfo)
  {
    BackgroundExecutor.execute(new cx(this, paramRemindInfo));
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
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassRemindActivity_
 * JD-Core Version:    0.6.2
 */