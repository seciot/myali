package com.googlecode.androidannotations.api.sharedpreferences;

import android.content.SharedPreferences.Editor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

abstract class SharedPreferencesCompat
{
  private static final Method a = findApplyMethod();

  public static void apply(SharedPreferences.Editor paramEditor)
  {
    if (a != null);
    try
    {
      a.invoke(paramEditor, new Object[0]);
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      paramEditor.commit();
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      label20: break label20;
    }
  }

  private static Method findApplyMethod()
  {
    try
    {
      Method localMethod = SharedPreferences.Editor.class.getMethod("apply", new Class[0]);
      return localMethod;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.sharedpreferences.SharedPreferencesCompat
 * JD-Core Version:    0.6.2
 */