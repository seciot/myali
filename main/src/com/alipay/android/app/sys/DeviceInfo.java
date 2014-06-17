package com.alipay.android.app.sys;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.File;

public class DeviceInfo
{
  static DeviceInfo a = null;
  private String b;
  private String c;
  private String d;
  private String e;

  // ERROR //
  private DeviceInfo(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 21	java/lang/Object:<init>	()V
    //   4: aload_1
    //   5: invokevirtual 27	android/content/Context:getPackageName	()Ljava/lang/String;
    //   8: astore 9
    //   10: aload_0
    //   11: aload_1
    //   12: invokevirtual 31	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   15: aload 9
    //   17: sipush 128
    //   20: invokevirtual 37	android/content/pm/PackageManager:getPackageInfo	(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    //   23: getfield 42	android/content/pm/PackageInfo:versionName	Ljava/lang/String;
    //   26: putfield 44	com/alipay/android/app/sys/DeviceInfo:d	Ljava/lang/String;
    //   29: aload_1
    //   30: ldc 46
    //   32: invokevirtual 50	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   35: checkcast 52	android/telephony/TelephonyManager
    //   38: astore 6
    //   40: aload_0
    //   41: aload 6
    //   43: invokevirtual 55	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   46: invokespecial 58	com/alipay/android/app/sys/DeviceInfo:b	(Ljava/lang/String;)V
    //   49: invokestatic 63	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   52: invokevirtual 66	com/alipay/android/app/sys/GlobalContext:c	()Lcom/alipay/android/app/IAppConfig;
    //   55: invokeinterface 72 1 0
    //   60: istore 7
    //   62: invokestatic 63	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   65: invokevirtual 66	com/alipay/android/app/sys/GlobalContext:c	()Lcom/alipay/android/app/IAppConfig;
    //   68: invokeinterface 75 1 0
    //   73: istore 8
    //   75: iload 7
    //   77: ifeq +53 -> 130
    //   80: aload_0
    //   81: ldc 77
    //   83: invokespecial 79	com/alipay/android/app/sys/DeviceInfo:a	(Ljava/lang/String;)V
    //   86: aload_0
    //   87: aload_1
    //   88: ldc 81
    //   90: invokevirtual 50	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   93: checkcast 83	android/net/wifi/WifiManager
    //   96: invokevirtual 87	android/net/wifi/WifiManager:getConnectionInfo	()Landroid/net/wifi/WifiInfo;
    //   99: invokevirtual 92	android/net/wifi/WifiInfo:getMacAddress	()Ljava/lang/String;
    //   102: putfield 94	com/alipay/android/app/sys/DeviceInfo:e	Ljava/lang/String;
    //   105: aload_0
    //   106: getfield 94	com/alipay/android/app/sys/DeviceInfo:e	Ljava/lang/String;
    //   109: invokestatic 100	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   112: ifeq +9 -> 121
    //   115: aload_0
    //   116: ldc 102
    //   118: putfield 94	com/alipay/android/app/sys/DeviceInfo:e	Ljava/lang/String;
    //   121: return
    //   122: astore_2
    //   123: aload_2
    //   124: invokestatic 107	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   127: goto -98 -> 29
    //   130: iload 8
    //   132: ifeq +20 -> 152
    //   135: aload_0
    //   136: ldc 109
    //   138: invokespecial 79	com/alipay/android/app/sys/DeviceInfo:a	(Ljava/lang/String;)V
    //   141: goto -55 -> 86
    //   144: astore_3
    //   145: aload_3
    //   146: invokestatic 107	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   149: goto -63 -> 86
    //   152: aload_0
    //   153: aload 6
    //   155: invokevirtual 112	android/telephony/TelephonyManager:getSubscriberId	()Ljava/lang/String;
    //   158: invokespecial 79	com/alipay/android/app/sys/DeviceInfo:a	(Ljava/lang/String;)V
    //   161: goto -75 -> 86
    //   164: astore 5
    //   166: aload 5
    //   168: invokestatic 107	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   171: aload_0
    //   172: getfield 94	com/alipay/android/app/sys/DeviceInfo:e	Ljava/lang/String;
    //   175: invokestatic 100	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   178: ifeq -57 -> 121
    //   181: aload_0
    //   182: ldc 102
    //   184: putfield 94	com/alipay/android/app/sys/DeviceInfo:e	Ljava/lang/String;
    //   187: return
    //   188: astore 4
    //   190: aload_0
    //   191: getfield 94	com/alipay/android/app/sys/DeviceInfo:e	Ljava/lang/String;
    //   194: invokestatic 100	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   197: ifeq +9 -> 206
    //   200: aload_0
    //   201: ldc 102
    //   203: putfield 94	com/alipay/android/app/sys/DeviceInfo:e	Ljava/lang/String;
    //   206: aload 4
    //   208: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   4	29	122	java/lang/Exception
    //   29	75	144	java/lang/Exception
    //   80	86	144	java/lang/Exception
    //   135	141	144	java/lang/Exception
    //   152	161	144	java/lang/Exception
    //   86	105	164	java/lang/Exception
    //   86	105	188	finally
    //   166	171	188	finally
  }

  public static DeviceInfo a(Context paramContext)
  {
    if (a == null)
      a = new DeviceInfo(paramContext);
    return a;
  }

  private void a(String paramString)
  {
    if (paramString != null)
      paramString = (paramString + "000000000000000").substring(0, 15);
    this.b = paramString;
  }

  public static NetConnectionType b(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.getType() == 0))
      return NetConnectionType.a(localNetworkInfo.getSubtype());
    if ((localNetworkInfo != null) && (localNetworkInfo.getType() == 1))
      return NetConnectionType.a;
    return NetConnectionType.p;
  }

  private void b(String paramString)
  {
    if (paramString != null)
    {
      byte[] arrayOfByte = paramString.getBytes();
      for (int i = 0; i < arrayOfByte.length; i++)
        if ((arrayOfByte[i] < 48) || (arrayOfByte[i] > 57))
          arrayOfByte[i] = 48;
      String str = new String(arrayOfByte);
      paramString = (str + "000000000000000").substring(0, 15);
    }
    this.c = paramString;
  }

  public static boolean c(Context paramContext)
  {
    if (!e())
      return true;
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      localPackageManager.getPackageGids("com.eg.android.AlipayGphone");
      return true;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return false;
  }

  public static String d(Context paramContext)
  {
    DeviceInfo localDeviceInfo = a(paramContext);
    String str1 = localDeviceInfo.c();
    String str2 = str1 + "|";
    String str3 = localDeviceInfo.b();
    if (TextUtils.isEmpty(str3));
    for (String str4 = str2 + "000000000000000"; ; str4 = str2 + str3)
      return str4.substring(0, 8);
  }

  public static boolean e()
  {
    boolean bool1 = "mounted".equals(Environment.getExternalStorageState());
    boolean bool2 = false;
    if (bool1)
    {
      StatFs localStatFs = new StatFs(new File(Environment.getExternalStorageDirectory().getPath()).getPath());
      boolean bool3 = localStatFs.getBlockSize() * (localStatFs.getAvailableBlocks() - 4L) < 33554432.0D;
      bool2 = false;
      if (bool3)
        bool2 = true;
    }
    return bool2;
  }

  public static String f()
  {
    return "android " + Build.VERSION.RELEASE;
  }

  public final String a()
  {
    return this.d;
  }

  public final String b()
  {
    if (TextUtils.isEmpty(this.b))
      this.b = "000000000000000";
    return this.b;
  }

  public final String c()
  {
    if (TextUtils.isEmpty(this.c))
      this.c = "000000000000000";
    return this.c;
  }

  public final String d()
  {
    return this.e;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.sys.DeviceInfo
 * JD-Core Version:    0.6.2
 */