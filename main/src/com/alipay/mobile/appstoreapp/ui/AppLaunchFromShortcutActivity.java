package com.alipay.mobile.appstoreapp.ui;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.Window;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Observable;
import java.util.Observer;

public class AppLaunchFromShortcutActivity extends Activity
  implements Observer
{
  Object a;
  private Object b;
  private boolean c = false;
  private Resources.Theme d = null;
  private int e;

  private int a(String paramString)
  {
    try
    {
      int i = ((Integer)Class.forName(getPackageName() + ".R$layout").getDeclaredField(paramString).get(null)).intValue();
      return i;
    }
    catch (Exception localException)
    {
    }
    return -1;
  }

  private void a()
  {
    this.c = true;
    try
    {
      this.a = getClassLoader().loadClass("com.alipay.mobile.appstoreapp.ui.AppLaunchFromShortcutActivityImpl").newInstance();
      this.a.getClass().getDeclaredMethod("onCreate", new Class[] { Activity.class }).invoke(this.a, new Object[] { this });
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return;
    }
    catch (InstantiationException localInstantiationException)
    {
      localInstantiationException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
    }
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    return false;
  }

  public AssetManager getAssets()
  {
    this.b = getApplicationContext();
    try
    {
      if (!((Boolean)this.b.getClass().getDeclaredMethod("bootFinish", new Class[0]).invoke(this.b, new Object[0])).booleanValue())
      {
        AssetManager localAssetManager = super.getAssets();
        return localAssetManager;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return getApplicationContext().getAssets();
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  public ClassLoader getClassLoader()
  {
    return getApplicationContext().getClassLoader();
  }

  public Resources getResources()
  {
    this.b = getApplicationContext();
    try
    {
      if (!((Boolean)this.b.getClass().getDeclaredMethod("bootFinish", new Class[0]).invoke(this.b, new Object[0])).booleanValue())
      {
        Resources localResources = super.getResources();
        return localResources;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return getApplicationContext().getResources();
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  public Resources.Theme getTheme()
  {
    this.b = getApplicationContext();
    if (!this.c)
      return super.getTheme();
    if (this.d == null)
    {
      this.d = getResources().newTheme();
      Resources.Theme localTheme = getApplicationContext().getTheme();
      if (localTheme != null)
        this.d.setTo(localTheme);
      this.d.applyStyle(this.e, true);
    }
    return this.d;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(a("app_launch_from_shotcut"));
    getWindow().setLayout(-1, -1);
    this.b = getApplicationContext();
    try
    {
      if (((Boolean)this.b.getClass().getDeclaredMethod("bootFinish", new Class[0]).invoke(this.b, new Object[0])).booleanValue())
      {
        a();
        return;
      }
      this.b.getClass().getDeclaredMethod("addListener", new Class[] { Observer.class }).invoke(this.b, new Object[] { this });
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    try
    {
      Method localMethod = this.a.getClass().getDeclaredMethod("onDestroy", new Class[0]);
      if (localMethod != null)
        localMethod.invoke(this.a, new Object[0]);
      return;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      localNoSuchMethodException.printStackTrace();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      localIllegalArgumentException.printStackTrace();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      localInvocationTargetException.printStackTrace();
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return true;
  }

  public void setTheme(int paramInt)
  {
    super.setTheme(paramInt);
    this.e = paramInt;
  }

  public void update(Observable paramObservable, Object paramObject)
  {
    runOnUiThread(new k(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.AppLaunchFromShortcutActivity
 * JD-Core Version:    0.6.2
 */