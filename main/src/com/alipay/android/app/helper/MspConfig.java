package com.alipay.android.app.helper;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.net.Uri;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import android.widget.TextView;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.R.string;
import com.alipay.android.app.pay.GlobalConstant;
import com.alipay.android.app.sys.DeviceInfo;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.sys.NetConnectionType;
import com.alipay.android.app.sys.UserLocation;
import com.alipay.android.app.tid.TidInfo;
import com.alipay.android.app.util.BaseHelper;
import com.alipay.android.lib.plusin.protocol.ProtocolType;
import com.alipay.mobilesecuritysdk.face.SecurityClientMobile;
import java.io.File;
import java.util.HashMap;
import java.util.Random;

public class MspConfig
  implements IAppConfig
{
  private static MspConfig a;
  private String b;
  private String c = "9.0.5";
  private boolean d = false;
  private String e = "embeded-and";
  private String f;

  public static MspConfig u()
  {
    if (a == null)
      a = new MspConfig();
    return a;
  }

  public static String v()
  {
    Context localContext = GlobalContext.a().b();
    SharedPreferences localSharedPreferences = localContext.getSharedPreferences("virtualImeiAndImsi", 0);
    String str = localSharedPreferences.getString("virtual_imei", null);
    if (TextUtils.isEmpty(str))
      if (!TidInfo.g().e())
        break label67;
    label67: for (str = y(); ; str = DeviceInfo.a(localContext).c())
    {
      localSharedPreferences.edit().putString("virtual_imei", str).commit();
      return str;
    }
  }

  public static String w()
  {
    Context localContext = GlobalContext.a().b();
    SharedPreferences localSharedPreferences = localContext.getSharedPreferences("virtualImeiAndImsi", 0);
    String str = localSharedPreferences.getString("virtual_imsi", null);
    if (TextUtils.isEmpty(str))
      if (!TidInfo.g().e())
        break label67;
    label67: for (str = y(); ; str = DeviceInfo.a(localContext).b())
    {
      localSharedPreferences.edit().putString("virtual_imsi", str).commit();
      return str;
    }
  }

  public static String x()
  {
    return "alipay";
  }

  private static String y()
  {
    String str = Long.toHexString(System.currentTimeMillis());
    Random localRandom = new Random();
    return str + (1000 + localRandom.nextInt(9000));
  }

  public final String a()
  {
    if (c());
    for (String str = GlobalContext.a().b().getExternalCacheDir().getAbsolutePath(); ; str = GlobalContext.a().b().getFilesDir().getAbsolutePath())
      return str + File.separator + "alipay" + File.separator + "logs" + File.separator;
  }

  public final String a(TidInfo paramTidInfo)
  {
    Context localContext = GlobalContext.a().b();
    DeviceInfo localDeviceInfo = DeviceInfo.a(localContext);
    if (TextUtils.isEmpty(this.c))
      this.c = localDeviceInfo.a();
    if (TextUtils.isEmpty(this.b))
    {
      String str14 = "Msp/" + this.c;
      String str15 = DeviceInfo.f();
      String str16 = BaseHelper.a();
      String str17 = BaseHelper.a(localContext);
      String str18 = BaseHelper.b();
      String str19 = BaseHelper.b(localContext);
      String str20 = Float.toString(new TextView(localContext).getTextSize());
      this.b = (str14 + " (" + str15 + ";" + str16 + ";" + str17 + ";" + str18 + ";" + str19 + ";" + str20);
    }
    String str1 = DeviceInfo.b(localContext).a();
    String str2 = BaseHelper.c(localContext);
    String str3 = GlobalConstant.SID;
    String str4 = localDeviceInfo.b();
    String str5 = localDeviceInfo.c();
    String str6 = w();
    String str7 = v();
    String str8;
    String str9;
    boolean bool;
    String str10;
    String str11;
    label298: WifiInfo localWifiInfo2;
    if (paramTidInfo != null)
    {
      this.f = paramTidInfo.b();
      str8 = Build.MANUFACTURER.replace(";", " ");
      str9 = Build.MODEL.replace(";", " ");
      bool = GlobalContext.f();
      str10 = localDeviceInfo.d();
      WifiInfo localWifiInfo1 = ((WifiManager)localContext.getSystemService("wifi")).getConnectionInfo();
      if (localWifiInfo1 == null)
        break label603;
      str11 = localWifiInfo1.getSSID();
      localWifiInfo2 = ((WifiManager)localContext.getSystemService("wifi")).getConnectionInfo();
      if (localWifiInfo2 == null)
        break label611;
    }
    label603: label611: for (String str12 = localWifiInfo2.getBSSID(); ; str12 = "00")
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.b).append(";").append(str1).append(";").append(str2).append(";").append(str3).append(";").append(str4).append(";").append(str5).append(";").append(this.f).append(";").append(str8).append(";").append(str9).append(";").append(bool).append(";").append(str10).append(";").append(UserLocation.a()).append(";").append(this.e).append(";").append(str6).append(";").append(str7).append(";").append(str11).append(";").append(str12);
      if (paramTidInfo != null)
      {
        HashMap localHashMap = new HashMap();
        localHashMap.put("tid", paramTidInfo.a());
        localHashMap.put("utdid", GlobalContext.a().i());
        String str13 = SecurityClientMobile.a(localContext, localHashMap);
        if (!TextUtils.isEmpty(str13))
          localStringBuilder.append(";").append(str13);
      }
      localStringBuilder.append(")");
      return localStringBuilder.toString();
      this.f = TidInfo.i();
      break;
      str11 = "-1";
      break label298;
    }
  }

  public final void a(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return;
    PreferenceManager.getDefaultSharedPreferences(GlobalContext.a().b()).edit().putString("trideskey", paramString).commit();
    GlobalConstant.RSA_PUBLIC = paramString;
  }

  public final void a(boolean paramBoolean)
  {
    this.d = paramBoolean;
    if (paramBoolean)
    {
      Cursor localCursor = GlobalContext.a().b().getContentResolver().query(Uri.parse("content://com.alipay.setting/SafePayServerUrl"), null, null, null, null);
      if ((localCursor != null) && (localCursor.getCount() > 0))
      {
        if (localCursor.moveToFirst())
        {
          String str = localCursor.getString(0);
          GlobalConstant.HTTP_URL = str;
          if (TextUtils.equals(str, "https://mclientpre.alipay.com/gateway.do"))
            GlobalConstant.PRE = true;
        }
        localCursor.close();
      }
    }
  }

  public final int b()
  {
    return 20480;
  }

  public final void b(String paramString)
  {
    this.c = paramString;
  }

  public final boolean c()
  {
    if (this.d)
      return this.d;
    return GlobalConstant.DEBUG;
  }

  public final int d()
  {
    return GlobalConstant.TID_COUNT;
  }

  public final String e()
  {
    return GlobalConstant.RSA_PUBLIC;
  }

  public final String f()
  {
    return GlobalConstant.HTTP_URL;
  }

  public final int g()
  {
    return GlobalConstant.HTTP_CONNECTION_TIMEOUT;
  }

  public final int h()
  {
    return GlobalConstant.HTTP_SO_TIMEOUT;
  }

  public final int i()
  {
    return GlobalConstant.HTTP_SOCKET_BUFFER_SIZE;
  }

  public final boolean j()
  {
    return GlobalConstant.PRE;
  }

  public final String k()
  {
    return GlobalConstant.NAMESPACE;
  }

  public final String l()
  {
    return GlobalConstant.API_NAME;
  }

  public final String m()
  {
    return GlobalConstant.API_VERSION;
  }

  public final String n()
  {
    return GlobalContext.a().b(R.string.y);
  }

  public final String o()
  {
    return GlobalContext.a().b(R.string.x);
  }

  public final String p()
  {
    return GlobalContext.a().b(R.string.w);
  }

  public final boolean q()
  {
    return GlobalContext.a().b().getSharedPreferences("global_settings", 0).getBoolean("is_sim_imsi", false);
  }

  public final boolean r()
  {
    return GlobalContext.a().b().getSharedPreferences("global_settings", 0).getBoolean("is_sim_no_imsi", false);
  }

  public final ProtocolType s()
  {
    return ProtocolType.b;
  }

  public final String t()
  {
    return this.f;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.helper.MspConfig
 * JD-Core Version:    0.6.2
 */