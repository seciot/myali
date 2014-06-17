package com.amap.api.location.core;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import com.amap.api.location.AMapLocation;

public class c
{
  public static String a = "V1.0.5";
  public static String b = "AMAP Location SDK Android 1.0.5";
  public static String c = "http://restapi.amap.com";
  static int d = 2048;

  public static void a(Context paramContext, AMapLocation paramAMapLocation)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("last_know_location", 0).edit();
    localEditor.putString("last_know_lat", String.valueOf(paramAMapLocation.getLatitude()));
    localEditor.putString("last_know_lng", String.valueOf(paramAMapLocation.getLongitude()));
    localEditor.putString("province", paramAMapLocation.getProvince());
    localEditor.putString("city", paramAMapLocation.getCity());
    localEditor.putString("district", paramAMapLocation.getDistrict());
    localEditor.putString("cityCode", paramAMapLocation.getCityCode());
    localEditor.putString("adCode", paramAMapLocation.getAdCode());
    localEditor.putFloat("accuracy", paramAMapLocation.getAccuracy());
    localEditor.putLong("time", paramAMapLocation.getTime());
    localEditor.commit();
  }

  public static boolean a(Context paramContext)
  {
    if (paramContext == null)
      return false;
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    if (localConnectivityManager == null)
      return false;
    NetworkInfo localNetworkInfo = localConnectivityManager.getActiveNetworkInfo();
    if (localNetworkInfo == null)
      return false;
    NetworkInfo.State localState = localNetworkInfo.getState();
    return (localState != null) && (localState != NetworkInfo.State.DISCONNECTED) && (localState != NetworkInfo.State.DISCONNECTING);
  }

  public static AMapLocation b(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("last_know_location", 0);
    AMapLocation localAMapLocation = new AMapLocation("");
    localAMapLocation.setProvider("lbs");
    double d1 = Double.parseDouble(localSharedPreferences.getString("last_know_lat", "0.0"));
    double d2 = Double.parseDouble(localSharedPreferences.getString("last_know_lng", "0.0"));
    localAMapLocation.setLatitude(d1);
    localAMapLocation.setLongitude(d2);
    localAMapLocation.setProvince(localSharedPreferences.getString("province", ""));
    localAMapLocation.setCity(localSharedPreferences.getString("city", ""));
    localAMapLocation.setDistrict(localSharedPreferences.getString("district", ""));
    localAMapLocation.setCityCode(localSharedPreferences.getString("cityCode", ""));
    localAMapLocation.setAdCode(localSharedPreferences.getString("adCode", ""));
    localAMapLocation.setAccuracy(localSharedPreferences.getFloat("accuracy", 0.0F));
    localAMapLocation.setTime(localSharedPreferences.getLong("time", 0L));
    return localAMapLocation;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.amap.api.location.core.c
 * JD-Core Version:    0.6.2
 */