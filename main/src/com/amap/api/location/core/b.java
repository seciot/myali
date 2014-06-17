package com.amap.api.location.core;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;

public class b
{
  public static String a = "";
  private static b b = null;
  private static String c = null;
  private static Context d = null;
  private static TelephonyManager e;
  private static ConnectivityManager f;
  private static String g;
  private static String h;
  private static String i;
  private static String j;

  public static b a(Context paramContext)
  {
    int k;
    int m;
    if (b == null)
    {
      b = new b();
      d = paramContext;
      e = (TelephonyManager)paramContext.getSystemService("phone");
      f = (ConnectivityManager)d.getSystemService("connectivity");
      g = d.getApplicationContext().getPackageName();
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((WindowManager)d.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
      k = localDisplayMetrics.widthPixels;
      m = localDisplayMetrics.heightPixels;
      if (m <= k)
        break label156;
    }
    label156: for (String str = k + "*" + m; ; str = m + "*" + k)
    {
      h = str;
      i = h();
      j = i();
      a = b(d);
      return b;
    }
  }

  public static String a()
  {
    return g;
  }

  public static String b(Context paramContext)
  {
    if ((a == null) || (a.equals("")));
    try
    {
      a = paramContext.getPackageManager().getApplicationInfo(paramContext.getPackageName(), 128).metaData.getString("com.amap.api.v2.apikey");
      return a;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static String h()
  {
    try
    {
      PackageManager localPackageManager = d.getPackageManager();
      String str = (String)localPackageManager.getApplicationLabel(localPackageManager.getApplicationInfo(d.getPackageName(), 0));
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return "";
  }

  public static String i()
  {
    PackageManager localPackageManager = d.getPackageManager();
    try
    {
      String str = localPackageManager.getPackageInfo(d.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      localNameNotFoundException.printStackTrace();
    }
    return "";
  }

  public boolean a(String paramString)
  {
    if ((paramString == null) || (paramString.equals("")) || (paramString.equals("0")) || (paramString.equals("000")) || (paramString.equalsIgnoreCase("nul")));
    while ((paramString.equals("460")) || (paramString.equals("461")))
      return true;
    return false;
  }

  // ERROR //
  public String b()
  {
    // Byte code:
    //   0: invokestatic 185	com/amap/api/location/core/d:a	()Ljava/lang/String;
    //   3: astore_1
    //   4: getstatic 27	com/amap/api/location/core/b:d	Landroid/content/Context;
    //   7: invokestatic 188	com/amap/api/location/core/d:a	(Landroid/content/Context;)Ljava/security/PublicKey;
    //   10: astore 5
    //   12: aload_1
    //   13: invokevirtual 192	java/lang/String:getBytes	()[B
    //   16: aload 5
    //   18: invokestatic 195	com/amap/api/location/core/d:a	([BLjava/security/Key;)[B
    //   21: astore 6
    //   23: aload_1
    //   24: invokevirtual 192	java/lang/String:getBytes	()[B
    //   27: aload_0
    //   28: invokevirtual 197	com/amap/api/location/core/b:c	()Ljava/lang/String;
    //   31: invokevirtual 192	java/lang/String:getBytes	()[B
    //   34: invokestatic 200	com/amap/api/location/core/d:a	([B[B)[B
    //   37: astore 7
    //   39: aload 6
    //   41: arraylength
    //   42: aload 7
    //   44: arraylength
    //   45: iadd
    //   46: newarray byte
    //   48: astore_3
    //   49: aload 6
    //   51: iconst_0
    //   52: aload_3
    //   53: iconst_0
    //   54: aload 6
    //   56: arraylength
    //   57: invokestatic 206	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   60: aload 7
    //   62: iconst_0
    //   63: aload_3
    //   64: aload 6
    //   66: arraylength
    //   67: aload 7
    //   69: arraylength
    //   70: invokestatic 206	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   73: aload_3
    //   74: invokestatic 211	com/aps/n:a	([B)[B
    //   77: invokestatic 216	com/aps/b:b	([B)Ljava/lang/String;
    //   80: areturn
    //   81: astore_2
    //   82: aconst_null
    //   83: astore_3
    //   84: aload_2
    //   85: astore 4
    //   87: aload 4
    //   89: invokevirtual 151	java/lang/Exception:printStackTrace	()V
    //   92: goto -19 -> 73
    //   95: astore 4
    //   97: goto -10 -> 87
    //
    // Exception table:
    //   from	to	target	type
    //   4	49	81	java/lang/Exception
    //   49	73	95	java/lang/Exception
  }

  public String c()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("ia=1&");
    if ((a != null) && (a.length() > 0))
    {
      localStringBuilder.append("key=");
      localStringBuilder.append(a);
      localStringBuilder.append("&");
    }
    localStringBuilder.append("ct=android");
    String str1 = e.getDeviceId();
    String str2 = e.getSubscriberId();
    localStringBuilder.append("&ime=" + str1);
    localStringBuilder.append("&sim=" + str2);
    localStringBuilder.append("&pkg=" + g);
    localStringBuilder.append("&mod=");
    localStringBuilder.append(f());
    localStringBuilder.append("&sv=");
    localStringBuilder.append(e());
    localStringBuilder.append("&nt=");
    localStringBuilder.append(g());
    String str3 = e.getNetworkOperatorName();
    localStringBuilder.append("&np=");
    localStringBuilder.append(str3);
    localStringBuilder.append("&ctm=" + System.currentTimeMillis());
    localStringBuilder.append("&re=" + h);
    localStringBuilder.append("&av=" + c.a);
    localStringBuilder.append("&apn=" + i);
    localStringBuilder.append("&apv=" + j);
    localStringBuilder.append("&pro=loc");
    return localStringBuilder.toString();
  }

  public String c(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager != null)
      try
      {
        String str = localTelephonyManager.getNetworkOperator().substring(0, 3);
        return str;
      }
      catch (Exception localException)
      {
      }
    return "";
  }

  public String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("mod=" + f());
    localStringBuilder.append("&sv=" + e());
    localStringBuilder.append("&nt=" + g());
    String str = e.getNetworkOperatorName();
    localStringBuilder.append("&np=" + str);
    return localStringBuilder.toString();
  }

  public String e()
  {
    return Build.VERSION.RELEASE;
  }

  public String f()
  {
    return Build.MODEL;
  }

  public String g()
  {
    if (d.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0)
      return "";
    if (f == null)
      return "";
    NetworkInfo localNetworkInfo = f.getActiveNetworkInfo();
    if (localNetworkInfo == null)
      return "";
    return localNetworkInfo.getTypeName();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.b
 * JD-Core Version:    0.6.2
 */