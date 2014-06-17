package com.alipay.mobile.framework.app.ui;

import android.app.Activity;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import android.view.MotionEvent;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.ExternalService;

public class ActivityHelper
{
  static final String TAG = ActivityHelper.class.getSimpleName();
  private Activity a;
  private Handler b = new Handler();
  private DialogHelper c;
  protected ActivityApplication mApp;
  protected MicroApplicationContext mMicroApplicationContext;

  public ActivityHelper(Activity paramActivity)
  {
    this.a = paramActivity;
    ActivityCollections.getInstance().recordActivity(this.a);
    this.c = new DialogHelper(this.a);
    String str = this.a.getIntent().getStringExtra("app_id");
    a(this.a.getIntent());
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    if (localAlipayApplication == null)
      throw new RuntimeException("Unable to start " + paramActivity.getClass().getName());
    this.mMicroApplicationContext = localAlipayApplication.getMicroApplicationContext();
    this.mApp = ((ActivityApplication)this.mMicroApplicationContext.findAppById(str));
    LogCatLog.v(TAG, "ActivityHelper() appId: " + str);
    if (this.mApp == null)
    {
      this.mApp = new ActivityHelper.ActivityApplicationStub(this, null);
      this.mApp.attachContext(this.mMicroApplicationContext);
      finish();
      LogCatLog.v(TAG, "ActivityHelper() return");
      return;
    }
    this.mApp.setIsPrevent(false);
    this.mApp.pushActivity(this.a);
    LocalBroadcastManager.getInstance(this.a).sendBroadcast(new Intent("com.alipay.mobile.framework.ACTIVITY_CREATE"));
  }

  private static void a(Intent paramIntent)
  {
    Bundle localBundle = paramIntent.getBundleExtra("mExtras");
    if (localBundle != null)
      paramIntent.replaceExtras(localBundle);
  }

  public void alert(String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2)
  {
    this.c.alert(paramString1, paramString2, paramString3, paramOnClickListener1, paramString4, paramOnClickListener2);
  }

  public void alert(String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2, Boolean paramBoolean)
  {
    this.c.alert(paramString1, paramString2, paramString3, paramOnClickListener1, paramString4, paramOnClickListener2, paramBoolean);
  }

  public void dismissProgressDialog()
  {
    this.c.dismissProgressDialog();
  }

  public void dispatchOnTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    if ((i == 0) || (i == 1))
    {
      LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(this.a);
      Intent localIntent = new Intent("com.alipay.mobile.framework.VIEW_CLICK");
      localIntent.putExtra("com.alipay.mobile.framework.VIEW_CLICK", paramMotionEvent);
      if (this.mApp != null)
        localIntent.putExtra("com.alipay.mobile.framework.ACTIVITY_DATA", this.mApp.getAppId());
      localLocalBroadcastManager.sendBroadcast(localIntent);
    }
  }

  public <T> T findServiceByInterface(String paramString)
  {
    return this.mMicroApplicationContext.findServiceByInterface(paramString);
  }

  public void finish()
  {
    if (this.mApp != null)
      this.mApp.removeActivity(this.a);
    this.c.dismissProgressDialog();
  }

  public ActivityApplication getApp()
  {
    return this.mApp;
  }

  public <T extends ExternalService> T getExtServiceByInterface(String paramString)
  {
    return this.mMicroApplicationContext.getExtServiceByInterface(paramString);
  }

  public MicroApplicationContext getMicroApplicationContext()
  {
    return this.mMicroApplicationContext;
  }

  public void onDestroy()
  {
    LocalBroadcastManager.getInstance(this.a).sendBroadcast(new Intent("com.alipay.mobile.framework.ACTIVITY_DESTROY"));
  }

  protected void onNewIntent(Intent paramIntent)
  {
    a(paramIntent);
  }

  public void onPause()
  {
    LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(this.a);
    Intent localIntent = new Intent("com.alipay.mobile.framework.ACTIVITY_PAUSE");
    if (this.mApp != null)
      localIntent.putExtra("com.alipay.mobile.framework.ACTIVITY_DATA", this.mApp.getAppId());
    localLocalBroadcastManager.sendBroadcast(localIntent);
  }

  public void onResume()
  {
    LocalBroadcastManager.getInstance(this.a).sendBroadcast(new Intent("com.alipay.mobile.framework.ACTIVITY_RESUME"));
    this.mMicroApplicationContext.updateActivity(this.a);
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    this.mMicroApplicationContext.saveState();
  }

  public void onStart()
  {
    LocalBroadcastManager.getInstance(this.a).sendBroadcast(new Intent("com.alipay.mobile.framework.ACTIVITY_START"));
  }

  public void onUserLeaveHint()
  {
    this.b.postDelayed(new ActivityHelper.1(this), 100L);
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(this.a);
    Intent localIntent = new Intent("com.alipay.mobile.framework.WINDOW_FOCUS_CHANGED");
    localIntent.putExtra("com.alipay.mobile.framework.WINDOW_FOCUS_CHANGED", paramBoolean);
    localLocalBroadcastManager.sendBroadcast(localIntent);
    if (paramBoolean)
      this.mApp.windowFocus();
  }

  public void showProgressDialog(String paramString)
  {
    this.c.showProgressDialog(paramString);
  }

  public void showProgressDialog(String paramString, boolean paramBoolean, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    this.c.showProgressDialog(paramString, paramBoolean, paramOnCancelListener, true);
  }

  public void toast(String paramString, int paramInt)
  {
    this.c.toast(paramString, paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.app.ui.ActivityHelper
 * JD-Core Version:    0.6.2
 */