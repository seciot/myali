package com.taobao.dp.a;

import android.content.Context;
import android.content.ContextWrapper;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public final class a
{
  public static String setBundlePath(Context paramContext)
  {
    try
    {
      Class localClass = Class.forName("com.taobao.securityjni.StaticDataStore");
      Constructor localConstructor = localClass.getConstructor(new Class[] { ContextWrapper.class });
      Method localMethod = localClass.getMethod("getAppKey", new Class[0]);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = ((ContextWrapper)paramContext);
      String str = (String)localMethod.invoke(localConstructor.newInstance(arrayOfObject), new Object[0]);
      return str;
    }
    catch (Exception localException)
    {
    }
    return "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.dp.a.a
 * JD-Core Version:    0.6.2
 */