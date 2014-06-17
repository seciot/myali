package com.taobao.securityjni.tools;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import java.util.Random;

public class PhoneInfo
{
  public static final String IMEI = "dynamicreid";
  public static final String IMSI = "dynamicrsid";

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

  public static String getBssid(Context paramContext)
  {
    try
    {
      WifiInfo localWifiInfo = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
      if (localWifiInfo == null)
        return "";
      String str = localWifiInfo.getBSSID();
      if (str != null)
        return str.trim();
      return "";
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  public static String getCellId(Context paramContext)
  {
    try
    {
      CellLocation localCellLocation = ((TelephonyManager)paramContext.getSystemService("phone")).getCellLocation();
      if ((localCellLocation != null) && ((localCellLocation instanceof GsmCellLocation)))
      {
        int i = ((GsmCellLocation)localCellLocation).getCid();
        int j = ((GsmCellLocation)localCellLocation).getLac();
        if ((i != -1) && (j != -1))
        {
          StringBuffer localStringBuffer = new StringBuffer();
          localStringBuffer.append(i);
          localStringBuffer.append(j);
          String str = localStringBuffer.toString();
          return str;
        }
      }
    }
    catch (Exception localException)
    {
    }
    return "";
  }

  public static String getImei(Context paramContext)
  {
    return "111111111111111";
  }

  public static String getImsi(Context paramContext)
  {
    return "111111111111111";
  }

  public static String getSecImei(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("dynamicreid", 0);
    String str = localSharedPreferences.getString("dynamicreid", null);
    if ((str == null) || (str.length() == 0))
    {
      str = a();
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putString("dynamicreid", str);
      localEditor.commit();
    }
    return str.trim();
  }

  public static String getSecImsi(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("dynamicrsid", 0);
    String str = localSharedPreferences.getString("dynamicrsid", null);
    if ((str == null) || (str.length() == 0))
    {
      str = a();
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putString("dynamicrsid", str);
      localEditor.commit();
    }
    return str.trim();
  }

  public static String getSsid(Context paramContext)
  {
    try
    {
      WifiInfo localWifiInfo = ((WifiManager)paramContext.getSystemService("wifi")).getConnectionInfo();
      if (localWifiInfo == null)
        return "";
      String str = localWifiInfo.getSSID();
      if (str != null)
        return str.trim();
      return "";
    }
    catch (Exception localException)
    {
    }
    return "";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.tools.PhoneInfo
 * JD-Core Version:    0.6.2
 */