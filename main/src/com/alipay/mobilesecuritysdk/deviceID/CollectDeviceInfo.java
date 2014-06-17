package com.alipay.mobilesecuritysdk.deviceID;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class CollectDeviceInfo
{
  private static CollectDeviceInfo a = new CollectDeviceInfo();

  public static CollectDeviceInfo a()
  {
    return a;
  }

  public static String a(Context paramContext)
  {
    return ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
  }

  public static String b()
  {
    String str = "";
    try
    {
      FileReader localFileReader = new FileReader("/proc/cpuinfo");
      try
      {
        BufferedReader localBufferedReader = new BufferedReader(localFileReader, 1024);
        str = localBufferedReader.readLine();
        localBufferedReader.close();
        localFileReader.close();
        label38: if (str != null)
          return str.substring(1 + str.indexOf(':')).trim();
      }
      catch (IOException localIOException)
      {
        while (true)
          new StringBuilder("getCpuNum").append(localIOException.getLocalizedMessage()).toString();
      }
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      break label38;
    }
    return "";
  }

  public static String b(Context paramContext)
  {
    if (paramContext != null)
      try
      {
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        if (localTelephonyManager != null)
        {
          String str = localTelephonyManager.getDeviceId();
          return str;
        }
      }
      catch (Exception localException)
      {
      }
    return null;
  }

  public static String c()
  {
    try
    {
      int k = Build.VERSION.class.getField("SDK_INT").getInt(null);
      i = k;
      return Integer.toString(i);
    }
    catch (Exception localException1)
    {
      while (true)
        try
        {
          int j = Integer.parseInt((String)Build.VERSION.class.getField("SDK").get(null));
          i = j;
        }
        catch (Exception localException2)
        {
          int i = 2;
        }
    }
  }

  public static String c(Context paramContext)
  {
    if (paramContext != null)
      try
      {
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
        if (localTelephonyManager != null)
        {
          String str = localTelephonyManager.getSubscriberId();
          return str;
        }
      }
      catch (Exception localException)
      {
      }
    return null;
  }

  public static String d()
  {
    return Build.VERSION.RELEASE;
  }

  public static String d(Context paramContext)
  {
    try
    {
      DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      String str = Integer.toString(localDisplayMetrics.widthPixels) + "*" + Integer.toString(localDisplayMetrics.heightPixels);
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String e()
  {
    return Build.MODEL;
  }

  public static String e(Context paramContext)
  {
    return paramContext.getPackageName();
  }

  public static String f()
  {
    int i = 2;
    String[] arrayOfString1 = new String[i];
    arrayOfString1[0] = "";
    arrayOfString1[1] = "";
    try
    {
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/cpuinfo"), 8192);
      String[] arrayOfString2 = localBufferedReader.readLine().split("\\s+");
      while (true)
      {
        if (i >= arrayOfString2.length)
        {
          String[] arrayOfString3 = localBufferedReader.readLine().split("\\s+");
          arrayOfString1[1] = (arrayOfString1[1] + arrayOfString3[2]);
          localBufferedReader.close();
          return arrayOfString1[1];
        }
        arrayOfString1[0] = (arrayOfString1[0] + arrayOfString2[i] + " ");
        i++;
      }
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  // ERROR //
  public static long g()
  {
    // Byte code:
    //   0: new 52	java/io/BufferedReader
    //   3: dup
    //   4: new 45	java/io/FileReader
    //   7: dup
    //   8: ldc 185
    //   10: invokespecial 50	java/io/FileReader:<init>	(Ljava/lang/String;)V
    //   13: sipush 8192
    //   16: invokespecial 55	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   19: astore_0
    //   20: aload_0
    //   21: invokevirtual 58	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   24: ldc 175
    //   26: invokevirtual 179	java/lang/String:split	(Ljava/lang/String;)[Ljava/lang/String;
    //   29: iconst_1
    //   30: aaload
    //   31: invokestatic 188	java/lang/Integer:valueOf	(Ljava/lang/String;)Ljava/lang/Integer;
    //   34: invokevirtual 192	java/lang/Integer:intValue	()I
    //   37: istore 6
    //   39: iload 6
    //   41: i2l
    //   42: lstore_2
    //   43: aload_0
    //   44: invokevirtual 61	java/io/BufferedReader:close	()V
    //   47: lload_2
    //   48: lreturn
    //   49: astore_1
    //   50: lconst_0
    //   51: lstore_2
    //   52: aload_1
    //   53: astore 4
    //   55: new 77	java/lang/StringBuilder
    //   58: dup
    //   59: ldc 194
    //   61: invokespecial 80	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   64: aload 4
    //   66: invokevirtual 83	java/io/IOException:getLocalizedMessage	()Ljava/lang/String;
    //   69: invokevirtual 87	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: pop
    //   76: lload_2
    //   77: lreturn
    //   78: astore 4
    //   80: goto -25 -> 55
    //
    // Exception table:
    //   from	to	target	type
    //   0	39	49	java/io/IOException
    //   43	47	78	java/io/IOException
  }

  public static long h()
  {
    long[] arrayOfLong = new long[2];
    try
    {
      if ("mounted".equals(Environment.getExternalStorageState()))
      {
        StatFs localStatFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
        long l1 = localStatFs.getBlockSize();
        long l2 = localStatFs.getBlockCount();
        long l3 = localStatFs.getAvailableBlocks();
        arrayOfLong[0] = (l2 * l1);
        arrayOfLong[1] = (l3 * l1);
      }
      label63: return arrayOfLong[0];
    }
    catch (Exception localException)
    {
      break label63;
    }
  }

  public static String i()
  {
    return Build.DISPLAY;
  }

  public static String j()
  {
    try
    {
      BluetoothAdapter localBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();
      if (localBluetoothAdapter != null)
      {
        boolean bool = localBluetoothAdapter.isEnabled();
        if (!bool)
          return "";
      }
      String str = localBluetoothAdapter.getAddress();
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static String k()
  {
    try
    {
      Class localClass = Class.forName("android.os.SystemProperties");
      Object localObject = localClass.newInstance();
      String str = (String)localClass.getMethod("get", new Class[] { String.class, String.class }).invoke(localObject, new Object[] { "gsm.version.baseband", "no message" });
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecuritysdk.deviceID.CollectDeviceInfo
 * JD-Core Version:    0.6.2
 */