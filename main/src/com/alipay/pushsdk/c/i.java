package com.alipay.pushsdk.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.telephony.TelephonyManager;

public final class i
{
  static i a = null;
  private String b = null;
  private String c = null;
  private String d = "";
  private String e = "";
  private String f = "";

  private i(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      String str2 = localTelephonyManager.getDeviceId();
      if (str2 != null);
      String str4;
      for (Object localObject = str2.substring(0, 15); ; localObject = str4)
      {
        this.c = ((String)localObject);
        String str3 = localTelephonyManager.getSubscriberId();
        if (str3 != null)
          str3 = (str3 + "123456789012345").substring(0, 15);
        this.b = str3;
        String str1 = d.getBundle(paramContext).getBundle("clientId");
        if ((str1 != null) && (str1.length() > 0))
          this.d = str1;
        return;
        str4 = j.a();
      }
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static i a(Context paramContext)
  {
    try
    {
      if (a == null)
        a = new i(paramContext);
      try
      {
        String str = paramContext.getPackageName();
        PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(str, 4);
        a.e = localPackageInfo.versionName;
        a.f = localPackageInfo.packageName;
        locali = a;
        return locali;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        while (true)
        {
          localNameNotFoundException.printStackTrace();
          i locali = a;
        }
      }
    }
    finally
    {
    }
  }

  private static String a(String paramString)
  {
    String str = j.a();
    return str + "|" + paramString;
  }

  public final String a()
  {
    return this.f;
  }

  public final String b()
  {
    return this.e;
  }

  public final String c()
  {
    String str;
    if ((this.d != null) && (this.d.length() > 0))
      str = this.d;
    while (str.matches("[[a-z][A-Z][0-9]]{15}\\|[[a-z][A-Z][0-9]]{15}"))
    {
      return str;
      if ((this.c == null) && (this.b == null))
        str = a("000000000000000");
      else if (this.c == null)
        str = this.b + "|000000000000000";
      else if (this.b == null)
        str = a(this.c);
      else
        str = this.b + "|" + this.c;
    }
    return a("000000000000000");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.i
 * JD-Core Version:    0.6.2
 */