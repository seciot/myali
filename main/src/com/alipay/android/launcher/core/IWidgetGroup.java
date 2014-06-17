package com.alipay.android.launcher.core;

import android.app.Activity;
import android.view.KeyEvent;
import android.view.View;
import com.alipay.mobile.framework.MicroApplicationContext;
import java.util.List;

public abstract interface IWidgetGroup
{
  public abstract void destroy();

  public abstract List<IWidget> getAllWidgets();

  public abstract String getId();

  public abstract View getIndicator();

  public abstract View getView();

  public abstract boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent);

  public abstract void onRefresh();

  public abstract void onResume();

  public abstract void onReturn();

  public abstract void setContext(Activity paramActivity);

  public abstract void setContext(MicroApplicationContext paramMicroApplicationContext);

  public abstract void setId(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.core.IWidgetGroup
 * JD-Core Version:    0.6.2
 */