package com.alipay.mobile.quinox.shell;

import android.app.Activity;
import android.app.Dialog;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import com.alipay.mobile.apk.common.AbstractEngine;
import com.alipay.mobile.apk.common.ZActivityInfo;
import com.alipay.mobile.quinox.engine.MiscUtils;
import dalvik.system.DexClassLoader;

public class BaseActivityShell extends Activity
{
  static final String TAG = BaseActivityShell.class.getSimpleName();
  protected ZActivityInfo activityInfo;
  protected AbstractEngine defaultEngine;
  protected DexClassLoader dexLoader;
  protected Activity targetActivity;

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    Class[] arrayOfClass = new Class[3];
    arrayOfClass[0] = Integer.TYPE;
    arrayOfClass[1] = Integer.TYPE;
    arrayOfClass[2] = Intent.class;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    arrayOfObject[2] = paramIntent;
    MiscUtils.callActivityOnMethod(this.targetActivity, "onActivityResult", arrayOfClass, arrayOfObject);
  }

  protected void onApplyThemeResource(Resources.Theme paramTheme, int paramInt, boolean paramBoolean)
  {
    super.onApplyThemeResource(paramTheme, paramInt, paramBoolean);
  }

  public void onAttachedToWindow()
  {
    if (this.targetActivity != null)
      this.targetActivity.onAttachedToWindow();
  }

  public void onBackPressed()
  {
    if (this.targetActivity != null)
      this.targetActivity.onBackPressed();
  }

  protected void onChildTitleChanged(Activity paramActivity, CharSequence paramCharSequence)
  {
    Class[] arrayOfClass = { Activity.class, CharSequence.class };
    Object[] arrayOfObject = { paramActivity, paramCharSequence };
    MiscUtils.callActivityOnMethod(this.targetActivity, "onChildTitleChanged", arrayOfClass, arrayOfObject);
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.targetActivity != null)
      this.targetActivity.onConfigurationChanged(paramConfiguration);
  }

  public void onContentChanged()
  {
    if (this.targetActivity != null)
      this.targetActivity.onContentChanged();
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onContextItemSelected(paramMenuItem);
    return super.onContextItemSelected(paramMenuItem);
  }

  public void onContextMenuClosed(Menu paramMenu)
  {
    if (this.targetActivity != null)
      this.targetActivity.onContextMenuClosed(paramMenu);
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    if (this.targetActivity != null)
      this.targetActivity.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }

  public CharSequence onCreateDescription()
  {
    if (this.targetActivity != null)
      return this.targetActivity.onCreateDescription();
    return super.onCreateDescription();
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = Integer.TYPE;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    return (Dialog)MiscUtils.callActivityOnMethod(this.targetActivity, "onCreateDialog", arrayOfClass, arrayOfObject);
  }

  protected Dialog onCreateDialog(int paramInt, Bundle paramBundle)
  {
    Class[] arrayOfClass = new Class[2];
    arrayOfClass[0] = Integer.TYPE;
    arrayOfClass[1] = Bundle.class;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = paramBundle;
    return (Dialog)MiscUtils.callActivityOnMethod(this.targetActivity, "onCreateDialog", arrayOfClass, arrayOfObject);
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onCreateOptionsMenu(paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }

  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onCreatePanelMenu(paramInt, paramMenu);
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }

  public View onCreatePanelView(int paramInt)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onCreatePanelView(paramInt);
    return super.onCreatePanelView(paramInt);
  }

  public boolean onCreateThumbnail(Bitmap paramBitmap, Canvas paramCanvas)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onCreateThumbnail(paramBitmap, paramCanvas);
    return super.onCreateThumbnail(paramBitmap, paramCanvas);
  }

  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onCreateView(paramString, paramContext, paramAttributeSet);
    return super.onCreateView(paramString, paramContext, paramAttributeSet);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    MiscUtils.callActivityOnMethod(this.targetActivity, "onDestroy", null, null);
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.targetActivity != null)
      this.targetActivity.onDetachedFromWindow();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onKeyDown(paramInt, paramKeyEvent);
    return false;
  }

  public boolean onKeyLongPress(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onKeyLongPress(paramInt, paramKeyEvent);
    return false;
  }

  public boolean onKeyMultiple(int paramInt1, int paramInt2, KeyEvent paramKeyEvent)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onKeyMultiple(paramInt1, paramInt2, paramKeyEvent);
    return false;
  }

  public boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onKeyUp(paramInt, paramKeyEvent);
    return false;
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    if (this.targetActivity != null)
      this.targetActivity.onLowMemory();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onMenuItemSelected(paramInt, paramMenuItem);
    return super.onMenuItemSelected(paramInt, paramMenuItem);
  }

  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onMenuOpened(paramInt, paramMenu);
    return super.onMenuOpened(paramInt, paramMenu);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    if (this.targetActivity != null)
      this.defaultEngine.getInstrumentation(this.targetActivity).callActivityOnNewIntent(this.targetActivity, paramIntent);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onOptionsItemSelected(paramMenuItem);
    return super.onOptionsItemSelected(paramMenuItem);
  }

  public void onOptionsMenuClosed(Menu paramMenu)
  {
    if (this.targetActivity != null)
      this.targetActivity.onOptionsMenuClosed(paramMenu);
  }

  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    if (this.targetActivity != null)
      this.targetActivity.onPanelClosed(paramInt, paramMenu);
  }

  protected void onPause()
  {
    super.onPause();
    this.defaultEngine.onActivityShellPause();
    if (this.targetActivity != null)
      this.defaultEngine.getInstrumentation(this.targetActivity).callActivityOnPause(this.targetActivity);
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    if (this.targetActivity != null)
      this.defaultEngine.getInstrumentation(this.targetActivity).callActivityOnPostCreate(this.targetActivity, paramBundle);
  }

  protected void onPostResume()
  {
    super.onPostResume();
    MiscUtils.callActivityOnMethod(this.targetActivity, "onPostResume", null, null);
  }

  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    Class[] arrayOfClass = new Class[2];
    arrayOfClass[0] = Integer.TYPE;
    arrayOfClass[1] = Dialog.class;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = paramDialog;
    MiscUtils.callActivityOnMethod(this.targetActivity, "onPrepareDialog", arrayOfClass, arrayOfObject);
  }

  protected void onPrepareDialog(int paramInt, Dialog paramDialog, Bundle paramBundle)
  {
    Class[] arrayOfClass = new Class[3];
    arrayOfClass[0] = Integer.TYPE;
    arrayOfClass[1] = Dialog.class;
    arrayOfClass[2] = Bundle.class;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    arrayOfObject[1] = paramDialog;
    arrayOfObject[2] = paramBundle;
    MiscUtils.callActivityOnMethod(this.targetActivity, "onPrepareDialog", arrayOfClass, arrayOfObject);
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onPrepareOptionsMenu(paramMenu);
    return super.onPrepareOptionsMenu(paramMenu);
  }

  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onPreparePanel(paramInt, paramView, paramMenu);
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }

  protected void onRestart()
  {
    super.onRestart();
    if (this.targetActivity != null)
      this.defaultEngine.getInstrumentation(this.targetActivity).callActivityOnRestart(this.targetActivity);
  }

  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    if (this.targetActivity != null)
      this.defaultEngine.getInstrumentation(this.targetActivity).callActivityOnRestoreInstanceState(this.targetActivity, paramBundle);
  }

  protected void onResume()
  {
    super.onResume();
    this.defaultEngine.onActivityShellResume();
    if (this.targetActivity != null)
      this.defaultEngine.getInstrumentation(this.targetActivity).callActivityOnResume(this.targetActivity);
  }

  public Object onRetainNonConfigurationInstance()
  {
    if (this.targetActivity != null)
      return this.targetActivity.onRetainNonConfigurationInstance();
    return super.onRetainNonConfigurationInstance();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (this.targetActivity != null)
      this.defaultEngine.getInstrumentation(this.targetActivity).callActivityOnSaveInstanceState(this.targetActivity, paramBundle);
  }

  public boolean onSearchRequested()
  {
    if (this.targetActivity != null)
      return this.targetActivity.onSearchRequested();
    return super.onSearchRequested();
  }

  protected void onStart()
  {
    super.onStart();
    if (this.targetActivity != null)
      this.defaultEngine.getInstrumentation(this.targetActivity).callActivityOnStart(this.targetActivity);
  }

  protected void onStop()
  {
    super.onStop();
    if (this.targetActivity != null)
      this.defaultEngine.getInstrumentation(this.targetActivity).callActivityOnStop(this.targetActivity);
  }

  protected void onTitleChanged(CharSequence paramCharSequence, int paramInt)
  {
    super.onTitleChanged(paramCharSequence, paramInt);
    Class[] arrayOfClass = new Class[2];
    arrayOfClass[0] = CharSequence.class;
    arrayOfClass[1] = Integer.TYPE;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramCharSequence;
    arrayOfObject[1] = Integer.valueOf(paramInt);
    MiscUtils.callActivityOnMethod(this.targetActivity, "onTitleChanged", arrayOfClass, arrayOfObject);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onTouchEvent(paramMotionEvent);
    return super.onTouchEvent(paramMotionEvent);
  }

  public boolean onTrackballEvent(MotionEvent paramMotionEvent)
  {
    if (this.targetActivity != null)
      return this.targetActivity.onTrackballEvent(paramMotionEvent);
    return super.onTrackballEvent(paramMotionEvent);
  }

  public void onUserInteraction()
  {
    if (this.targetActivity != null)
      this.targetActivity.onUserInteraction();
  }

  protected void onUserLeaveHint()
  {
    if (this.targetActivity != null)
      this.defaultEngine.getInstrumentation(this.targetActivity).callActivityOnUserLeaving(this.targetActivity);
  }

  public void onWindowAttributesChanged(WindowManager.LayoutParams paramLayoutParams)
  {
    if (this.targetActivity != null)
      this.targetActivity.onWindowAttributesChanged(paramLayoutParams);
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if (this.targetActivity != null)
      this.targetActivity.onWindowFocusChanged(paramBoolean);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.quinox.shell.BaseActivityShell
 * JD-Core Version:    0.6.2
 */