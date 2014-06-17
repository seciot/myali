package com.alipay.android.mini.window;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;

public class AbsActivity extends FragmentActivity
{
  private Handler a = new Handler();
  private Resources.Theme b;
  private int c;

  public AssetManager getAssets()
  {
    return getApplicationContext().getAssets();
  }

  public ClassLoader getClassLoader()
  {
    return getClass().getClassLoader();
  }

  public Resources getResources()
  {
    return getApplicationContext().getResources();
  }

  public Resources.Theme getTheme()
  {
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

  protected void onDestroy()
  {
    this.a.removeCallbacksAndMessages(null);
    super.onDestroy();
  }

  protected void onUserLeaveHint()
  {
    super.onUserLeaveHint();
    this.a.postDelayed(new a(this), 100L);
  }

  public void setTheme(int paramInt)
  {
    super.setTheme(paramInt);
    this.c = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.AbsActivity
 * JD-Core Version:    0.6.2
 */