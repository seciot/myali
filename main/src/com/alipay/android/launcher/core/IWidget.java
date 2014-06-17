package com.alipay.android.launcher.core;

import android.app.Activity;
import android.view.View;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public abstract interface IWidget
{
  public abstract View getView();

  public abstract void onRefresh();

  public abstract void setActivityApplication(ActivityApplication paramActivityApplication);

  public abstract void setContext(Activity paramActivity);

  public abstract void setContext(MicroApplicationContext paramMicroApplicationContext);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.core.IWidget
 * JD-Core Version:    0.6.2
 */