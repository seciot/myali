package com.alipay.android.app.request;

import android.text.TextUtils;
import com.alipay.android.lib.plusin.protocol.FrameData;
import com.alipay.android.lib.plusin.protocol.IFrameFactory;
import com.alipay.android.lib.plusin.protocol.ProtocolType;
import java.util.Iterator;
import org.json.JSONObject;

public class MspFrameFactory
  implements IFrameFactory
{
  private static String a(String paramString, JSONObject paramJSONObject)
  {
    if (TextUtils.isEmpty(paramString))
      paramString = null;
    while (true)
    {
      return paramString;
      if (paramJSONObject != null)
      {
        Iterator localIterator = paramJSONObject.keys();
        while (localIterator.hasNext())
        {
          String str1 = (String)localIterator.next();
          String str2 = paramJSONObject.optString(str1, "").replace("\"", "\\\"");
          paramString = paramString.replace("^@" + str1 + "@^", str2);
        }
      }
    }
  }

  // ERROR //
  private static com.alipay.android.app.data.WindowFrameData c(FrameData paramFrameData)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 79	com/alipay/android/lib/plusin/protocol/FrameData:h	()Lcom/alipay/android/app/net/Request;
    //   4: astore_1
    //   5: aload_0
    //   6: invokevirtual 83	com/alipay/android/lib/plusin/protocol/FrameData:i	()Lcom/alipay/android/app/net/Response;
    //   9: astore_2
    //   10: aload_0
    //   11: invokevirtual 87	com/alipay/android/lib/plusin/protocol/FrameData:k	()Lorg/json/JSONObject;
    //   14: astore_3
    //   15: aload_3
    //   16: ldc 89
    //   18: invokevirtual 93	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   21: astore 4
    //   23: aload 4
    //   25: ifnull +40 -> 65
    //   28: new 52	java/lang/StringBuilder
    //   31: dup
    //   32: ldc 95
    //   34: invokespecial 57	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   37: aload 4
    //   39: ldc 97
    //   41: ldc 38
    //   43: invokevirtual 42	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   46: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: pop
    //   53: invokestatic 102	com/alipay/android/app/util/LogUtils:g	()V
    //   56: aload_0
    //   57: invokevirtual 83	com/alipay/android/lib/plusin/protocol/FrameData:i	()Lcom/alipay/android/app/net/Response;
    //   60: aload 4
    //   62: invokevirtual 107	com/alipay/android/app/net/Response:a	(Lorg/json/JSONObject;)V
    //   65: aload_2
    //   66: aload_3
    //   67: ldc 109
    //   69: ldc 111
    //   71: invokevirtual 42	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   74: invokevirtual 114	com/alipay/android/app/net/Response:b	(Ljava/lang/String;)V
    //   77: aload_2
    //   78: aload_3
    //   79: ldc 116
    //   81: ldc 38
    //   83: invokevirtual 42	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   86: invokevirtual 119	com/alipay/android/app/net/Response:e	(Ljava/lang/String;)V
    //   89: aload_2
    //   90: aload_3
    //   91: ldc 121
    //   93: invokevirtual 124	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   96: invokevirtual 126	com/alipay/android/app/net/Response:c	(Ljava/lang/String;)V
    //   99: aload_2
    //   100: aload_3
    //   101: ldc 128
    //   103: ldc 38
    //   105: invokevirtual 42	org/json/JSONObject:optString	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   108: invokevirtual 131	com/alipay/android/app/net/Response:d	(Ljava/lang/String;)V
    //   111: aload_3
    //   112: ldc 133
    //   114: invokevirtual 93	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   117: astore 5
    //   119: aload 5
    //   121: ifnull +222 -> 343
    //   124: aload 5
    //   126: ldc 135
    //   128: invokevirtual 93	org/json/JSONObject:optJSONObject	(Ljava/lang/String;)Lorg/json/JSONObject;
    //   131: astore 8
    //   133: aload 5
    //   135: ldc 137
    //   137: invokevirtual 124	org/json/JSONObject:optString	(Ljava/lang/String;)Ljava/lang/String;
    //   140: astore 9
    //   142: aload 5
    //   144: ldc 139
    //   146: iconst_0
    //   147: invokevirtual 143	org/json/JSONObject:optInt	(Ljava/lang/String;I)I
    //   150: istore 10
    //   152: aload 5
    //   154: ldc 145
    //   156: invokevirtual 149	org/json/JSONObject:optJSONArray	(Ljava/lang/String;)Lorg/json/JSONArray;
    //   159: astore 11
    //   161: invokestatic 154	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   164: invokevirtual 157	com/alipay/android/app/sys/GlobalContext:b	()Landroid/content/Context;
    //   167: astore 17
    //   169: invokestatic 162	com/alipay/android/app/empty/WindowTemplateProvider:b	()Lcom/alipay/android/app/empty/WindowTemplateProvider;
    //   172: aload 17
    //   174: aload 9
    //   176: iload 10
    //   178: aload_1
    //   179: invokevirtual 167	com/alipay/android/app/net/Request:b	()Lcom/alipay/android/app/data/InteractionData;
    //   182: invokevirtual 170	com/alipay/android/app/empty/WindowTemplateProvider:a	(Landroid/content/Context;Ljava/lang/String;ILcom/alipay/android/app/data/InteractionData;)Ljava/lang/String;
    //   185: astore 18
    //   187: new 52	java/lang/StringBuilder
    //   190: dup
    //   191: ldc 172
    //   193: invokespecial 57	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   196: aload 18
    //   198: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   201: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   204: pop
    //   205: invokestatic 102	com/alipay/android/app/util/LogUtils:g	()V
    //   208: new 20	org/json/JSONObject
    //   211: dup
    //   212: aload 18
    //   214: aload 8
    //   216: invokestatic 174	com/alipay/android/app/request/MspFrameFactory:a	(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    //   219: invokespecial 175	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   222: astore 6
    //   224: new 177	com/alipay/android/app/data/WindowFrameData
    //   227: dup
    //   228: aload_1
    //   229: aload_2
    //   230: aload 9
    //   232: iload 10
    //   234: aload 8
    //   236: aload 11
    //   238: invokespecial 180	com/alipay/android/app/data/WindowFrameData:<init>	(Lcom/alipay/android/app/net/Request;Lcom/alipay/android/app/net/Response;Ljava/lang/String;ILorg/json/JSONObject;Lorg/json/JSONArray;)V
    //   241: astore 7
    //   243: aload 7
    //   245: ifnull +10 -> 255
    //   248: aload 7
    //   250: aload 6
    //   252: invokevirtual 181	com/alipay/android/app/data/WindowFrameData:a	(Lorg/json/JSONObject;)V
    //   255: aload 7
    //   257: areturn
    //   258: astore 14
    //   260: aload_3
    //   261: astore 15
    //   263: aload 14
    //   265: invokestatic 184	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   268: invokestatic 189	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   271: ldc 191
    //   273: aload 15
    //   275: invokevirtual 192	org/json/JSONObject:toString	()Ljava/lang/String;
    //   278: invokevirtual 195	com/alipay/android/app/monitor/MonitorThread:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   281: new 197	com/alipay/android/app/exception/NetErrorException
    //   284: dup
    //   285: invokespecial 198	com/alipay/android/app/exception/NetErrorException:<init>	()V
    //   288: astore 16
    //   290: aload 16
    //   292: iconst_1
    //   293: invokevirtual 201	com/alipay/android/app/exception/NetErrorException:a	(I)V
    //   296: aload 16
    //   298: athrow
    //   299: astore 12
    //   301: aload 12
    //   303: invokestatic 184	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   306: invokestatic 189	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   309: aload 12
    //   311: ldc 203
    //   313: invokevirtual 206	com/alipay/android/app/monitor/MonitorThread:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   316: new 197	com/alipay/android/app/exception/NetErrorException
    //   319: dup
    //   320: invokespecial 198	com/alipay/android/app/exception/NetErrorException:<init>	()V
    //   323: astore 13
    //   325: aload 13
    //   327: iconst_1
    //   328: invokevirtual 201	com/alipay/android/app/exception/NetErrorException:a	(I)V
    //   331: aload 13
    //   333: athrow
    //   334: astore 14
    //   336: aload 6
    //   338: astore 15
    //   340: goto -77 -> 263
    //   343: aload_3
    //   344: astore 6
    //   346: aconst_null
    //   347: astore 7
    //   349: goto -106 -> 243
    //
    // Exception table:
    //   from	to	target	type
    //   161	224	258	org/json/JSONException
    //   161	224	299	java/lang/Exception
    //   224	243	299	java/lang/Exception
    //   224	243	334	org/json/JSONException
  }

  public final ProtocolType a()
  {
    return ProtocolType.a;
  }

  public final void a(FrameData paramFrameData)
  {
    paramFrameData.b(paramFrameData.k().optString("dismiss_time"));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.request.MspFrameFactory
 * JD-Core Version:    0.6.2
 */