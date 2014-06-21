package com.alipay.pushsdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.util.Log;
import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.push.h;
import com.alipay.pushsdk.push.o;

public final class AliPushInterface
{
  public static void activeReport(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent(paramContext.getPackageName() + ".push.action.NOTIFICATION_CLICKED");
    localIntent.putExtra("k", paramString1);
    localIntent.putExtra("ext", paramString2);
    paramContext.startService(localIntent);
    BundlesManagerImpl.e(3, "AliPushInterface", "activeReport() startService!");
  }

  public static void checkDevice(Context paramContext)
  {
    int i = Build.VERSION.SDK_INT;
    if (i < 5)
      throw new UnsupportedOperationException("Device must be at least API Level 5 (instead of " + i + ")");
  }

  public static void delUserId(Context paramContext, String paramString)
  {
    new a(paramContext).c(paramString);
  }

  public static String getPushState(Context paramContext)
  {
    String str = "true";
    if (!new o(paramContext).a())
      str = "false";
    return str;
  }

  public static void init(Context paramContext)
  {
    startPush(paramContext, "0");
  }

  public static void setChannel(Context paramContext, String paramString)
  {
    new h(paramContext).b(paramString);
  }

  public static void setClientId(Context paramContext, String paramString)
  {
    new h(paramContext).d(paramString);
  }

  public static void setDebugMode(boolean paramBoolean)
  {
    BundlesManagerImpl.AppBundle = paramBoolean;
    BundlesManagerImpl.a();
  }

  public static void setMsptid(Context paramContext, String paramString)
  {
    new h(paramContext).f(paramString);
  }

  public static void setPushState(Context paramContext, String paramString)
  {
    try
    {
      String str2 = paramContext.getPackageName();
      new o(paramContext).a(paramString);
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      if ("init: " + localNameNotFoundException != null);
    }
    for (String str1 = ""; ; str1 = localNameNotFoundException.getMessage())
    {
      Log.w("AliPushInterface", str1);
      return;
    }
  }

  public static void setUserId(Context paramContext, String paramString)
  {
    new a(paramContext).b(paramString);
  }

  public static void setUtdid(Context paramContext, String paramString)
  {
    new h(paramContext).e(paramString);
  }

  public static void setVersion(Context paramContext, String paramString)
  {
    new h(paramContext).c(paramString);
  }

  public static void showDefaultMsg(Context paramContext)
  {
    new a(paramContext).b();
  }

  public static void startPush(Context paramContext, String paramString)
  {
    new a(paramContext).a(paramString);
  }

  public static void stopPush(Context paramContext)
  {
    new a(paramContext).a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.AliPushInterface
 * JD-Core Version:    0.6.2
 */