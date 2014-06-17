package com.alipay.android.launcher.core;

import android.view.KeyEvent;
import com.alipay.mobile.framework.app.ActivityApplication;

public abstract interface IFragmentWidgetGroup extends IWidgetGroup
{
  public abstract boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent);

  public abstract void setActApplication(ActivityApplication paramActivityApplication);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.core.IFragmentWidgetGroup
 * JD-Core Version:    0.6.2
 */