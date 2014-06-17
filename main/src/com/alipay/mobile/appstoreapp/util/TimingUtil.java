package com.alipay.mobile.appstoreapp.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.framework.AlipayApplication;
import java.util.Date;

public class TimingUtil
{
  private static String a = TimingUtil.class.getName();
  private static String b = "app_sync_update_key";
  private static boolean c = AppInfo.getInstance().isDebuggable();

  public static boolean a()
  {
    if (c);
    long l;
    do
    {
      return true;
      l = AlipayApplication.getInstance().getApplicationContext().getSharedPreferences(b, 0).getLong(b, 0L);
    }
    while (new Date().getTime() - l >= 600000L);
    return false;
  }

  public static void b()
  {
    SharedPreferences.Editor localEditor = AlipayApplication.getInstance().getApplicationContext().getSharedPreferences(b, 0).edit();
    localEditor.putLong(b, new Date().getTime());
    localEditor.commit();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.util.TimingUtil
 * JD-Core Version:    0.6.2
 */