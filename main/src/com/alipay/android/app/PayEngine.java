package com.alipay.android.app;

import android.content.BroadcastReceiver;
import com.alipay.android.app.data.BizData;
import com.alipay.android.app.data.BizDataSource;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.util.BizUtils;

public class PayEngine
{
  private static BroadcastReceiver a = null;

  // ERROR //
  public static String a(String paramString)
  {
    // Byte code:
    //   0: getstatic 10	com/alipay/android/app/PayEngine:a	Landroid/content/BroadcastReceiver;
    //   3: ifnonnull +38 -> 41
    //   6: new 17	com/alipay/android/app/e
    //   9: dup
    //   10: invokespecial 20	com/alipay/android/app/e:<init>	()V
    //   13: putstatic 10	com/alipay/android/app/PayEngine:a	Landroid/content/BroadcastReceiver;
    //   16: new 22	android/content/IntentFilter
    //   19: dup
    //   20: ldc 24
    //   22: invokespecial 27	android/content/IntentFilter:<init>	(Ljava/lang/String;)V
    //   25: astore 25
    //   27: invokestatic 33	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   30: invokestatic 38	android/support/v4/content/LocalBroadcastManager:getInstance	(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    //   33: getstatic 10	com/alipay/android/app/PayEngine:a	Landroid/content/BroadcastReceiver;
    //   36: aload 25
    //   38: invokevirtual 42	android/support/v4/content/LocalBroadcastManager:registerReceiver	(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    //   41: invokestatic 48	java/lang/System:currentTimeMillis	()J
    //   44: lstore_1
    //   45: invokestatic 53	com/alipay/android/app/data/BizDataSource:a	()Lcom/alipay/android/app/data/BizDataSource;
    //   48: astore_3
    //   49: aload_0
    //   50: invokestatic 58	com/alipay/android/app/util/StringUtil:b	(Ljava/lang/String;)Ljava/lang/String;
    //   53: astore 4
    //   55: aload 4
    //   57: invokestatic 63	com/alipay/android/app/util/BizUtils:a	(Ljava/lang/String;)I
    //   60: istore 5
    //   62: invokestatic 69	android/os/Binder:getCallingPid	()I
    //   65: istore 6
    //   67: aload 4
    //   69: iload 6
    //   71: invokestatic 72	com/alipay/android/app/PayEngine:b	(Ljava/lang/String;I)Z
    //   74: pop
    //   75: aload_3
    //   76: iload 5
    //   78: invokevirtual 75	com/alipay/android/app/data/BizDataSource:b	(I)Lcom/alipay/android/app/data/BizData;
    //   81: astore 19
    //   83: aload 19
    //   85: astore 9
    //   87: aload 9
    //   89: aload 4
    //   91: invokevirtual 79	com/alipay/android/app/data/BizData:a	(Ljava/lang/String;)V
    //   94: aload 9
    //   96: invokevirtual 83	com/alipay/android/app/data/BizData:i	()Lcom/alipay/android/lib/plusin/ui/WindowManagerRouter;
    //   99: invokevirtual 87	com/alipay/android/lib/plusin/ui/WindowManagerRouter:a	()V
    //   102: aload_3
    //   103: invokevirtual 89	com/alipay/android/app/data/BizDataSource:b	()V
    //   106: aload 9
    //   108: invokevirtual 93	com/alipay/android/app/data/BizData:c	()Lcom/alipay/android/app/data/DataProcessor;
    //   111: astore 21
    //   113: aload 21
    //   115: aload 4
    //   117: lload_1
    //   118: invokevirtual 98	com/alipay/android/app/data/DataProcessor:a	(Ljava/lang/String;J)V
    //   121: aload 9
    //   123: invokevirtual 102	com/alipay/android/app/data/BizData:m	()Lcom/alipay/android/app/data/BizDataUnit;
    //   126: astore 22
    //   128: aload 22
    //   130: astore 8
    //   132: aload 8
    //   134: ifnull +12 -> 146
    //   137: aload 8
    //   139: aload 9
    //   141: invokeinterface 107 2 0
    //   146: aload 21
    //   148: invokevirtual 111	com/alipay/android/app/data/DataProcessor:e	()Z
    //   151: ifne +141 -> 292
    //   154: aload 9
    //   156: invokevirtual 114	com/alipay/android/app/data/BizData:d	()V
    //   159: goto -13 -> 146
    //   162: astore 7
    //   164: aload 7
    //   166: invokestatic 119	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   169: invokestatic 124	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   172: aload 7
    //   174: ldc 126
    //   176: invokevirtual 129	com/alipay/android/app/monitor/MonitorThread:b	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   179: aload 8
    //   181: ifnull +12 -> 193
    //   184: aload 8
    //   186: aload 9
    //   188: invokeinterface 131 2 0
    //   193: aload 9
    //   195: ifnull +8 -> 203
    //   198: aload 9
    //   200: invokevirtual 134	com/alipay/android/app/data/BizData:h	()V
    //   203: aload_3
    //   204: iload 5
    //   206: invokevirtual 137	com/alipay/android/app/data/BizDataSource:d	(I)V
    //   209: invokestatic 142	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   212: invokevirtual 145	com/alipay/android/app/sys/GlobalContext:c	()Lcom/alipay/android/app/IAppConfig;
    //   215: invokeinterface 149 1 0
    //   220: istore 12
    //   222: aconst_null
    //   223: astore 13
    //   225: iload 12
    //   227: ifeq +21 -> 248
    //   230: invokestatic 154	com/alipay/trobot/external/DefaultMesssageHandler:getInstance	()Lcom/alipay/trobot/external/DefaultMesssageHandler;
    //   233: getstatic 160	com/alipay/test/ui/core/EventObject:OnDestroy	Lcom/alipay/test/ui/core/EventObject;
    //   236: iconst_1
    //   237: anewarray 4	java/lang/Object
    //   240: dup
    //   241: iconst_0
    //   242: aload 4
    //   244: aastore
    //   245: invokevirtual 164	com/alipay/trobot/external/DefaultMesssageHandler:onChangeEvent	(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    //   248: invokestatic 48	java/lang/System:currentTimeMillis	()J
    //   251: lload_1
    //   252: lsub
    //   253: lstore 14
    //   255: invokestatic 124	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   258: lload 14
    //   260: ldc 166
    //   262: invokevirtual 169	com/alipay/android/app/monitor/MonitorThread:c	(JLjava/lang/String;)V
    //   265: ldc 171
    //   267: aload 4
    //   269: invokestatic 176	com/alipay/android/mini/util/LogAgent:c	(Ljava/lang/String;Ljava/lang/String;)V
    //   272: aload 13
    //   274: invokevirtual 182	java/lang/String:trim	()Ljava/lang/String;
    //   277: areturn
    //   278: astore 26
    //   280: aload 26
    //   282: invokevirtual 185	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   285: pop
    //   286: invokestatic 186	com/alipay/android/app/util/LogUtils:a	()V
    //   289: goto -248 -> 41
    //   292: aload 21
    //   294: invokevirtual 188	com/alipay/android/app/data/DataProcessor:b	()Ljava/lang/String;
    //   297: astore 23
    //   299: aload 23
    //   301: astore 13
    //   303: aload 8
    //   305: ifnull +12 -> 317
    //   308: aload 8
    //   310: aload 9
    //   312: invokeinterface 131 2 0
    //   317: aload 9
    //   319: ifnull +8 -> 327
    //   322: aload 9
    //   324: invokevirtual 134	com/alipay/android/app/data/BizData:h	()V
    //   327: aload_3
    //   328: iload 5
    //   330: invokevirtual 137	com/alipay/android/app/data/BizDataSource:d	(I)V
    //   333: invokestatic 142	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   336: invokevirtual 145	com/alipay/android/app/sys/GlobalContext:c	()Lcom/alipay/android/app/IAppConfig;
    //   339: invokeinterface 149 1 0
    //   344: ifeq -96 -> 248
    //   347: invokestatic 154	com/alipay/trobot/external/DefaultMesssageHandler:getInstance	()Lcom/alipay/trobot/external/DefaultMesssageHandler;
    //   350: getstatic 160	com/alipay/test/ui/core/EventObject:OnDestroy	Lcom/alipay/test/ui/core/EventObject;
    //   353: iconst_1
    //   354: anewarray 4	java/lang/Object
    //   357: dup
    //   358: iconst_0
    //   359: aload 4
    //   361: aastore
    //   362: invokevirtual 164	com/alipay/trobot/external/DefaultMesssageHandler:onChangeEvent	(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    //   365: goto -117 -> 248
    //   368: astore 24
    //   370: goto -122 -> 248
    //   373: astore 17
    //   375: aconst_null
    //   376: astore 8
    //   378: aconst_null
    //   379: astore 9
    //   381: aload 17
    //   383: astore 10
    //   385: aload 8
    //   387: ifnull +12 -> 399
    //   390: aload 8
    //   392: aload 9
    //   394: invokeinterface 131 2 0
    //   399: aload 9
    //   401: ifnull +8 -> 409
    //   404: aload 9
    //   406: invokevirtual 134	com/alipay/android/app/data/BizData:h	()V
    //   409: aload_3
    //   410: iload 5
    //   412: invokevirtual 137	com/alipay/android/app/data/BizDataSource:d	(I)V
    //   415: invokestatic 142	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   418: invokevirtual 145	com/alipay/android/app/sys/GlobalContext:c	()Lcom/alipay/android/app/IAppConfig;
    //   421: invokeinterface 149 1 0
    //   426: ifeq +21 -> 447
    //   429: invokestatic 154	com/alipay/trobot/external/DefaultMesssageHandler:getInstance	()Lcom/alipay/trobot/external/DefaultMesssageHandler;
    //   432: getstatic 160	com/alipay/test/ui/core/EventObject:OnDestroy	Lcom/alipay/test/ui/core/EventObject;
    //   435: iconst_1
    //   436: anewarray 4	java/lang/Object
    //   439: dup
    //   440: iconst_0
    //   441: aload 4
    //   443: aastore
    //   444: invokevirtual 164	com/alipay/trobot/external/DefaultMesssageHandler:onChangeEvent	(Lcom/alipay/test/ui/core/EventObject;[Ljava/lang/Object;)V
    //   447: aload 10
    //   449: athrow
    //   450: astore 11
    //   452: goto -5 -> 447
    //   455: astore 20
    //   457: aload 20
    //   459: astore 10
    //   461: aconst_null
    //   462: astore 8
    //   464: goto -79 -> 385
    //   467: astore 10
    //   469: goto -84 -> 385
    //   472: astore 16
    //   474: aconst_null
    //   475: astore 13
    //   477: goto -229 -> 248
    //   480: astore 7
    //   482: aconst_null
    //   483: astore 8
    //   485: aconst_null
    //   486: astore 9
    //   488: goto -324 -> 164
    //   491: astore 7
    //   493: aconst_null
    //   494: astore 8
    //   496: goto -332 -> 164
    //
    // Exception table:
    //   from	to	target	type
    //   137	146	162	java/lang/Exception
    //   146	159	162	java/lang/Exception
    //   292	299	162	java/lang/Exception
    //   27	41	278	java/lang/Throwable
    //   347	365	368	java/lang/Exception
    //   67	83	373	finally
    //   429	447	450	java/lang/Exception
    //   87	128	455	finally
    //   137	146	467	finally
    //   146	159	467	finally
    //   164	179	467	finally
    //   292	299	467	finally
    //   230	248	472	java/lang/Exception
    //   67	83	480	java/lang/Exception
    //   87	128	491	java/lang/Exception
  }

  public static String a(String paramString1, String paramString2, String paramString3)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("resultStatus=");
    localStringBuilder.append("{");
    localStringBuilder.append(paramString2);
    localStringBuilder.append("};");
    localStringBuilder.append("memo=");
    localStringBuilder.append("{");
    localStringBuilder.append(paramString1);
    localStringBuilder.append("};");
    localStringBuilder.append("result=");
    localStringBuilder.append("{");
    localStringBuilder.append(paramString3);
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }

  private static boolean b(String paramString, int paramInt)
  {
    BizDataSource localBizDataSource = BizDataSource.a();
    int i = BizUtils.a(paramString);
    if (localBizDataSource.a(i))
    {
      try
      {
        BizData localBizData3 = localBizDataSource.b(i);
        localBizData2 = localBizData3;
        if (localBizData2 == null)
          break label74;
        BizDataSource.v(localBizDataSource, localBizData2);
        return true;
      }
      catch (AppErrorException localAppErrorException)
      {
        while (true)
        {
          localAppErrorException.printStackTrace();
          BizData localBizData2 = null;
        }
      }
    }
    else
    {
      BizData localBizData1 = localBizDataSource.c(paramInt);
      if (localBizData1 != null)
      {
        BizDataSource.a(localBizDataSource, localBizData1);
        return true;
      }
    }
    label74: return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.PayEngine
 * JD-Core Version:    0.6.2
 */