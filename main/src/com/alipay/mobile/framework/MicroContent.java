package com.alipay.mobile.framework;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;

public abstract interface MicroContent
{
  public abstract void restoreState(SharedPreferences paramSharedPreferences);

  public abstract void saveState(SharedPreferences.Editor paramEditor);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.MicroContent
 * JD-Core Version:    0.6.2
 */