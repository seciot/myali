package com.alipay.mobile.common.info;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;
import android.util.DisplayMetrics;
import com.alipay.mobile.common.lbs.LBSLocation;
import com.alipay.mobile.common.lbs.LBSLocationManagerProxy;
import java.io.File;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Random;
import java.util.concurrent.atomic.AtomicBoolean;

public class DeviceInfo
{
  public static final String ANY_ZERO_STR = "[0]+";
  public static final int CLIENT_KEY_MAX_LENGTH = 10;
  public static final String CMCC = "cmcc";
  public static final String CTCC = "ctcc";
  public static final String CUCC = "cucc";
  public static final int HARDWARD_INVALID_LEN = 5;
  public static final int IMEI_LEN = 15;
  public static final String NULL = "null";
  public static final String UNKNOWN = "unknown";
  private static DeviceInfo a;
  private static boolean t = false;
  private Context b;
  public String[] baseString = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z" };
  private int c;
  private int d;
  private int e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  private String m;
  private String n;
  private boolean o;
  private String p;
  private String q;
  private AtomicBoolean r = new AtomicBoolean(false);
  private Object s = new Object();
  private SimpleDateFormat u = new SimpleDateFormat("yyMMddHHmmssSSS");
  private WifiManager v;

  private DeviceInfo(Context paramContext)
  {
    this.b = paramContext;
  }

  private String a()
  {
    Random localRandom = new Random(System.currentTimeMillis());
    int i1 = this.baseString.length;
    String str = "";
    for (int i2 = 0; i2 < 10; i2++)
      str = str + this.baseString[localRandom.nextInt(i1)];
    return str;
  }

  private String a(String paramString1, String paramString2)
  {
    return d(paramString1) + "|" + d(paramString2);
  }

  private static boolean a(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() == 0));
    String str;
    do
    {
      return false;
      str = paramString.trim();
    }
    while ((str.equalsIgnoreCase("unknown")) || (str.equalsIgnoreCase("null")) || (str.matches("[0]+")) || (str.length() <= 5));
    return true;
  }

  private static boolean b()
  {
    try
    {
      Object localObject2 = Class.forName("android.os.SystemProperties").getMethod("get", new Class[] { String.class }).invoke(null, new Object[] { "ro.secure" });
      localObject1 = localObject2;
      if ((localObject1 != null) && ("1".equals(localObject1)));
      while ((localObject1 == null) || (!"0".equals(localObject1)))
        return false;
      return true;
    }
    catch (Exception localException)
    {
      while (true)
        Object localObject1 = null;
    }
  }

  private static boolean b(String paramString)
  {
    return (paramString == null) || (paramString.trim().length() == 0);
  }

  private String c()
  {
    SharedPreferences localSharedPreferences = this.b.getSharedPreferences(this.b.getPackageName() + ".config", 0);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    TelephonyManager localTelephonyManager = (TelephonyManager)this.b.getSystemService("phone");
    String str1 = localTelephonyManager.getDeviceId();
    new StringBuilder("origin imei:").append(str1).toString();
    this.i = str1;
    String str2 = localTelephonyManager.getSubscriberId();
    new StringBuilder("origin imsi:").append(str2).toString();
    this.j = str2;
    String str3 = localSharedPreferences.getString("clientId", "");
    new StringBuilder("saved clientid:").append(str3).toString();
    String str5;
    if (c(str3))
    {
      new StringBuilder("client id is valid:").append(str3).toString();
      str5 = str3.substring(0, 15);
      if (!a(str2))
        break label545;
      String str11 = e(str2);
      if (str11.length() > 15)
        str11 = str11.substring(0, 15);
      if (str5.startsWith(str11))
        break label545;
    }
    label545: for (String str6 = str2; ; str6 = str5)
    {
      String str7 = str3.substring(-15 + str3.length(), str3.length());
      if (a(str1))
      {
        String str10 = e(str1);
        if (str10.length() > 15)
          str10 = str10.substring(0, 15);
        if (str7.startsWith(str10));
      }
      for (String str8 = str1; ; str8 = str7)
      {
        new StringBuilder("client id is valid:").append(str6).append("|").append(str8).toString();
        String str9 = a(str6, str8);
        new StringBuilder("normarlize, imsi:").append(str2).append(",imei:").append(str1).append(",newClientId:").append(str9).toString();
        localEditor.putString("clientId", str9);
        localEditor.commit();
        return str9;
        new StringBuilder("client is is not valid, imei:").append(str1).append(",imsi:").append(str2).toString();
        if (!a(str1))
          str1 = getTimeStamp();
        if (!a(str2))
          str2 = getTimeStamp();
        String str4 = a(str2, str1);
        new StringBuilder("normalize, imei:").append(str1).append(",imsi:").append(str2).append(",newClientId:").append(str4).toString();
        localEditor.putString("clientId", str4);
        localEditor.commit();
        return str4;
      }
    }
  }

  private static boolean c(String paramString)
  {
    if (b(paramString))
      return false;
    return paramString.matches("[[a-z][A-Z][0-9]]{15}\\|[[a-z][A-Z][0-9]]{15}");
  }

  public static DeviceInfo createInstance(Context paramContext)
  {
    try
    {
      DeviceInfo localDeviceInfo1;
      SharedPreferences localSharedPreferences;
      String str;
      if (a == null)
      {
        localDeviceInfo1 = new DeviceInfo(paramContext);
        a = localDeviceInfo1;
        DisplayMetrics localDisplayMetrics = localDeviceInfo1.b.getResources().getDisplayMetrics();
        localDeviceInfo1.c = localDisplayMetrics.widthPixels;
        localDeviceInfo1.d = localDisplayMetrics.heightPixels;
        localDeviceInfo1.e = localDisplayMetrics.densityDpi;
        localDeviceInfo1.f = localDeviceInfo1.c();
        localDeviceInfo1.g = localDeviceInfo1.d();
        localDeviceInfo1.h = localDeviceInfo1.e();
        localSharedPreferences = localDeviceInfo1.b.getSharedPreferences(localDeviceInfo1.b.getPackageName() + ".config", 0);
        str = localSharedPreferences.getString("clientKey", "");
        if ("".equals(str))
          break label221;
      }
      while (true)
      {
        localDeviceInfo1.q = str;
        new Thread(new DeviceInfo.1(localDeviceInfo1)).start();
        localDeviceInfo1.k = Build.BRAND;
        localDeviceInfo1.m = Build.MODEL;
        localDeviceInfo1.n = Build.VERSION.RELEASE;
        localDeviceInfo1.o = b();
        localDeviceInfo1.v = ((WifiManager)localDeviceInfo1.b.getSystemService("wifi"));
        DeviceInfo localDeviceInfo2 = a;
        return localDeviceInfo2;
        label221: str = localDeviceInfo1.a();
        localSharedPreferences.edit().putString("clientKey", str).commit();
      }
    }
    finally
    {
    }
  }

  private String d()
  {
    if (c(this.f))
      return this.f.substring(-15 + this.f.length());
    return "";
  }

  private String d(String paramString)
  {
    if (!a(paramString))
      paramString = getTimeStamp();
    return e((paramString + "123456789012345").substring(0, 15));
  }

  private String e()
  {
    if (c(this.f))
      return this.f.substring(0, -1 + (-15 + this.f.length()));
    return "";
  }

  private static String e(String paramString)
  {
    if (b(paramString))
      return paramString;
    byte[] arrayOfByte = paramString.getBytes();
    int i1 = 0;
    if (i1 < arrayOfByte.length)
    {
      int i2 = arrayOfByte[i1];
      if (((i2 >= 48) && (i2 <= 57)) || ((i2 >= 97) && (i2 <= 122)) || ((i2 >= 65) && (i2 <= 90)));
      for (int i3 = 1; ; i3 = 0)
      {
        if (i3 == 0)
          arrayOfByte[i1] = 48;
        i1++;
        break;
      }
    }
    return new String(arrayOfByte);
  }

  public static DeviceInfo getInstance()
  {
    try
    {
      if (a == null)
        throw new IllegalStateException("DeviceManager must be create by call createInstance(Context context)");
    }
    finally
    {
    }
    DeviceInfo localDeviceInfo = a;
    return localDeviceInfo;
  }

  public static void getSecurityInstance()
  {
    try
    {
      if ((!t) && (a != null))
      {
        DeviceInfo localDeviceInfo = a;
        localDeviceInfo.f = localDeviceInfo.c();
        localDeviceInfo.g = localDeviceInfo.d();
        localDeviceInfo.h = localDeviceInfo.e();
        t = true;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public String getAccessPoint()
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)this.b.getSystemService("connectivity")).getActiveNetworkInfo();
      localObject = localNetworkInfo.getExtraInfo();
      if ((localObject == null) || (((String)localObject).indexOf("none") != -1))
      {
        String str = localNetworkInfo.getTypeName();
        localObject = str;
      }
      return ((String)localObject).replace("internet", "wifi").replace("\"", "");
    }
    catch (Exception localException)
    {
      while (true)
        Object localObject = "wifi";
    }
  }

  public String getCellInfo()
  {
    try
    {
      CellLocation localCellLocation = ((TelephonyManager)this.b.getSystemService("phone")).getCellLocation();
      if (localCellLocation != null)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        if ((localCellLocation instanceof GsmCellLocation))
        {
          GsmCellLocation localGsmCellLocation = (GsmCellLocation)localCellLocation;
          int i2 = localGsmCellLocation.getCid();
          localStringBuilder.append(localGsmCellLocation.getLac());
          localStringBuilder.append(";");
          localStringBuilder.append(i2);
          return localStringBuilder.toString();
        }
        if ((localCellLocation instanceof CdmaCellLocation))
        {
          CdmaCellLocation localCdmaCellLocation = (CdmaCellLocation)localCellLocation;
          int i1 = localCdmaCellLocation.getBaseStationLatitude();
          localStringBuilder.append(localCdmaCellLocation.getBaseStationLongitude());
          localStringBuilder.append(";");
          localStringBuilder.append(i1);
          String str = localStringBuilder.toString();
          return str;
        }
      }
    }
    catch (Exception localException)
    {
    }
    return "-1;-1";
  }

  public String getClientId()
  {
    return this.f;
  }

  public String getDefImei()
  {
    return this.i;
  }

  public String getDefImsi()
  {
    return this.j;
  }

  public int getDencity()
  {
    return this.e;
  }

  public String getExternalStoragePath(String paramString)
  {
    if (Environment.getExternalStorageState().equals("mounted"))
    {
      String str = Environment.getExternalStorageDirectory().getPath() + File.separatorChar + this.b.getPackageName();
      File localFile1 = new File(str);
      if ((!localFile1.exists()) && (!localFile1.mkdir()))
        new StringBuilder("fail to creat ").append(paramString).append(" dir:").append(str).toString();
      File localFile2;
      do
      {
        return str;
        if (!localFile1.isDirectory())
        {
          new StringBuilder().append(paramString).append(" dir exist,but not directory:").append(str).toString();
          return null;
        }
        str = str + File.separatorChar + paramString;
        localFile2 = new File(str);
        if ((!localFile2.exists()) && (!localFile2.mkdir()))
        {
          new StringBuilder("fail to creat ").append(paramString).append(" dir:").append(str).toString();
          return str;
        }
      }
      while (localFile2.isDirectory());
      new StringBuilder().append(paramString).append(" dir exist,but not directory:").append(str).toString();
      return null;
    }
    return null;
  }

  public String getImei()
  {
    return this.g;
  }

  public String getImsi()
  {
    return this.h;
  }

  public String getKey()
  {
    return new SimpleDateFormat("MMddHHmmss", Locale.getDefault()).format(new Date());
  }

  public String getLatitude()
  {
    LBSLocation localLBSLocation = LBSLocationManagerProxy.getInstance().getLastKnownLocation(this.b);
    if (localLBSLocation != null)
      return String.valueOf(localLBSLocation.getLatitude());
    return null;
  }

  public String getLongitude()
  {
    LBSLocation localLBSLocation = LBSLocationManagerProxy.getInstance().getLastKnownLocation(this.b);
    if (localLBSLocation != null)
      return String.valueOf(localLBSLocation.getLongitude());
    return null;
  }

  public String getMacAddress()
  {
    return this.v.getConnectionInfo().getMacAddress();
  }

  public String getOperator()
  {
    String str;
    if (this.l == null)
    {
      str = ((TelephonyManager)this.b.getSystemService("phone")).getSubscriberId();
      if (str == null)
        return "unknown";
      if ((!str.startsWith("46000")) && (!str.startsWith("46002")) && (!str.startsWith("46007")))
        break label72;
      this.l = "cmcc";
    }
    while (true)
    {
      return this.l;
      label72: if (str.startsWith("46001"))
        this.l = "cucc";
      else if (str.startsWith("46003"))
        this.l = "ctcc";
      else
        this.l = "unknown";
    }
  }

  public String getOsVersion()
  {
    return Build.VERSION.RELEASE;
  }

  public String getSSID()
  {
    return this.v.getConnectionInfo().getSSID();
  }

  public int getScreenHeight()
  {
    return this.d;
  }

  public int getScreenWidth()
  {
    return this.c;
  }

  public String getTimeStamp()
  {
    return this.u.format(Long.valueOf(System.currentTimeMillis()));
  }

  public String getUserAgent()
  {
    return Build.MANUFACTURER + Build.MODEL;
  }

  public String getmClientKey()
  {
    return this.q;
  }

  public String getmDid()
  {
    if (this.r.get());
    synchronized (this.s)
    {
      try
      {
        this.s.wait();
        if ((this.p == null) || ("".equals(this.p)))
          return this.f + "|" + this.q;
      }
      catch (InterruptedException localInterruptedException)
      {
        while (true)
          localInterruptedException.printStackTrace();
      }
    }
    return this.p;
  }

  public String getmMobileBrand()
  {
    return this.k;
  }

  public String getmMobileModel()
  {
    return this.m;
  }

  public int getmScreenHeight()
  {
    return this.d;
  }

  public int getmScreenWidth()
  {
    return this.c;
  }

  public String getmSystemVersion()
  {
    return this.n;
  }

  public void installApk(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.addFlags(268435456);
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.setDataAndType(Uri.fromFile(new File(paramString)), "application/vnd.android.package-archive");
    this.b.startActivity(localIntent);
  }

  public boolean isInstalled(String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = this.b.getPackageManager().getPackageInfo(paramString, 0);
      boolean bool = false;
      if (localPackageInfo != null)
        bool = true;
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return false;
  }

  public boolean ismRooted()
  {
    return this.o;
  }

  public String refleshClientKey()
  {
    SharedPreferences localSharedPreferences = this.b.getSharedPreferences(this.b.getPackageName() + ".config", 0);
    String str = a();
    localSharedPreferences.edit().putString("clientKey", str).commit();
    this.q = str;
    return str;
  }

  public void setDefImei(String paramString)
  {
    this.i = paramString;
  }

  public void setDefImsi(String paramString)
  {
    this.j = paramString;
  }

  public void setmDid(String paramString)
  {
    this.p = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.info.DeviceInfo
 * JD-Core Version:    0.6.2
 */