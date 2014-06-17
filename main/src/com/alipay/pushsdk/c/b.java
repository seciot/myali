package com.alipay.pushsdk.c;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import com.alipay.pushsdk.data.NotifierInfo;
import com.alipay.pushsdk.data.a;
import com.alipay.pushsdk.data.e;
import com.alipay.pushsdk.data.f;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class b
{
  private static final String a = com.alipay.pushsdk.c.a.c.a(b.class);
  private Context b;

  public b(Context paramContext)
  {
    this.b = paramContext;
  }

  public static NotifierInfo a(JSONObject paramJSONObject, boolean paramBoolean)
  {
    NotifierInfo localNotifierInfo = new NotifierInfo();
    localNotifierInfo.a("1127");
    localNotifierInfo.b(paramJSONObject.optString("title"));
    localNotifierInfo.c(paramJSONObject.optString("content"));
    localNotifierInfo.d(paramJSONObject.optString("snd"));
    localNotifierInfo.e(paramJSONObject.optString("uri"));
    localNotifierInfo.f(paramJSONObject.optString("style"));
    localNotifierInfo.g(paramJSONObject.optString("bizType"));
    com.alipay.pushsdk.data.b localb = new com.alipay.pushsdk.data.b();
    if (paramBoolean)
    {
      localb.b(paramJSONObject.optString("notificationId"));
      localb.a(paramJSONObject.optString("notificationId"));
    }
    while (true)
    {
      localNotifierInfo.a(localb);
      com.alipay.pushsdk.c.a.c.a(3, a, "processMsgList() curPerMsgId=" + localb.c() + ", bizType=" + localNotifierInfo.f() + ", uri=" + localNotifierInfo.d() + ", title=" + localNotifierInfo.a() + ", content=" + localNotifierInfo.b());
      return localNotifierInfo;
      localb.d(paramJSONObject.optString("notificationMissionId"));
      localb.c(paramJSONObject.optString("notificationId"));
      localb.a(paramJSONObject.optString("k"));
    }
  }

  private static boolean a(Context paramContext)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    try
    {
      Field localField = Class.forName(localConnectivityManager.getClass().getName()).getDeclaredField("mService");
      localField.setAccessible(true);
      Object localObject = localField.get(localConnectivityManager);
      Method localMethod = Class.forName(localObject.getClass().getName()).getDeclaredMethod("getMobileDataEnabled", new Class[0]);
      localMethod.setAccessible(true);
      boolean bool = ((Boolean)localMethod.invoke(localObject, new Object[0])).booleanValue();
      return bool;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      return false;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      while (true)
        localNoSuchFieldException.printStackTrace();
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        localSecurityException.printStackTrace();
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  public final long a(String paramString)
  {
    long l = 0L;
    String str = d.a(this.b).a(paramString);
    if ((str != null) && (str.length() > 0))
      l = Long.parseLong(str);
    return l;
  }

  public final a a()
  {
    a locala = new a();
    d locald = d.a(this.b);
    String str1 = locald.a("pushCfgId");
    if ((str1 != null) && (str1.length() > 0))
      locala.a = str1;
    String str2 = locald.a("XMPP_HOST");
    if ((str2 != null) && (str2.length() > 0))
      locala.b = str2;
    String str3 = locald.a("XMPP_PORT");
    if ((str3 != null) && (str3.length() > 0))
      locala.c = Integer.valueOf(str3).intValue();
    String str4 = locald.a("PROTOCOL_VERSION");
    if ((str4 != null) && (str4.length() > 0))
      locala.f = Integer.valueOf(str4).intValue();
    String str5 = locald.a("SSL_USED");
    if ((str5 != null) && (str5.length() > 0))
      locala.d = str5;
    String str6 = locald.a("ZIP_FLAG");
    if ((str6 != null) && (str6.length() > 0))
      locala.e = str6;
    com.alipay.pushsdk.c.a.c.a(4, a, "cfgId:" + locala.a + ", domain:" + locala.b + ", port:" + locala.c + ", ssl:" + locala.d + ", protoVersion:" + locala.f);
    return locala;
  }

  public final void a(NotifierInfo paramNotifierInfo, String paramString)
  {
    com.alipay.pushsdk.data.b localb = paramNotifierInfo.g();
    if (localb.b().length() > 0);
    for (Object localObject = new f(this.b); ; localObject = new e(this.b))
    {
      ((com.alipay.pushsdk.data.c)localObject).a(new com.alipay.pushsdk.push.h(this.b).a());
      if (((com.alipay.pushsdk.data.c)localObject).a(paramNotifierInfo))
        break;
      ((com.alipay.pushsdk.data.c)localObject).b(paramNotifierInfo);
      com.alipay.pushsdk.c.a.c.a(4, a, "processMsgList() will show msg.");
      Intent localIntent = new Intent(paramString);
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("notifier_parcelable", paramNotifierInfo);
      localIntent.putExtras(localBundle);
      this.b.sendBroadcast(localIntent);
      com.alipay.pushsdk.c.a.c.a(4, a, "showMsgDetail() sendBroadcast!");
      return;
    }
    com.alipay.pushsdk.c.a.c.a(2, a, "processMsgList() Drop the Packet!");
    com.alipay.pushsdk.c.a.c.a(3, a, "processMsgList() curMissionId=" + localb.d() + ", curPerMsgId=" + localb.c() + ", curPubMsgId=" + localb.b());
  }

  public final void a(a parama)
  {
    d locald = d.a(this.b);
    locald.a("pushCfgId", parama.a);
    locald.a("XMPP_HOST", parama.b);
    locald.a("XMPP_PORT", String.valueOf(parama.c));
    locald.a("PROTOCOL_VERSION", String.valueOf(parama.f));
    locald.a("SSL_USED", parama.d);
    locald.a("ZIP_FLAG", parama.e);
  }

  public final void a(String paramString, long paramLong)
  {
    d.a(this.b).a(paramString, String.valueOf(paramLong));
  }

  public final void a(String paramString1, String paramString2)
  {
    if ((paramString1 != null) && (paramString1.length() > 0))
      try
      {
        JSONObject localJSONObject = new JSONObject(paramString1);
        a locala = new a();
        locala.a = paramString2;
        locala.b = localJSONObject.optString("domain");
        locala.c = localJSONObject.optInt("port");
        locala.d = localJSONObject.optString("ssl");
        locala.e = localJSONObject.optString("compress");
        locala.f = localJSONObject.optInt("version");
        String str = localJSONObject.optString("ctrlTime", "true");
        new com.alipay.pushsdk.push.o(this.b).b(str);
        com.alipay.pushsdk.c.a.c.a(3, a, "processCfgData() cfgId=" + paramString2 + ", domain=" + locala.b + ", port=" + locala.c + ", protoVersion=" + locala.f + ", encryptFlag=" + locala.d + ", zipFlag=" + locala.e + ", timeCtrl=" + str);
        a(locala);
        return;
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
    com.alipay.pushsdk.c.a.c.a(2, a, "processCfgData() cfgData is null!");
  }

  public final void a(String paramString, boolean paramBoolean)
  {
    if ((paramString != null) && (paramString.length() > 0))
    {
      try
      {
        JSONArray localJSONArray = new JSONArray(paramString);
        com.alipay.pushsdk.c.a.c.a(3, a, "processMsgList() pubFlag:" + paramBoolean + ", msgLen=" + localJSONArray.length());
        new JSONObject();
        for (int i = 0; i < localJSONArray.length(); i++)
          a(a(localJSONArray.getJSONObject(i), paramBoolean), this.b.getPackageName() + ".push.action.SHOW_NOTIFICATION");
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
      }
      return;
    }
    com.alipay.pushsdk.c.a.c.a(2, a, "processMsgList() msgData is null!");
  }

  public final JSONObject b()
  {
    JSONObject localJSONObject = new JSONObject();
    i locali = i.a(this.b);
    try
    {
      localJSONObject.put("IMEI", locali.c());
      com.alipay.pushsdk.push.h localh = new com.alipay.pushsdk.push.h(this.b);
      String str1 = localh.b();
      String str2 = localh.c();
      localJSONObject.put("installChannel", str1);
      localJSONObject.put("productVersion", str2);
      localJSONObject.put("utdId", localh.d());
      localJSONObject.put("mspTid", localh.e());
      localJSONObject.put("productId", locali.a());
      localJSONObject.put("pushVersion", com.alipay.pushsdk.push.a.o.a());
      localJSONObject.put("osType", "Android");
      localJSONObject.put("osVersion", Build.VERSION.RELEASE);
      try
      {
        Field localField = Build.class.getDeclaredField("MANUFACTURER");
        localField.setAccessible(true);
        String str4 = localField.get(Build.class).toString();
        str3 = str4;
        localJSONObject.put("manufacturer", str3);
        localJSONObject.put("model", Build.MODEL);
        localJSONObject.put("connectType", c.a(this.b));
        localJSONObject.put("mobileStatus", a(this.b));
        localJSONObject.put("regionIP", h.a());
        com.alipay.pushsdk.c.a.c.a(3, a, "getRequestObj() requestData=" + localJSONObject.toString());
        return localJSONObject;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        while (true)
        {
          localIllegalAccessException.printStackTrace();
          str3 = "";
        }
      }
      catch (SecurityException localSecurityException)
      {
        while (true)
        {
          localSecurityException.printStackTrace();
          str3 = "";
        }
      }
      catch (NoSuchFieldException localNoSuchFieldException)
      {
        while (true)
        {
          localNoSuchFieldException.printStackTrace();
          String str3 = "";
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return localJSONObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.c.b
 * JD-Core Version:    0.6.2
 */