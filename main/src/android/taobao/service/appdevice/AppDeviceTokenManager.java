package android.taobao.service.appdevice;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.taobao.service.appdevice.net.mtop.IMtopSynClient;
import android.taobao.service.appdevice.net.mtop.MtopRequest;
import android.taobao.service.appdevice.net.mtop.MtopSyncClientV3;
import android.taobao.service.appdevice.net.mtop.Result;
import android.taobao.service.appdevice.util.LogHelper;
import android.taobao.service.appdevice.util.MTopUtils;
import android.taobao.service.appdevice.util.PhoneInfo;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.util.HashMap;

public final class AppDeviceTokenManager
  implements IAppDeviceTokenManager
{
  private static AppDeviceTokenManager a;
  private static HashMap<String, String> c = new HashMap();
  private String b;

  private static String a(String paramString)
  {
    return String.format("deviceId_jsoniInfo:%s", new Object[] { paramString });
  }

  public static AppDeviceTokenManager getInstance()
  {
    try
    {
      if (a == null)
        a = new AppDeviceTokenManager();
      AppDeviceTokenManager localAppDeviceTokenManager = a;
      return localAppDeviceTokenManager;
    }
    finally
    {
    }
  }

  public final void clear(Context paramContext, String paramString)
  {
    String str = a(paramString);
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("deviceId_store", 0).edit();
    localEditor.remove(str);
    localEditor.commit();
    c.remove(str);
  }

  public final String getAppDeviceToken(Context paramContext, String paramString)
  {
    return getAppDeviceToken(paramContext, paramString, null);
  }

  public final String getAppDeviceToken(Context paramContext, String paramString1, String paramString2)
  {
    String str1;
    if (paramContext != null)
    {
      str1 = paramContext.getSharedPreferences("deviceId_store", 0).getString(a(paramString1), null);
      LogHelper.Logi("DeviceIdManager", "mydeviceId  getSharedPreferences  deviceInfo:" + str1);
    }
    while (true)
    {
      if (TextUtils.isEmpty(str1))
      {
        MtopRequest localMtopRequest = new MtopRequest();
        localMtopRequest.setApi("mtop.sys.newDeviceId");
        localMtopRequest.setV("4.0");
        localMtopRequest.setTtId(getTtId(paramContext, paramString1));
        localMtopRequest.putParams("new_device", "true");
        String str2 = this.b;
        boolean bool1 = TextUtils.isEmpty(str2);
        String str3 = null;
        if (bool1);
        while (true)
        {
          SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("deviceId_store", 0).edit();
          String str4 = a(paramString1);
          localEditor.putString(str4, str3);
          localEditor.commit();
          c.put(str4, str3);
          return str3;
          localMtopRequest.putParams("device_global_id", str2);
          localMtopRequest.putParams("c0", Build.BRAND);
          localMtopRequest.putParams("c1", Build.MODEL);
          localMtopRequest.putParams("c2", PhoneInfo.getOriginalImei(paramContext));
          localMtopRequest.putParams("c3", PhoneInfo.getOriginalImsi(paramContext));
          localMtopRequest.putParams("c4", PhoneInfo.getLocalMacAddress(paramContext));
          localMtopRequest.putParams("c5", PhoneInfo.getSerialNum());
          localMtopRequest.putParams("c6", PhoneInfo.getAndroidId(paramContext));
          MtopSyncClientV3 localMtopSyncClientV3 = new MtopSyncClientV3();
          localMtopSyncClientV3.setDefaultAppkey(paramString1);
          localMtopSyncClientV3.setDefaultAppSecret(paramString2);
          localMtopSyncClientV3.setBaseUrl(MTopUtils.getMTopUrl(paramContext));
          Result localResult = localMtopSyncClientV3.getV3(paramContext, localMtopRequest);
          LogHelper.Logi("DeviceIdManager", "data:[" + localResult.toString() + "]");
          boolean bool2 = localResult.isSuccess();
          str3 = null;
          if (bool2)
            str3 = JSON.parseObject(localResult.getData()).getString("device_id");
        }
      }
      return str1;
      str1 = null;
    }
  }

  public final String getTtId(Context paramContext, String paramString)
  {
    String str = null;
    if (paramContext != null)
      str = paramContext.getSharedPreferences("deviceid_app_tt_id", 0).getString(paramString, null);
    return str;
  }

  public final void setAppTTID(Context paramContext, String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = paramContext.getSharedPreferences("deviceid_app_tt_id", 0).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }

  public final void setDeviceUTDID(Context paramContext, String paramString)
  {
    this.b = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.AppDeviceTokenManager
 * JD-Core Version:    0.6.2
 */