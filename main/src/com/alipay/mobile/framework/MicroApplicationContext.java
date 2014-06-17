package com.alipay.mobile.framework;

import android.app.Activity;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.framework.app.ApplicationDescription;
import com.alipay.mobile.framework.app.MicroApplication;
import com.alipay.mobile.framework.interfaces.InterfaceManager;
import com.alipay.mobile.framework.service.ext.ExternalService;
import java.lang.ref.WeakReference;

public abstract interface MicroApplicationContext
{
  public abstract void Alert(String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2);

  public abstract void Toast(String paramString, int paramInt);

  public abstract void attachContext(AlipayApplication paramAlipayApplication);

  public abstract void clearState();

  public abstract void dismissProgressDialog();

  public abstract void exit();

  public abstract MicroApplication findAppById(String paramString);

  public abstract ApplicationDescription findDescriptionById(String paramString);

  public abstract <T> T findServiceByInterface(String paramString);

  public abstract MicroApplication findTopRunningApp();

  public abstract void finishApp(String paramString1, String paramString2, Bundle paramBundle);

  public abstract AlipayApplication getApplicationContext();

  public abstract <T extends ExternalService> T getExtServiceByInterface(String paramString);

  public abstract String getGwUrl();

  public abstract InterfaceManager getInterfaceManager();

  public abstract WeakReference<Activity> getTopActivity();

  public abstract boolean hasInited();

  public abstract void loadBundle(String paramString);

  public abstract void onDestroyContent(MicroContent paramMicroContent);

  public abstract void onWindowFocus(MicroApplication paramMicroApplication);

  public abstract <T> boolean registerService(String paramString, T paramT);

  public abstract void restoreState();

  public abstract void saveState();

  public abstract void setGwUrl(String paramString);

  public abstract void showProgressDialog(String paramString);

  public abstract void showProgressDialog(String paramString, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener);

  public abstract void startActivity(MicroApplication paramMicroApplication, Intent paramIntent);

  public abstract void startActivity(MicroApplication paramMicroApplication, String paramString);

  public abstract void startActivityForResult(MicroApplication paramMicroApplication, Intent paramIntent, int paramInt);

  public abstract void startActivityForResult(MicroApplication paramMicroApplication, String paramString, int paramInt);

  public abstract void startApp(String paramString1, String paramString2, Bundle paramBundle);

  public abstract void startExtActivity(MicroApplication paramMicroApplication, Intent paramIntent);

  public abstract void startExtActivityForResult(MicroApplication paramMicroApplication, Intent paramIntent, int paramInt);

  public abstract Activity updateActivity(Activity paramActivity);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.MicroApplicationContext
 * JD-Core Version:    0.6.2
 */