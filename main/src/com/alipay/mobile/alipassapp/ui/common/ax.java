package com.alipay.mobile.alipassapp.ui.common;

import android.app.Activity;
import android.content.Context;
import android.provider.Settings.SettingNotFoundException;
import android.provider.Settings.System;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.alipay.mobile.common.logging.LogCatLog;

public class ax
{
  public static int a = 216;
  private static String b = ax.class.getName();
  private boolean c;
  private int d;
  private boolean e = false;
  private Context f;

  private ax(Context paramContext, int paramInt, boolean paramBoolean)
  {
    this.f = paramContext;
    this.d = paramInt;
    this.c = paramBoolean;
  }

  public static ax a(Context paramContext)
  {
    int i = 1;
    try
    {
      int j = Settings.System.getInt(paramContext.getContentResolver(), "screen_brightness");
      int k = Settings.System.getInt(paramContext.getContentResolver(), "screen_brightness_mode");
      if (k == i);
      while (true)
      {
        LogCatLog.v(b, "get current brightness =" + j + ";    mode = " + i);
        return new ax(paramContext, j, i);
        i = 0;
      }
    }
    catch (Settings.SettingNotFoundException localSettingNotFoundException)
    {
    }
    return null;
  }

  private void a(int paramInt)
  {
    if ((paramInt != 1) && (paramInt != 0))
      return;
    Settings.System.putInt(this.f.getContentResolver(), "screen_brightness_mode", paramInt);
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    if (!paramBoolean)
      if (paramInt > 255)
      {
        i = a;
        if (i >= 0);
      }
    for (int i = a; ; i = paramInt)
    {
      boolean bool = Settings.System.putInt(this.f.getContentResolver(), "screen_brightness", i);
      LogCatLog.v("ScreenBrightnessTool", "设置亮度 ScreenBrightnessTool.setBrightness(" + paramInt + ") 返回结果为: " + bool);
      return;
      i = paramInt;
      break;
    }
  }

  private static void a(Activity paramActivity, int paramInt)
  {
    Window localWindow = paramActivity.getWindow();
    WindowManager.LayoutParams localLayoutParams = localWindow.getAttributes();
    localLayoutParams.screenBrightness = (0.003921569F * Float.valueOf(paramInt).floatValue());
    localWindow.setAttributes(localLayoutParams);
  }

  public final void a(Activity paramActivity)
  {
    if (!this.e)
      return;
    if (this.c)
      a(1);
    while (true)
    {
      a(this.d, true);
      a(paramActivity, this.d);
      LogCatLog.v(b, "恢复 设置activity亮度：brightness = " + this.d);
      return;
      a(0);
    }
  }

  public final void a(Activity paramActivity, int paramInt1, int paramInt2)
  {
    if (this.d < paramInt2)
    {
      if (this.c)
        a(0);
      a(paramInt1, false);
      a(paramActivity, paramInt1);
      this.e = true;
      LogCatLog.v(b, "设置activity亮度：brightness = " + paramInt1);
    }
  }

  public String toString()
  {
    return getClass().getName() + ".toString() = sysBrightness:" + this.d + ";sysAutomaticMode:" + this.c;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ax
 * JD-Core Version:    0.6.2
 */