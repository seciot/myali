package com.alipay.mobile.core;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.app.MicroApplication;
import java.util.List;

public abstract interface ApplicationManager
{
  public abstract void addDescription(ApplicationDescription paramApplicationDescription);

  public abstract void addDescription(List<ApplicationDescription> paramList);

  public abstract void clear();

  public abstract void clearTop(MicroApplication paramMicroApplication);

  public abstract void exit();

  public abstract MicroApplication findAppById(String paramString);

  public abstract ApplicationDescription findDescriptionById(String paramString);

  public abstract ApplicationDescription findDescriptionByName(String paramString);

  public abstract void finishApp(String paramString1, String paramString2, Bundle paramBundle);

  public abstract MicroApplication getTopRunningApp();

  public abstract void onDestroyApp(MicroApplication paramMicroApplication);

  public abstract void restoreState(SharedPreferences paramSharedPreferences);

  public abstract void saveState(SharedPreferences.Editor paramEditor);

  public abstract void setEntryAppName(String paramString);

  public abstract void startApp(String paramString1, String paramString2, Bundle paramBundle);

  public abstract void startEntryApp(Bundle paramBundle);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.ApplicationManager
 * JD-Core Version:    0.6.2
 */