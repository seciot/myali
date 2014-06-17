package com.alipay.mobile.framework.service;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.MicroContent;

public abstract class MicroService
  implements MicroContent
{
  private MicroApplicationContext a;

  public void attachContext(MicroApplicationContext paramMicroApplicationContext)
  {
    this.a = paramMicroApplicationContext;
  }

  public abstract void create(Bundle paramBundle);

  public abstract void destroy(Bundle paramBundle);

  public MicroApplicationContext getMicroApplicationContext()
  {
    return this.a;
  }

  protected abstract void onCreate(Bundle paramBundle);

  protected abstract void onDestroy(Bundle paramBundle);

  public void restoreState(SharedPreferences paramSharedPreferences)
  {
  }

  public void saveState(SharedPreferences.Editor paramEditor)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.MicroService
 * JD-Core Version:    0.6.2
 */