package com.alipay.mobilesecuritysdk.deviceID;

import HttpUtils.HttpFetcher;
import android.content.Context;
import android.os.Environment;
import com.alipay.mobilesecuritysdk.util.CommonUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.util.EntityUtils;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class DeviceIdModel
{
  private DeviceMetaData a = new DeviceMetaData();
  private Profile b = new Profile();

  private String a()
  {
    String str1 = System.getProperty("deviceid");
    boolean bool1 = CommonUtils.a(str1);
    String str2 = null;
    if (!bool1);
    try
    {
      String str4 = new JSONObject(str1).getString("device");
      str3 = str4;
      boolean bool2 = CommonUtils.a(str3);
      str2 = null;
      if (!bool2)
        str2 = SecurityUtils.b(SecurityUtils.a(), str3);
      return str2;
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        c(LOG.a(localJSONException));
        String str3 = null;
      }
    }
  }

  private void a(String paramString)
  {
    if (CommonUtils.a(paramString));
    String str;
    do
    {
      return;
      str = SecurityUtils.a(SecurityUtils.a(), paramString);
    }
    while (CommonUtils.a(str));
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("device", str);
      System.setProperty("deviceid", localJSONObject.toString());
      return;
    }
    catch (JSONException localJSONException)
    {
      c(LOG.a(localJSONException));
    }
  }

  public static boolean a(Map paramMap)
  {
    if ((paramMap == null) || (paramMap.size() < 0));
    while ((!paramMap.containsKey("deviceId")) || (!paramMap.containsKey("checkcode")) || (!paramMap.containsKey("apdtk")) || (!paramMap.containsKey("time")) || (!paramMap.containsKey("rule")))
      return false;
    return true;
  }

  private String b()
  {
    try
    {
      String str1;
      if (CommonUtils.a())
      {
        File localFile = new File(Environment.getExternalStorageDirectory(), ".SystemConfig");
        if (!localFile.exists())
          localFile.mkdir();
        str1 = CommonUtils.c(localFile.getAbsolutePath() + File.separator + "data");
        boolean bool = CommonUtils.a(str1);
        if (!bool)
          break label76;
      }
      while (true)
      {
        return null;
        try
        {
          label76: String str3 = new JSONObject(str1).getString("device");
          str2 = str3;
          if (!CommonUtils.a(str2))
            return SecurityUtils.b(SecurityUtils.a(), str2);
        }
        catch (JSONException localJSONException)
        {
          while (true)
          {
            c(LOG.a(localJSONException));
            String str2 = null;
          }
        }
      }
    }
    catch (Exception localException)
    {
      c(LOG.a(localException));
    }
    return null;
  }

  // ERROR //
  private String b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 151	com/alipay/mobilesecuritysdk/deviceID/DeviceIdModel:d	()Lcom/alipay/mobilesecuritysdk/deviceID/IdResponseInfo;
    //   4: astore_2
    //   5: aload_2
    //   6: ifnull +230 -> 236
    //   9: aload_2
    //   10: invokevirtual 155	com/alipay/mobilesecuritysdk/deviceID/IdResponseInfo:c	()Z
    //   13: ifeq +223 -> 236
    //   16: new 123	java/lang/StringBuilder
    //   19: dup
    //   20: aload_2
    //   21: invokevirtual 157	com/alipay/mobilesecuritysdk/deviceID/IdResponseInfo:d	()Ljava/lang/String;
    //   24: invokestatic 132	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   27: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   30: aload_2
    //   31: invokevirtual 159	com/alipay/mobilesecuritysdk/deviceID/IdResponseInfo:b	()Ljava/lang/String;
    //   34: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: astore 4
    //   42: new 161	java/util/HashMap
    //   45: dup
    //   46: invokespecial 162	java/util/HashMap:<init>	()V
    //   49: astore 5
    //   51: aload 5
    //   53: ldc 85
    //   55: aload_2
    //   56: invokevirtual 157	com/alipay/mobilesecuritysdk/deviceID/IdResponseInfo:d	()Ljava/lang/String;
    //   59: invokeinterface 165 3 0
    //   64: pop
    //   65: aload 5
    //   67: ldc 167
    //   69: aload_2
    //   70: invokevirtual 157	com/alipay/mobilesecuritysdk/deviceID/IdResponseInfo:d	()Ljava/lang/String;
    //   73: invokeinterface 165 3 0
    //   78: pop
    //   79: aload 5
    //   81: ldc 95
    //   83: aload_2
    //   84: invokevirtual 159	com/alipay/mobilesecuritysdk/deviceID/IdResponseInfo:b	()Ljava/lang/String;
    //   87: invokeinterface 165 3 0
    //   92: pop
    //   93: aload 5
    //   95: ldc 91
    //   97: aload_2
    //   98: invokevirtual 168	com/alipay/mobilesecuritysdk/deviceID/IdResponseInfo:a	()Ljava/lang/String;
    //   101: invokeinterface 165 3 0
    //   106: pop
    //   107: aload 5
    //   109: ldc 97
    //   111: aload_2
    //   112: invokevirtual 171	com/alipay/mobilesecuritysdk/deviceID/IdResponseInfo:f	()Ljava/lang/String;
    //   115: invokeinterface 165 3 0
    //   120: pop
    //   121: aload 5
    //   123: ldc 93
    //   125: aload_2
    //   126: invokevirtual 174	com/alipay/mobilesecuritysdk/deviceID/IdResponseInfo:e	()Ljava/lang/String;
    //   129: invokeinterface 165 3 0
    //   134: pop
    //   135: new 19	com/alipay/mobilesecuritysdk/deviceID/Profile
    //   138: dup
    //   139: invokespecial 20	com/alipay/mobilesecuritysdk/deviceID/Profile:<init>	()V
    //   142: pop
    //   143: aload 5
    //   145: invokestatic 177	com/alipay/mobilesecuritysdk/deviceID/Profile:a	(Ljava/util/Map;)Ljava/lang/String;
    //   148: astore 15
    //   150: invokestatic 52	com/alipay/mobilesecuritysdk/deviceID/SecurityUtils:a	()Ljava/lang/String;
    //   153: aload 15
    //   155: invokestatic 65	com/alipay/mobilesecuritysdk/deviceID/SecurityUtils:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   158: astore 16
    //   160: aload 16
    //   162: invokestatic 38	com/alipay/mobilesecuritysdk/util/CommonUtils:a	(Ljava/lang/String;)Z
    //   165: ifne +41 -> 206
    //   168: new 161	java/util/HashMap
    //   171: dup
    //   172: invokespecial 162	java/util/HashMap:<init>	()V
    //   175: astore 17
    //   177: aload 17
    //   179: ldc 27
    //   181: aload 16
    //   183: invokeinterface 165 3 0
    //   188: pop
    //   189: aload_0
    //   190: getfield 22	com/alipay/mobilesecuritysdk/deviceID/DeviceIdModel:b	Lcom/alipay/mobilesecuritysdk/deviceID/Profile;
    //   193: pop
    //   194: aload_1
    //   195: ldc 179
    //   197: iconst_0
    //   198: invokevirtual 185	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   201: aload 17
    //   203: invokestatic 188	com/alipay/mobilesecuritysdk/deviceID/Profile:a	(Landroid/content/SharedPreferences;Ljava/util/Map;)V
    //   206: aload_0
    //   207: aload 4
    //   209: invokespecial 190	com/alipay/mobilesecuritysdk/deviceID/DeviceIdModel:a	(Ljava/lang/String;)V
    //   212: aload_0
    //   213: aload 4
    //   215: invokespecial 192	com/alipay/mobilesecuritysdk/deviceID/DeviceIdModel:b	(Ljava/lang/String;)V
    //   218: aload_2
    //   219: invokevirtual 157	com/alipay/mobilesecuritysdk/deviceID/IdResponseInfo:d	()Ljava/lang/String;
    //   222: astore 14
    //   224: aload 14
    //   226: areturn
    //   227: astore_3
    //   228: aload_0
    //   229: aload_3
    //   230: invokestatic 60	com/alipay/mobilesecuritysdk/deviceID/LOG:a	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   233: invokespecial 63	com/alipay/mobilesecuritysdk/deviceID/DeviceIdModel:c	(Ljava/lang/String;)V
    //   236: aconst_null
    //   237: areturn
    //   238: astore 13
    //   240: goto -34 -> 206
    //
    // Exception table:
    //   from	to	target	type
    //   9	143	227	java/lang/Exception
    //   143	206	227	java/lang/Exception
    //   206	224	227	java/lang/Exception
    //   143	206	238	org/json/JSONException
  }

  // ERROR //
  private void b(String paramString)
  {
    // Byte code:
    //   0: invokestatic 102	com/alipay/mobilesecuritysdk/util/CommonUtils:a	()Z
    //   3: ifeq +94 -> 97
    //   6: invokestatic 52	com/alipay/mobilesecuritysdk/deviceID/SecurityUtils:a	()Ljava/lang/String;
    //   9: aload_1
    //   10: invokestatic 65	com/alipay/mobilesecuritysdk/deviceID/SecurityUtils:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   13: astore_3
    //   14: new 104	java/io/File
    //   17: dup
    //   18: invokestatic 110	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   21: ldc 112
    //   23: invokespecial 115	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   26: astore 4
    //   28: aload 4
    //   30: invokevirtual 118	java/io/File:exists	()Z
    //   33: ifne +9 -> 42
    //   36: aload 4
    //   38: invokevirtual 121	java/io/File:mkdir	()Z
    //   41: pop
    //   42: new 40	org/json/JSONObject
    //   45: dup
    //   46: invokespecial 66	org/json/JSONObject:<init>	()V
    //   49: astore 5
    //   51: aload 5
    //   53: ldc 45
    //   55: aload_3
    //   56: invokevirtual 70	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   59: pop
    //   60: new 123	java/lang/StringBuilder
    //   63: dup
    //   64: aload 4
    //   66: invokevirtual 126	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   69: invokestatic 132	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   72: invokespecial 133	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   75: getstatic 137	java/io/File:separator	Ljava/lang/String;
    //   78: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: ldc 143
    //   83: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: invokevirtual 144	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   89: aload 5
    //   91: invokevirtual 73	org/json/JSONObject:toString	()Ljava/lang/String;
    //   94: invokestatic 197	com/alipay/mobilesecuritysdk/util/CommonUtils:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   97: return
    //   98: astore 6
    //   100: aload_0
    //   101: aload 6
    //   103: invokestatic 60	com/alipay/mobilesecuritysdk/deviceID/LOG:a	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   106: invokespecial 63	com/alipay/mobilesecuritysdk/deviceID/DeviceIdModel:c	(Ljava/lang/String;)V
    //   109: goto -49 -> 60
    //   112: astore_2
    //   113: aload_0
    //   114: aload_2
    //   115: invokestatic 60	com/alipay/mobilesecuritysdk/deviceID/LOG:a	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   118: invokespecial 63	com/alipay/mobilesecuritysdk/deviceID/DeviceIdModel:c	(Ljava/lang/String;)V
    //   121: return
    //   122: astore 7
    //   124: aload_0
    //   125: aload 7
    //   127: invokestatic 60	com/alipay/mobilesecuritysdk/deviceID/LOG:a	(Ljava/lang/Throwable;)Ljava/lang/String;
    //   130: invokespecial 63	com/alipay/mobilesecuritysdk/deviceID/DeviceIdModel:c	(Ljava/lang/String;)V
    //   133: return
    //
    // Exception table:
    //   from	to	target	type
    //   51	60	98	org/json/JSONException
    //   0	42	112	java/lang/Exception
    //   42	51	112	java/lang/Exception
    //   51	60	112	java/lang/Exception
    //   60	97	112	java/lang/Exception
    //   100	109	112	java/lang/Exception
    //   124	133	112	java/lang/Exception
    //   60	97	122	java/io/IOException
  }

  private String c()
  {
    Object localObject;
    if (CommonUtils.a(this.a.d()))
    {
      localObject = null;
      return localObject;
    }
    while (true)
    {
      int i;
      try
      {
        JSONArray localJSONArray = new JSONObject(this.a.d()).getJSONArray("params");
        if (localJSONArray == null)
          return null;
        localObject = new String();
        i = 0;
        if (i == localJSONArray.length())
          break;
        if (localJSONArray.getString(i).equals("AC1"))
        {
          if (!CommonUtils.a(this.a.e()))
            localObject = localObject + this.a.e();
        }
        else
        {
          if (localJSONArray.getString(i).equals("AC2"))
          {
            if (CommonUtils.a(this.a.f()))
              continue;
            localObject = localObject + this.a.f();
          }
          if (localJSONArray.getString(i).equals("AH1"))
          {
            if (CommonUtils.a(this.a.g()))
              continue;
            localObject = localObject + this.a.g();
          }
          if (localJSONArray.getString(i).equals("AH2"))
          {
            if (CommonUtils.a(this.a.h()))
              continue;
            localObject = localObject + this.a.h();
          }
          if (localJSONArray.getString(i).equals("AH3"))
          {
            if (CommonUtils.a(this.a.i()))
              continue;
            localObject = localObject + this.a.i();
          }
          if (localJSONArray.getString(i).equals("AH4"))
          {
            if (CommonUtils.a(this.a.j()))
              continue;
            localObject = localObject + this.a.j();
          }
          if (localJSONArray.getString(i).equals("AH5"))
          {
            if (CommonUtils.a(this.a.k()))
              continue;
            localObject = localObject + this.a.k();
          }
          if (localJSONArray.getString(i).equals("AH6"))
          {
            if (CommonUtils.a(this.a.l()))
              continue;
            localObject = localObject + this.a.l();
          }
          if (localJSONArray.getString(i).equals("AH7"))
          {
            if (CommonUtils.a(this.a.m()))
              continue;
            localObject = localObject + this.a.m();
          }
          if (localJSONArray.getString(i).equals("AH8"))
          {
            if (CommonUtils.a(this.a.n()))
              continue;
            localObject = localObject + this.a.n();
          }
          if (localJSONArray.getString(i).equals("AH9"))
          {
            if (CommonUtils.a(this.a.o()))
              continue;
            localObject = localObject + this.a.o();
          }
          if (localJSONArray.getString(i).equals("AH10"))
          {
            if (CommonUtils.a(this.a.p()))
              continue;
            localObject = localObject + this.a.p();
          }
          if (localJSONArray.getString(i).equals("AS1"))
          {
            if (CommonUtils.a(this.a.s()))
              continue;
            localObject = localObject + this.a.s();
          }
          if (localJSONArray.getString(i).equals("AS2"))
          {
            if (CommonUtils.a(this.a.t()))
              continue;
            localObject = localObject + this.a.t();
          }
          if (localJSONArray.getString(i).equals("AS3"))
          {
            if (CommonUtils.a(this.a.u()))
              continue;
            localObject = localObject + this.a.u();
          }
          if (!localJSONArray.getString(i).equals("AS4"))
            break label1208;
          if (CommonUtils.a(this.a.v()))
            continue;
          localObject = localObject + this.a.v();
          break label1208;
        }
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        localObject = localObject;
        continue;
        String str = localObject;
        localObject = str;
      }
      catch (JSONException localJSONException)
      {
        c(LOG.a(localJSONException));
        return null;
      }
      label1208: i++;
    }
  }

  private void c(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if (CommonUtils.a(this.a.e()))
      localArrayList.add(this.a.e().substring(0, 20));
    if (CommonUtils.a(this.a.f()))
      localArrayList.add(this.a.f().substring(0, 20));
    if (CommonUtils.a(this.a.a()))
      localArrayList.add(this.a.a().substring(0, 20));
    localArrayList.add(paramString);
    LOG.a(localArrayList);
  }

  private IdResponseInfo d()
  {
    IdResponseInfo localIdResponseInfo = new IdResponseInfo();
    localIdResponseInfo.a(false);
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    if (!CommonUtils.a(this.a.g()))
    {
      localHashMap2.put("AH1", this.a.g());
      if (CommonUtils.a(this.a.h()))
        break label717;
      localHashMap2.put("AH2", this.a.h());
      label95: if (CommonUtils.a(this.a.i()))
        break label733;
      localHashMap2.put("AH3", this.a.i());
      label125: if (CommonUtils.a(this.a.j()))
        break label749;
      localHashMap2.put("AH4", this.a.j());
      label155: if (CommonUtils.a(this.a.k()))
        break label765;
      localHashMap2.put("AH5", this.a.k());
      label185: if (CommonUtils.a(this.a.l()))
        break label781;
      localHashMap2.put("AH6", this.a.l());
      label215: if (CommonUtils.a(this.a.m()))
        break label797;
      localHashMap2.put("AH7", this.a.m());
      label245: if (CommonUtils.a(this.a.n()))
        break label813;
      localHashMap2.put("AH8", this.a.n());
      label276: if (CommonUtils.a(this.a.o()))
        break label830;
      localHashMap2.put("AH9", this.a.o());
      label307: if (CommonUtils.a(this.a.p()))
        break label847;
      localHashMap2.put("AH10", this.a.p());
      label338: if (CommonUtils.a(this.a.s()))
        break label864;
      localHashMap2.put("AS1", this.a.s());
      label369: if (CommonUtils.a(this.a.t()))
        break label881;
      localHashMap2.put("AS2", this.a.t());
      label400: if (CommonUtils.a(this.a.u()))
        break label898;
      localHashMap2.put("AS3", this.a.u());
      label431: if (CommonUtils.a(this.a.v()))
        break label915;
      localHashMap2.put("AS4", this.a.v());
      label462: if (CommonUtils.a(this.a.e()))
        break label932;
      localHashMap2.put("AC1", this.a.e());
      label492: if (CommonUtils.a(this.a.f()))
        break label948;
      localHashMap2.put("AC2", this.a.f());
    }
    String str;
    while (true)
    {
      localHashMap1.put("deviceInfo", localHashMap2);
      if (!CommonUtils.a(this.a.b()))
        localHashMap1.put("deviceId", this.a.b());
      if (!CommonUtils.a(this.a.c()))
        localHashMap1.put("priDeviceId", this.a.c());
      if (!CommonUtils.a(this.a.a()))
        localHashMap1.put("appId", this.a.a());
      if (!CommonUtils.a(this.a.q()))
        localHashMap1.put("time", this.a.q());
      if (!CommonUtils.a(this.a.r()))
        localHashMap1.put("apdtk", this.a.r());
      str = Profile.b(localHashMap1);
      if ((str != null) && (str.length() >= 0))
        break label964;
      return localIdResponseInfo;
      localHashMap2.put("AH1", "");
      break;
      label717: localHashMap2.put("AH2", "");
      break label95;
      label733: localHashMap2.put("AH3", "");
      break label125;
      label749: localHashMap2.put("AH4", "");
      break label155;
      label765: localHashMap2.put("AH4", "");
      break label185;
      label781: localHashMap2.put("AH6", "");
      break label215;
      label797: localHashMap2.put("AH7", "");
      break label245;
      label813: localHashMap2.put("AH8", "");
      break label276;
      label830: localHashMap2.put("AH9", "");
      break label307;
      label847: localHashMap2.put("AH10", "");
      break label338;
      label864: localHashMap2.put("AS1", "");
      break label369;
      label881: localHashMap2.put("AS2", "");
      break label400;
      label898: localHashMap2.put("AS3", "");
      break label431;
      label915: localHashMap2.put("AS4", "");
      break label462;
      label932: localHashMap2.put("AC1", "");
      break label492;
      label948: localHashMap2.put("AC2", "");
    }
    try
    {
      label964: new HttpFetcher();
      HttpResponse localHttpResponse = HttpFetcher.a("https://seccliprod.alipay.com/api/do.htm", "deviceFingerprint", str, "1", false);
      if ((localHttpResponse != null) && (localHttpResponse.getStatusLine().getStatusCode() == 200))
      {
        new Profile();
        return Profile.a(EntityUtils.toString(localHttpResponse.getEntity()));
      }
      localIdResponseInfo.a(false);
      return localIdResponseInfo;
    }
    catch (IOException localIOException)
    {
      c(LOG.a(localIOException));
    }
    return localIdResponseInfo;
  }

  public final Map a(Context paramContext)
  {
    String str1 = Profile.a(paramContext.getSharedPreferences("profiles", 0), "deviceid");
    if (CommonUtils.a(str1));
    String str2;
    do
    {
      return null;
      str2 = SecurityUtils.b(SecurityUtils.a(), str1);
    }
    while (CommonUtils.a(str2));
    new Profile();
    return Profile.b(str2);
  }

  public final void a(Context paramContext, Map paramMap)
  {
    CollectDeviceInfo.a();
    LOG.a(paramContext);
    if (paramMap != null);
    try
    {
      if (paramMap.size() > 0)
      {
        if (!CommonUtils.a((String)paramMap.get("tid")))
          this.a.e((String)paramMap.get("tid"));
        if (!CommonUtils.a((String)paramMap.get("utdid")))
          this.a.f((String)paramMap.get("utdid"));
      }
      if (!CommonUtils.a(CollectDeviceInfo.b(paramContext)))
        this.a.g(CollectDeviceInfo.b(paramContext));
      if (!CommonUtils.a(CollectDeviceInfo.c(paramContext)))
        this.a.h(CollectDeviceInfo.c(paramContext));
      if (!CommonUtils.a(CollectDeviceInfo.a(paramContext)))
        this.a.i(CollectDeviceInfo.a(paramContext));
      if (!CommonUtils.a(CollectDeviceInfo.f()))
        this.a.j(CollectDeviceInfo.f());
      if (!CommonUtils.a(CollectDeviceInfo.b()))
        this.a.k(CollectDeviceInfo.b());
      if (!CommonUtils.a(CollectDeviceInfo.j()))
        this.a.l(CollectDeviceInfo.j());
      if (!CommonUtils.a(Long.toString(CollectDeviceInfo.g())))
        this.a.m(Long.toString(CollectDeviceInfo.g()));
      if (!CommonUtils.a(Long.toString(CollectDeviceInfo.h())))
        this.a.n(Long.toString(CollectDeviceInfo.h()));
      if (!CommonUtils.a(CollectDeviceInfo.d(paramContext)))
        this.a.o(CollectDeviceInfo.d(paramContext));
      if (!CommonUtils.a(CollectDeviceInfo.e()))
        this.a.p(CollectDeviceInfo.e());
      if (!CommonUtils.a(CollectDeviceInfo.i()))
        this.a.s(CollectDeviceInfo.i());
      if (!CommonUtils.a(CollectDeviceInfo.c()))
        this.a.t(CollectDeviceInfo.c());
      if (!CommonUtils.a(CollectDeviceInfo.k()))
        this.a.u(CollectDeviceInfo.k());
      if (!CommonUtils.a(CollectDeviceInfo.d()))
        this.a.v(CollectDeviceInfo.d());
      if (!CommonUtils.a(CollectDeviceInfo.e(paramContext)))
        this.a.a(CollectDeviceInfo.e(paramContext));
      Map localMap = a(paramContext);
      if ((localMap != null) && (localMap.size() > 0))
      {
        if (!CommonUtils.a((String)localMap.get("apdtk")))
          this.a.r((String)localMap.get("apdtk"));
        if (!CommonUtils.a((String)localMap.get("deviceId")))
          this.a.c((String)localMap.get("deviceId"));
        if (!CommonUtils.a((String)localMap.get("time")))
          this.a.q((String)localMap.get("time"));
        if (!CommonUtils.a((String)localMap.get("rule")))
          this.a.d((String)localMap.get("rule"));
      }
      if ((!CommonUtils.a(a())) && (a().length() > 32))
      {
        this.a.b(a().substring(0, 32));
        return;
      }
      if ((!CommonUtils.a(b())) && (b().length() > 32))
      {
        this.a.b(b().substring(0, 32));
        return;
      }
    }
    catch (Exception localException)
    {
      c(LOG.a(localException));
    }
  }

  public final String b(Context paramContext, Map paramMap)
  {
    int i = 1;
    if (paramMap == null)
      return b(paramContext);
    int j;
    int k;
    label63: label68: String str1;
    String str3;
    String str5;
    boolean bool1;
    label251: boolean bool2;
    if ((!CommonUtils.a(a())) && (a().length() > 0))
    {
      j = i;
      if (j == 0)
        break label302;
      if ((CommonUtils.a(b())) || (b().length() <= 0))
        break label296;
      k = i;
      if (k == 0)
        break label302;
      if (!a(paramMap))
        break label356;
      if ((i == 0) && (!CommonUtils.a((String)paramMap.get("priDeviceId"))) && (!CommonUtils.a((String)paramMap.get("time"))))
      {
        String str6 = (String)paramMap.get("priDeviceId") + (String)paramMap.get("time");
        a(str6);
        b(str6);
      }
      str1 = (String)paramMap.get("checkcode");
      String str2 = c();
      if (str2 == null)
        str2 = "";
      str3 = CommonUtils.b(str2);
      if (str3 == null)
        str3 = "";
      String str4 = a();
      str5 = b();
      if (CommonUtils.a(str4))
        break label307;
      bool1 = this.a.c().equals(str4.substring(0, 32));
      if (!bool1)
        break label356;
      bool2 = false;
      if (str1 != null)
      {
        bool2 = false;
        if (str3 != null)
          break label344;
      }
    }
    while (true)
    {
      if (!bool2)
        break label356;
      return (String)paramMap.get("apdid");
      j = 0;
      break;
      label296: k = 0;
      break label63;
      label302: i = 0;
      break label68;
      label307: if (!CommonUtils.a(str5))
      {
        bool1 = this.a.c().equals(str5.subSequence(0, 32));
        break label251;
      }
      bool1 = false;
      break label251;
      label344: bool2 = str1.equals(str3);
    }
    label356: return b(paramContext);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecuritysdk.deviceID.DeviceIdModel
 * JD-Core Version:    0.6.2
 */