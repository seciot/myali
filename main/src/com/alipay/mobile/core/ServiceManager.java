package com.alipay.mobile.core;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alipay.mobile.framework.service.MicroService;

public abstract interface ServiceManager
{
  public abstract void exit();

  public abstract <T> T findServiceByInterface(String paramString);

  public abstract void onDestroyService(MicroService paramMicroService);

  public abstract <T> boolean registerService(String paramString, T paramT);

  public abstract void restoreState(SharedPreferences paramSharedPreferences);

  public abstract void saveState(SharedPreferences.Editor paramEditor);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.ServiceManager
 * JD-Core Version:    0.6.2
 */