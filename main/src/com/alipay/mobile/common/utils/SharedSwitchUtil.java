package com.alipay.mobile.common.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class SharedSwitchUtil
{
  public static final String SHARED_FILE_NAME = "sdkSharedSwitch";
  public static final String SPDY_SWITCH_KEY = "spdy_switch_android";
  public static List switchList = new SharedSwitchUtil.1();

  public static String getSharedSwitch(Context paramContext, String paramString)
  {
    try
    {
      String str = paramContext.getSharedPreferences("sdkSharedSwitch", 0).getString(paramString, null);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void refreshSharedSwitch(Context paramContext, Map paramMap)
  {
    try
    {
      localEditor = paramContext.getSharedPreferences("sdkSharedSwitch", 0).edit();
      localEditor.clear();
      Iterator localIterator = switchList.iterator();
      while (localIterator.hasNext())
      {
        String str1 = (String)localIterator.next();
        String str2 = (String)paramMap.get(str1);
        if (!TextUtils.isEmpty(str2))
          localEditor.putString(str1, str2);
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        SharedPreferences.Editor localEditor;
        return;
        localEditor.commit();
      }
    }
    finally
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.utils.SharedSwitchUtil
 * JD-Core Version:    0.6.2
 */