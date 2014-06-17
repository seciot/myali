package com.alipay.mobile.alipassnfcapp.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Toast;
import com.alipay.mobile.framework.app.ActivityApplication;

public abstract class h
{
  public static final int RESULT_CANCEL = -2;
  public static final int RESULT_NOCARE = -1;
  public static final int RESULT_OK;
  protected ActivityApplication mApp;
  protected Toast mToast = null;
  protected View mView;
  protected Object params;
  protected int requestCode = -1;
  private RootController rootController;

  protected void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams != null)
    {
      this.rootController.setContentView(paramView, paramLayoutParams);
      return;
    }
    this.rootController.setContentView(paramView);
  }

  protected Object doInBackground(String paramString, String[] paramArrayOfString)
  {
    return null;
  }

  public View findViewById(int paramInt)
  {
    return this.rootController.findViewById(paramInt);
  }

  public Drawable getDrawable(int paramInt)
  {
    return this.rootController.getResources().getDrawable(paramInt);
  }

  public RootController getRootController()
  {
    return this.rootController;
  }

  public String getString(int paramInt)
  {
    return this.rootController.getString(paramInt);
  }

  public void init(RootController paramRootController, Object paramObject)
  {
    this.rootController = paramRootController;
    this.params = paramObject;
  }

  public void init(RootController paramRootController, Object paramObject, int paramInt)
  {
    this.rootController = paramRootController;
    this.params = paramObject;
    this.requestCode = paramInt;
  }

  public void init(RootController paramRootController, Object paramObject, ActivityApplication paramActivityApplication)
  {
    this.rootController = paramRootController;
    this.params = paramObject;
    this.mApp = paramActivityApplication;
  }

  public void intentCallBack(Object paramObject)
  {
  }

  public void navigateTo(String paramString)
  {
    this.rootController.a(paramString, null);
  }

  public void navigateTo(String paramString, Object paramObject)
  {
    this.rootController.a(paramString, paramObject);
  }

  public void navigateTo(String paramString, Object paramObject, int paramInt)
  {
    this.rootController.a(paramString, paramObject, paramInt);
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  public void onControllerInit(ActivityApplication paramActivityApplication)
  {
  }

  protected void onControllerResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  protected void onCreate()
  {
  }

  public void onDestroy()
  {
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }

  public void onNewIntent()
  {
  }

  public void onPause()
  {
  }

  protected void onPostExecute(String paramString, Object paramObject)
  {
  }

  protected void onPreDoInbackgroud(String paramString)
  {
  }

  protected void onProgressCancel(String paramString)
  {
  }

  protected void onResume()
  {
    if (this.mView != null)
      addView(this.mView, null);
  }

  public void onStart()
  {
  }

  public void onStop()
  {
  }

  protected void onUIUpdate(Object[] paramArrayOfObject)
  {
  }

  public h pop()
  {
    return this.rootController.b();
  }

  public h pop(int paramInt)
  {
    return this.rootController.a(paramInt);
  }

  public h pop(int paramInt1, int paramInt2, Intent paramIntent)
  {
    return this.rootController.a(paramInt1, this.requestCode, paramInt2, paramIntent);
  }

  public h pop(int paramInt, Intent paramIntent)
  {
    return this.rootController.a(this.requestCode, paramInt, paramIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.h
 * JD-Core Version:    0.6.2
 */