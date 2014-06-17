package android.taobao.service.appdevice.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.provider.Settings.Secure;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import java.lang.reflect.Method;
import java.util.Random;

public class PhoneInfo
{
  public static final String IMEI = "imei";
  public static final String IMSI = "imsi";
  public static final String MACADDRESS = "mac_address";

  private static String a()
  {
    StringBuffer localStringBuffer1 = new StringBuffer();
    long l1 = System.currentTimeMillis();
    String str = Long.toString(l1);
    localStringBuffer1.append(str.substring(-5 + str.length()));
    StringBuffer localStringBuffer2 = new StringBuffer();
    localStringBuffer2.append(Build.MODEL.replaceAll(" ", ""));
    while (localStringBuffer2.length() < 6)
      localStringBuffer2.append('0');
    localStringBuffer1.append(localStringBuffer2.substring(0, 6));
    Random localRandom = new Random(l1);
    for (long l2 = 0L; l2 < 4096L; l2 = localRandom.nextLong());
    localStringBuffer1.append(Long.toHexString(l2).substring(0, 4));
    return localStringBuffer1.toString();
  }

  public static boolean checkNetWork(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager == null);
    NetworkInfo[] arrayOfNetworkInfo;
    do
    {
      return false;
      arrayOfNetworkInfo = localConnectivityManager.getAllNetworkInfo();
    }
    while (arrayOfNetworkInfo == null);
    int i = arrayOfNetworkInfo.length;
    int j = 0;
    if (j < i)
    {
      NetworkInfo localNetworkInfo = arrayOfNetworkInfo[j];
      if (localNetworkInfo != null)
      {
        NetworkInfo.State localState = localNetworkInfo.getState();
        if ((localState == null) || ((localState != NetworkInfo.State.CONNECTED) && (localState != NetworkInfo.State.CONNECTING)));
      }
    }
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      j++;
      break;
    }
  }

  public static String getAndroidId(Context paramContext)
  {
    return Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
  }

  public static String getImei(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("imei", 0);
    String str1 = localSharedPreferences.getString("imei", null);
    if ((str1 == null) || (str1.length() == 0))
    {
      String str2 = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
      if ((str2 == null) || (str2.length() == 0))
        str2 = a();
      for (str1 = str2.replaceAll(" ", "").trim(); str1.length() < 15; str1 = "0" + str1);
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putString("imei", str1);
      localEditor.commit();
    }
    return str1.trim();
  }

  public static String getImsi(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("imei", 0);
    String str1 = localSharedPreferences.getString("imsi", null);
    if ((str1 == null) || (str1.length() == 0))
    {
      String str2 = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
      if ((str2 == null) || (str2.length() == 0))
        str2 = a();
      for (str1 = str2.replaceAll(" ", "").trim(); str1.length() < 15; str1 = "0" + str1);
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putString("imsi", str1);
      localEditor.commit();
    }
    return str1;
  }

  public static String getLocalMacAddress(Context paramContext)
  {
    String str = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo().getMacAddress();
    if ((str == null) || ("".equals(str)))
      return paramContext.getSharedPreferences("mac_address", 0).getString("mac_address", "");
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("mac_address", 0).edit();
    localEditor.putString("mac_address", str);
    localEditor.commit();
    return str;
  }

  public static String getOriginalImei(Context paramContext)
  {
    String str = ((TelephonyManager)paramContext.getSystemService("phone")).getDeviceId();
    if (str != null)
      str = str.trim();
    return str;
  }

  public static String getOriginalImsi(Context paramContext)
  {
    String str = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
    if (str != null)
      str = str.trim();
    return str;
  }

  public static String getSerialNum()
  {
    try
    {
      Class localClass = Class.forName("android.os.SystemProperties");
      String str = (String)localClass.getMethod("get", new Class[] { String.class, String.class }).invoke(localClass, new Object[] { "ro.serialno", "unknown" });
      return str;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public static boolean hasWap(Context paramContext)
  {
    for (NetworkInfo localNetworkInfo : ((ConnectivityManager)paramContext.getSystemService("connectivity")).getAllNetworkInfo())
      if (localNetworkInfo != null)
      {
        NetworkInfo.State localState = localNetworkInfo.getState();
        if ((NetworkInfo.State.CONNECTED == localState) && (localNetworkInfo.getType() == 0))
        {
          String str = localNetworkInfo.getExtraInfo();
          if (TextUtils.isEmpty(str))
            return false;
          return str.toUpperCase().indexOf("WAP") != -1;
        }
      }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.util.PhoneInfo
 * JD-Core Version:    0.6.2
 */