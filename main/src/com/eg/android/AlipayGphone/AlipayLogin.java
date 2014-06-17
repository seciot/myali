package com.eg.android.AlipayGphone;

import android.app.Activity;
import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import com.alipay.mobile.quinox.LauncherApplication;
import com.alipay.mobile.quinox.splash.c;
import com.alipay.mobile.quinox.utils.d;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Observable;
import java.util.Observer;

public class AlipayLogin extends Activity
  implements Observer
{
  private LauncherApplication a;
  private Resources.Theme b;
  private int c;
  private c d;
  private boolean e = false;
  private long f;
  private boolean g = false;
  private Handler h = new a(this);

  private int a(String paramString)
  {
    try
    {
      int i = ((Integer)Class.forName(getPackageName() + ".R$layout").getDeclaredField(paramString).get(null)).intValue();
      return i;
    }
    catch (Exception localException)
    {
      d.a("Entry", "getLayoutId", localException);
    }
    return -1;
  }

  private void a()
  {
    if ((!this.g) || (!this.e))
      return;
    this.e = false;
    this.g = false;
    try
    {
      Object localObject = getClassLoader().loadClass("com.alipay.mobile.commonbiz.biz.LaunchRouter").newInstance();
      localObject.getClass().getDeclaredMethod("onCreate", new Class[] { Activity.class }).invoke(localObject, new Object[] { this });
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

  public void finish()
  {
    super.finish();
    this.a.removeListener(this);
  }

  public AssetManager getAssets()
  {
    this.a = ((LauncherApplication)getApplicationContext());
    if (!this.a.bootFinish())
      return super.getAssets();
    return getApplicationContext().getAssets();
  }

  public ClassLoader getClassLoader()
  {
    return getApplicationContext().getClassLoader();
  }

  public Resources getResources()
  {
    this.a = ((LauncherApplication)getApplicationContext());
    if (!this.a.bootFinish())
      return super.getResources();
    return getApplicationContext().getResources();
  }

  public Resources.Theme getTheme()
  {
    this.a = ((LauncherApplication)getApplicationContext());
    if (!this.a.bootFinish())
      return super.getTheme();
    if (this.b == null)
    {
      this.b = getResources().newTheme();
      Resources.Theme localTheme = getApplicationContext().getTheme();
      if (localTheme != null)
        this.b.setTo(localTheme);
      this.b.applyStyle(this.c, true);
    }
    return this.b;
  }

  protected void onCreate(Bundle paramBundle)
  {
    try
    {
      this.f = System.currentTimeMillis();
      Log.d("Entry", "entry Activity onCreate");
      super.onCreate(paramBundle);
      setContentView(a("activity_start_logo"));
      this.d = new c(this, this.h);
      this.d.b();
      if (this.a.bootFinish())
      {
        this.e = true;
        a();
        return;
      }
      this.a.addListener(this);
      return;
    }
    catch (Exception localException)
    {
      finish();
      localException.printStackTrace();
    }
  }

  protected void onDestroy()
  {
    long l;
    if (this.f != 0L)
      l = System.currentTimeMillis() - this.f;
    try
    {
      Object localObject = getClassLoader().loadClass("com.alipay.mobile.commonbiz.biz.LaunchRouter").newInstance();
      Class localClass = localObject.getClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Long.TYPE;
      Method localMethod = localClass.getDeclaredMethod("attackTimeSend", arrayOfClass);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(l);
      localMethod.invoke(localObject, arrayOfObject);
      label88: super.onDestroy();
      if (this.d != null)
        this.d.c();
      return;
    }
    catch (Exception localException)
    {
      break label88;
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }

  public void setTheme(int paramInt)
  {
    super.setTheme(paramInt);
    this.c = paramInt;
  }

  public void update(Observable paramObservable, Object paramObject)
  {
    this.e = true;
    runOnUiThread(new b(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.eg.android.AlipayGphone.AlipayLogin
 * JD-Core Version:    0.6.2
 */