package com.alipay.android.app.empty;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.data.InteractionData;
import com.alipay.android.app.encrypt.TriDes;
import com.alipay.android.app.exception.NetErrorException;
import com.alipay.android.app.monitor.MonitorThread;
import com.alipay.android.app.net.Envelope;
import com.alipay.android.app.net.Request;
import com.alipay.android.app.pay.GlobalConstant;
import com.alipay.android.app.sys.DeviceInfo;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.protocol.RequestUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class WindowTemplateProvider
  implements IEmpty
{
  private static WindowTemplateProvider a;
  private static boolean b;
  private int c = 0;
  private Map d = new HashMap();
  private Envelope e = new Envelope();

  private WindowTemplateProvider()
  {
    this.e.d("fetch.win.template");
    this.e.e(GlobalConstant.API_VERSION);
    this.e.c(GlobalConstant.NAMESPACE);
    b = false;
  }

  private static WindowTemplate a(Context paramContext, String paramString, int paramInt)
  {
    c localc = new c(paramContext);
    String str1;
    try
    {
      String str2 = localc.a(paramString, paramInt);
      str1 = str2;
      localc.close();
      if (TextUtils.isEmpty(str1))
        return null;
    }
    catch (Exception localException)
    {
      while (true)
      {
        LogUtils.a(localException);
        MonitorThread.a().a(localException, "get local window template error");
        localc.close();
        str1 = null;
      }
    }
    finally
    {
      localc.close();
    }
    return new WindowTemplate(paramInt, str1);
  }

  private String a(Context paramContext, String paramString, Request paramRequest, InteractionData paramInteractionData)
  {
    JSONObject localJSONObject2;
    while (true)
    {
      JSONObject localJSONObject1 = new JSONObject(RequestUtils.a(RequestUtils.a(paramContext, paramRequest.a(), paramRequest.a(paramString).toString(), paramInteractionData))).optJSONObject("data");
      localJSONObject2 = localJSONObject1.optJSONObject("params");
      int i = localJSONObject1.optInt("code", 503);
      if ((localJSONObject2 == null) || (i != 1000) || (this.c >= GlobalConstant.RSA_GET_COUNT))
        break;
      this.c = (1 + this.c);
      String str = localJSONObject2.optString("public_key");
      if (!TextUtils.isEmpty(str))
        GlobalContext.a().c().a(str);
      else
        MonitorThread.a().a("update rsa key", "rsponse data is no key");
    }
    this.c = 0;
    return TriDes.b(paramString, localJSONObject2.optString("res_data", ""));
  }

  private void a(String paramString)
  {
    try
    {
      if (this.d.containsKey(paramString))
      {
        WindowTemplate localWindowTemplate = (WindowTemplate)this.d.remove(paramString);
        MemoryMonitor.a().b(localWindowTemplate);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(String paramString, WindowTemplate paramWindowTemplate)
  {
    try
    {
      this.d.put(paramString, paramWindowTemplate);
      MemoryMonitor.a().a(paramWindowTemplate);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  private WindowTemplate b(Context paramContext, String paramString, int paramInt, InteractionData paramInteractionData)
  {
    // Byte code:
    //   0: aload_2
    //   1: invokestatic 201	com/alipay/android/app/empty/WindowTemplateProvider:b	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   4: astore 5
    //   6: aload 5
    //   8: invokevirtual 106	org/json/JSONObject:toString	()Ljava/lang/String;
    //   11: invokestatic 72	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   14: ifeq +38 -> 52
    //   17: invokestatic 82	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   20: ldc 203
    //   22: new 205	java/lang/StringBuilder
    //   25: dup
    //   26: ldc 207
    //   28: invokespecial 208	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   31: aload_2
    //   32: invokevirtual 212	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: ldc 214
    //   37: invokevirtual 212	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   40: iload_3
    //   41: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   44: invokevirtual 218	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   47: invokevirtual 157	com/alipay/android/app/monitor/MonitorThread:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   50: aconst_null
    //   51: areturn
    //   52: invokestatic 221	com/alipay/android/app/sys/GlobalContext:g	()Ljava/lang/String;
    //   55: astore 6
    //   57: aload_0
    //   58: getfield 32	com/alipay/android/app/empty/WindowTemplateProvider:e	Lcom/alipay/android/app/net/Envelope;
    //   61: getstatic 224	com/alipay/android/app/pay/GlobalConstant:HTTP_URL	Ljava/lang/String;
    //   64: invokevirtual 226	com/alipay/android/app/net/Envelope:b	(Ljava/lang/String;)V
    //   67: new 97	com/alipay/android/app/net/Request
    //   70: dup
    //   71: aload_0
    //   72: getfield 32	com/alipay/android/app/empty/WindowTemplateProvider:e	Lcom/alipay/android/app/net/Envelope;
    //   75: aload 5
    //   77: aload 4
    //   79: getstatic 231	com/alipay/android/lib/plusin/protocol/ProtocolType:a	Lcom/alipay/android/lib/plusin/protocol/ProtocolType;
    //   82: invokespecial 234	com/alipay/android/app/net/Request:<init>	(Lcom/alipay/android/app/net/Envelope;Lorg/json/JSONObject;Lcom/alipay/android/app/data/InteractionData;Lcom/alipay/android/lib/plusin/protocol/ProtocolType;)V
    //   85: astore 7
    //   87: aload_0
    //   88: aload_1
    //   89: aload 6
    //   91: aload 7
    //   93: aload 4
    //   95: invokespecial 236	com/alipay/android/app/empty/WindowTemplateProvider:a	(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/data/InteractionData;)Ljava/lang/String;
    //   98: astore 12
    //   100: invokestatic 239	com/alipay/android/app/util/LogUtils:f	()V
    //   103: new 241	com/alipay/android/app/json/JsonReader
    //   106: dup
    //   107: new 243	java/io/StringReader
    //   110: dup
    //   111: aload 12
    //   113: invokespecial 244	java/io/StringReader:<init>	(Ljava/lang/String;)V
    //   116: invokespecial 247	com/alipay/android/app/json/JsonReader:<init>	(Ljava/io/Reader;)V
    //   119: astore 9
    //   121: aload 9
    //   123: invokevirtual 249	com/alipay/android/app/json/JsonReader:a	()V
    //   126: aload 9
    //   128: invokevirtual 252	com/alipay/android/app/json/JsonReader:c	()Z
    //   131: ifeq +143 -> 274
    //   134: aload 9
    //   136: invokevirtual 254	com/alipay/android/app/json/JsonReader:d	()Ljava/lang/String;
    //   139: ldc_w 256
    //   142: invokestatic 260	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   145: ifeq +98 -> 243
    //   148: aload 9
    //   150: invokevirtual 262	com/alipay/android/app/json/JsonReader:e	()Ljava/lang/String;
    //   153: ldc_w 264
    //   156: invokestatic 260	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   159: ifne -33 -> 126
    //   162: invokestatic 82	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   165: ldc_w 266
    //   168: new 205	java/lang/StringBuilder
    //   171: dup
    //   172: ldc 207
    //   174: invokespecial 208	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   177: aload_2
    //   178: invokevirtual 212	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: ldc 214
    //   183: invokevirtual 212	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: iload_3
    //   187: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   190: invokevirtual 218	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   193: invokevirtual 157	com/alipay/android/app/monitor/MonitorThread:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   196: new 268	com/alipay/android/app/exception/NetErrorException
    //   199: dup
    //   200: invokespecial 269	com/alipay/android/app/exception/NetErrorException:<init>	()V
    //   203: athrow
    //   204: astore 8
    //   206: aload 8
    //   208: invokestatic 77	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   211: aload 9
    //   213: ifnull +159 -> 372
    //   216: aload 9
    //   218: invokevirtual 270	com/alipay/android/app/json/JsonReader:close	()V
    //   221: aconst_null
    //   222: astore 12
    //   224: aload 12
    //   226: invokestatic 72	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   229: ifne -179 -> 50
    //   232: new 89	com/alipay/android/app/empty/WindowTemplate
    //   235: dup
    //   236: iload_3
    //   237: aload 12
    //   239: invokespecial 92	com/alipay/android/app/empty/WindowTemplate:<init>	(ILjava/lang/String;)V
    //   242: areturn
    //   243: aload 9
    //   245: invokevirtual 271	com/alipay/android/app/json/JsonReader:f	()V
    //   248: goto -122 -> 126
    //   251: astore 14
    //   253: aload 14
    //   255: invokestatic 77	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   258: aload 9
    //   260: ifnull +112 -> 372
    //   263: aload 9
    //   265: invokevirtual 270	com/alipay/android/app/json/JsonReader:close	()V
    //   268: aconst_null
    //   269: astore 12
    //   271: goto -47 -> 224
    //   274: aload 9
    //   276: invokevirtual 273	com/alipay/android/app/json/JsonReader:b	()V
    //   279: aload 9
    //   281: invokevirtual 270	com/alipay/android/app/json/JsonReader:close	()V
    //   284: goto -60 -> 224
    //   287: astore 16
    //   289: aload 16
    //   291: invokestatic 77	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   294: goto -70 -> 224
    //   297: astore 13
    //   299: aload 13
    //   301: invokestatic 77	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   304: aconst_null
    //   305: astore 12
    //   307: goto -83 -> 224
    //   310: astore 15
    //   312: aload 15
    //   314: invokestatic 77	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   317: aconst_null
    //   318: astore 12
    //   320: goto -96 -> 224
    //   323: astore 10
    //   325: aconst_null
    //   326: astore 9
    //   328: aload 9
    //   330: ifnull +8 -> 338
    //   333: aload 9
    //   335: invokevirtual 270	com/alipay/android/app/json/JsonReader:close	()V
    //   338: aload 10
    //   340: athrow
    //   341: astore 11
    //   343: aload 11
    //   345: invokestatic 77	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   348: goto -10 -> 338
    //   351: astore 10
    //   353: goto -25 -> 328
    //   356: astore 14
    //   358: aconst_null
    //   359: astore 9
    //   361: goto -108 -> 253
    //   364: astore 8
    //   366: aconst_null
    //   367: astore 9
    //   369: goto -163 -> 206
    //   372: aconst_null
    //   373: astore 12
    //   375: goto -151 -> 224
    //
    // Exception table:
    //   from	to	target	type
    //   121	126	204	org/json/JSONException
    //   126	204	204	org/json/JSONException
    //   243	248	204	org/json/JSONException
    //   274	279	204	org/json/JSONException
    //   121	126	251	java/io/IOException
    //   126	204	251	java/io/IOException
    //   243	248	251	java/io/IOException
    //   274	279	251	java/io/IOException
    //   279	284	287	java/io/IOException
    //   216	221	297	java/io/IOException
    //   263	268	310	java/io/IOException
    //   87	121	323	finally
    //   333	338	341	java/io/IOException
    //   121	126	351	finally
    //   126	204	351	finally
    //   206	211	351	finally
    //   243	248	351	finally
    //   253	258	351	finally
    //   274	279	351	finally
    //   87	121	356	java/io/IOException
    //   87	121	364	org/json/JSONException
  }

  public static WindowTemplateProvider b()
  {
    if (a == null)
      a = new WindowTemplateProvider();
    return a;
  }

  private static JSONObject b(String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("win_name", paramString);
      localJSONObject.put("version", DeviceInfo.a(GlobalContext.a().b()).a());
      localJSONObject.put("os", "android");
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      LogUtils.a(localJSONException);
    }
    return localJSONObject;
  }

  private void c(Context paramContext)
  {
    MemoryMonitor.a().b(this);
    new Thread(new d(paramContext, this.d)).start();
  }

  public final String a(Context paramContext, String paramString, int paramInt, InteractionData paramInteractionData)
  {
    WindowTemplate localWindowTemplate1 = (WindowTemplate)this.d.get(paramString);
    if ((localWindowTemplate1 != null) && (localWindowTemplate1.a - paramInt == 0))
      return localWindowTemplate1.b;
    a(paramString);
    WindowTemplate localWindowTemplate2 = a(paramContext, paramString, paramInt);
    if ((localWindowTemplate2 != null) && (localWindowTemplate2.a - paramInt == 0))
    {
      a(paramString, localWindowTemplate2);
      return localWindowTemplate2.b;
    }
    WindowTemplate localWindowTemplate3 = b(paramContext, paramString, paramInt, paramInteractionData);
    if ((localWindowTemplate3 != null) && (localWindowTemplate3.a - paramInt == 0))
    {
      a(paramString, localWindowTemplate3);
      return localWindowTemplate3.b;
    }
    MonitorThread.a().a("no window template", "name--" + paramString + " | version--" + paramInt);
    NetErrorException localNetErrorException = new NetErrorException("Cannot get window template from server");
    localNetErrorException.a(1);
    throw localNetErrorException;
  }

  public final void a()
  {
    c(GlobalContext.a().b());
  }

  // ERROR //
  public final void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 345	android/preference/PreferenceManager:getDefaultSharedPreferences	(Landroid/content/Context;)Landroid/content/SharedPreferences;
    //   4: astore_2
    //   5: aload_1
    //   6: invokestatic 293	com/alipay/android/app/sys/DeviceInfo:a	(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;
    //   9: invokevirtual 294	com/alipay/android/app/sys/DeviceInfo:a	()Ljava/lang/String;
    //   12: astore_3
    //   13: aload_3
    //   14: aload_2
    //   15: ldc_w 347
    //   18: ldc 161
    //   20: invokeinterface 352 3 0
    //   25: invokevirtual 356	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   28: ifeq +4 -> 32
    //   31: return
    //   32: aconst_null
    //   33: astore 4
    //   35: aload_1
    //   36: invokevirtual 362	android/content/Context:getAssets	()Landroid/content/res/AssetManager;
    //   39: ldc_w 364
    //   42: invokevirtual 370	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   45: astore 11
    //   47: aload 11
    //   49: astore 4
    //   51: new 372	java/io/BufferedReader
    //   54: dup
    //   55: new 374	java/io/InputStreamReader
    //   58: dup
    //   59: aload 4
    //   61: invokespecial 377	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   64: invokespecial 378	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   67: astore 12
    //   69: new 380	java/lang/StringBuffer
    //   72: dup
    //   73: invokespecial 381	java/lang/StringBuffer:<init>	()V
    //   76: astore 13
    //   78: aload 12
    //   80: invokevirtual 384	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   83: astore 15
    //   85: aload 15
    //   87: ifnull +25 -> 112
    //   90: aload 13
    //   92: aload 15
    //   94: invokevirtual 387	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   97: pop
    //   98: goto -20 -> 78
    //   101: astore 9
    //   103: aload 4
    //   105: invokevirtual 390	java/io/InputStream:close	()V
    //   108: return
    //   109: astore 10
    //   111: return
    //   112: new 95	org/json/JSONObject
    //   115: dup
    //   116: aload 13
    //   118: invokevirtual 391	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   121: invokespecial 116	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   124: ldc_w 393
    //   127: invokevirtual 397	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   130: astore 17
    //   132: iconst_0
    //   133: istore 18
    //   135: aload 17
    //   137: ifnonnull +12 -> 149
    //   140: aload 4
    //   142: invokevirtual 390	java/io/InputStream:close	()V
    //   145: return
    //   146: astore 25
    //   148: return
    //   149: iload 18
    //   151: aload 17
    //   153: invokevirtual 403	org/json/JSONArray:length	()I
    //   156: if_icmpge +75 -> 231
    //   159: aload 17
    //   161: iload 18
    //   163: invokevirtual 406	org/json/JSONArray:optJSONObject	(I)Lorg/json/JSONObject;
    //   166: astore 21
    //   168: new 95	org/json/JSONObject
    //   171: dup
    //   172: invokespecial 278	org/json/JSONObject:<init>	()V
    //   175: astore 22
    //   177: aload 22
    //   179: ldc_w 408
    //   182: aload 21
    //   184: invokevirtual 283	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   187: pop
    //   188: aload 21
    //   190: ldc_w 410
    //   193: iconst_0
    //   194: invokevirtual 129	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   197: istore 24
    //   199: aload_0
    //   200: aload 21
    //   202: ldc_w 280
    //   205: invokevirtual 138	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   208: new 89	com/alipay/android/app/empty/WindowTemplate
    //   211: dup
    //   212: iload 24
    //   214: aload 22
    //   216: invokevirtual 106	org/json/JSONObject:toString	()Ljava/lang/String;
    //   219: invokespecial 92	com/alipay/android/app/empty/WindowTemplate:<init>	(ILjava/lang/String;)V
    //   222: invokespecial 327	com/alipay/android/app/empty/WindowTemplateProvider:a	(Ljava/lang/String;Lcom/alipay/android/app/empty/WindowTemplate;)V
    //   225: iinc 18 1
    //   228: goto -79 -> 149
    //   231: aload_2
    //   232: invokeinterface 414 1 0
    //   237: ldc_w 347
    //   240: aload_3
    //   241: invokeinterface 420 3 0
    //   246: invokeinterface 423 1 0
    //   251: pop
    //   252: aload 4
    //   254: invokevirtual 390	java/io/InputStream:close	()V
    //   257: return
    //   258: astore 20
    //   260: return
    //   261: astore 5
    //   263: aconst_null
    //   264: astore 6
    //   266: aload 5
    //   268: astore 7
    //   270: aload 6
    //   272: invokevirtual 390	java/io/InputStream:close	()V
    //   275: aload 7
    //   277: athrow
    //   278: astore 8
    //   280: goto -5 -> 275
    //   283: astore 14
    //   285: aload 4
    //   287: astore 6
    //   289: aload 14
    //   291: astore 7
    //   293: goto -23 -> 270
    //
    // Exception table:
    //   from	to	target	type
    //   35	47	101	java/lang/Exception
    //   51	78	101	java/lang/Exception
    //   78	85	101	java/lang/Exception
    //   90	98	101	java/lang/Exception
    //   112	132	101	java/lang/Exception
    //   149	225	101	java/lang/Exception
    //   231	252	101	java/lang/Exception
    //   103	108	109	java/lang/Exception
    //   140	145	146	java/lang/Exception
    //   252	257	258	java/lang/Exception
    //   35	47	261	finally
    //   270	275	278	java/lang/Exception
    //   51	78	283	finally
    //   78	85	283	finally
    //   90	98	283	finally
    //   112	132	283	finally
    //   149	225	283	finally
    //   231	252	283	finally
  }

  public final void b(Context paramContext)
  {
    c(paramContext);
  }

  public final void c()
  {
    MemoryMonitor.a().a(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.empty.WindowTemplateProvider
 * JD-Core Version:    0.6.2
 */