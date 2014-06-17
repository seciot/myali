package com.alipay.mobile.framework.app;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.MicroContent;

public abstract class MicroApplication
  implements MicroContent
{
  private MicroApplicationContext a;
  private String b;
  private String c;
  private String d;

  public void attachContext(MicroApplicationContext paramMicroApplicationContext)
  {
    this.a = paramMicroApplicationContext;
  }

  public abstract void create(Bundle paramBundle);

  public void destroy(Bundle paramBundle)
  {
    onDestroy(paramBundle);
  }

  public String getAppId()
  {
    return this.d;
  }

  public abstract String getEntryClassName();

  public MicroApplicationContext getMicroApplicationContext()
  {
    return this.a;
  }

  public String getParentAppClassName()
  {
    return this.c;
  }

  public <T> T getServiceByInterface(String paramString)
  {
    return this.a.findServiceByInterface(paramString);
  }

  public String getSourceId()
  {
    return this.b;
  }

  protected abstract void onCreate(Bundle paramBundle);

  protected abstract void onDestroy(Bundle paramBundle);

  protected abstract void onRestart(Bundle paramBundle);

  protected abstract void onStart();

  protected abstract void onStop();

  public abstract void restart(Bundle paramBundle);

  public void restoreState(SharedPreferences paramSharedPreferences)
  {
  }

  public void saveState(SharedPreferences.Editor paramEditor)
  {
  }

  public void setAppId(String paramString)
  {
    this.d = paramString;
  }

  public abstract void setIsPrevent(boolean paramBoolean);

  public void setParentAppClassName(String paramString)
  {
    this.c = paramString;
  }

  public void setSourceId(String paramString)
  {
    this.b = paramString;
  }

  public abstract void start();

  public abstract void stop();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.MicroApplication
 * JD-Core Version:    0.6.2
 */