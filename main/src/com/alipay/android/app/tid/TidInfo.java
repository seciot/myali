package com.alipay.android.app.tid;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.android.app.sys.DeviceInfo;
import com.alipay.android.app.sys.GlobalContext;

public class TidInfo
{
  private static TidInfo a;
  private String b;
  private String c;
  private long d;

  public static TidInfo a(String paramString1, String paramString2, long paramLong)
  {
    if ((TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString1)))
      return null;
    TidInfo localTidInfo = new TidInfo();
    localTidInfo.b = paramString1;
    localTidInfo.c = paramString2;
    localTidInfo.d = paramLong;
    return localTidInfo;
  }

  private static boolean c(String paramString)
  {
    if (TextUtils.isEmpty(paramString))
      return false;
    for (int i = 0; ; i++)
    {
      if (i >= paramString.length())
        break label67;
      int j = paramString.charAt(i);
      if (((j < 48) || (j > 57)) && ((j < 97) || (j > 102)) && ((j < 65) || (j > 70)))
        break;
    }
    label67: return true;
  }

  public static boolean f()
  {
    return TextUtils.isEmpty(a.b);
  }

  // ERROR //
  public static TidInfo g()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 53	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   6: invokevirtual 56	com/alipay/android/app/sys/GlobalContext:b	()Landroid/content/Context;
    //   9: astore_1
    //   10: new 58	com/alipay/android/app/tid/a
    //   13: dup
    //   14: aload_1
    //   15: invokespecial 61	com/alipay/android/app/tid/a:<init>	(Landroid/content/Context;)V
    //   18: astore_2
    //   19: aload_1
    //   20: ldc 63
    //   22: iconst_0
    //   23: invokevirtual 69	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   26: astore 10
    //   28: aload 10
    //   30: ldc 71
    //   32: ldc 73
    //   34: invokeinterface 79 3 0
    //   39: astore 17
    //   41: aload 17
    //   43: astore 7
    //   45: aload 10
    //   47: invokeinterface 83 1 0
    //   52: ldc 71
    //   54: invokeinterface 89 2 0
    //   59: invokeinterface 92 1 0
    //   64: pop
    //   65: aload 10
    //   67: ldc 94
    //   69: ldc 73
    //   71: invokeinterface 79 3 0
    //   76: astore 19
    //   78: aload 19
    //   80: astore 6
    //   82: aload 10
    //   84: invokeinterface 83 1 0
    //   89: ldc 94
    //   91: invokeinterface 89 2 0
    //   96: invokeinterface 92 1 0
    //   101: pop
    //   102: aload 10
    //   104: ldc 96
    //   106: ldc 98
    //   108: invokeinterface 79 3 0
    //   113: invokestatic 104	java/lang/Long:valueOf	(Ljava/lang/String;)Ljava/lang/Long;
    //   116: invokevirtual 108	java/lang/Long:longValue	()J
    //   119: lstore 25
    //   121: lload 25
    //   123: lstore 4
    //   125: aload 10
    //   127: invokeinterface 83 1 0
    //   132: ldc 96
    //   134: invokeinterface 89 2 0
    //   139: invokeinterface 92 1 0
    //   144: pop
    //   145: aload 7
    //   147: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   150: ifne +14 -> 164
    //   153: aload 7
    //   155: aload_1
    //   156: invokestatic 113	com/alipay/android/app/sys/DeviceInfo:d	(Landroid/content/Context;)Ljava/lang/String;
    //   159: invokestatic 117	com/alipay/android/app/encrypt/Des:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   162: astore 7
    //   164: aload 7
    //   166: invokestatic 119	com/alipay/android/app/tid/TidInfo:c	(Ljava/lang/String;)Z
    //   169: ifne +12 -> 181
    //   172: lconst_0
    //   173: lstore 4
    //   175: aconst_null
    //   176: astore 6
    //   178: aconst_null
    //   179: astore 7
    //   181: aload_1
    //   182: invokestatic 122	com/alipay/android/app/sys/DeviceInfo:a	(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;
    //   185: invokevirtual 125	com/alipay/android/app/sys/DeviceInfo:b	()Ljava/lang/String;
    //   188: astore 13
    //   190: aload_1
    //   191: invokestatic 122	com/alipay/android/app/sys/DeviceInfo:a	(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;
    //   194: invokevirtual 127	com/alipay/android/app/sys/DeviceInfo:c	()Ljava/lang/String;
    //   197: astore 14
    //   199: aload 7
    //   201: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   204: ifne +11 -> 215
    //   207: aload 6
    //   209: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   212: ifeq +307 -> 519
    //   215: aload_2
    //   216: aload 13
    //   218: aload 14
    //   220: invokevirtual 128	com/alipay/android/app/tid/a:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   223: astore 7
    //   225: aload 7
    //   227: invokestatic 119	com/alipay/android/app/tid/TidInfo:c	(Ljava/lang/String;)Z
    //   230: ifeq +269 -> 499
    //   233: aload_2
    //   234: aload 13
    //   236: aload 14
    //   238: invokevirtual 130	com/alipay/android/app/tid/a:d	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   241: astore 6
    //   243: aload_2
    //   244: aload 13
    //   246: aload 14
    //   248: invokevirtual 133	com/alipay/android/app/tid/a:c	(Ljava/lang/String;Ljava/lang/String;)J
    //   251: lstore 15
    //   253: lload 15
    //   255: lstore 4
    //   257: aload_2
    //   258: invokevirtual 136	com/alipay/android/app/tid/a:close	()V
    //   261: invokestatic 139	com/alipay/android/app/tid/TidInfo:j	()V
    //   264: aload 6
    //   266: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   269: ifeq +322 -> 591
    //   272: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   275: getfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   278: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   281: ifeq +310 -> 591
    //   284: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   287: invokestatic 142	com/alipay/android/app/tid/TidInfo:i	()Ljava/lang/String;
    //   290: putfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   293: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   296: lload 4
    //   298: putfield 29	com/alipay/android/app/tid/TidInfo:d	J
    //   301: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   304: aload 7
    //   306: putfield 25	com/alipay/android/app/tid/TidInfo:b	Ljava/lang/String;
    //   309: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   312: astore 9
    //   314: ldc 2
    //   316: monitorexit
    //   317: aload 9
    //   319: areturn
    //   320: astore 21
    //   322: invokestatic 147	java/lang/System:currentTimeMillis	()J
    //   325: lstore 22
    //   327: lload 22
    //   329: lstore 4
    //   331: goto -206 -> 125
    //   334: astore 12
    //   336: lconst_0
    //   337: lstore 4
    //   339: aconst_null
    //   340: astore 6
    //   342: aconst_null
    //   343: astore 7
    //   345: aload 12
    //   347: invokestatic 152	com/alipay/android/app/util/LogUtils:a	(Ljava/lang/Object;)V
    //   350: aload 7
    //   352: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   355: ifne +14 -> 369
    //   358: aload 7
    //   360: aload_1
    //   361: invokestatic 113	com/alipay/android/app/sys/DeviceInfo:d	(Landroid/content/Context;)Ljava/lang/String;
    //   364: invokestatic 117	com/alipay/android/app/encrypt/Des:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   367: astore 7
    //   369: aload 7
    //   371: invokestatic 119	com/alipay/android/app/tid/TidInfo:c	(Ljava/lang/String;)Z
    //   374: ifne -193 -> 181
    //   377: lconst_0
    //   378: lstore 4
    //   380: aconst_null
    //   381: astore 6
    //   383: aconst_null
    //   384: astore 7
    //   386: goto -205 -> 181
    //   389: aload 7
    //   391: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   394: ifne +14 -> 408
    //   397: aload 7
    //   399: aload_1
    //   400: invokestatic 113	com/alipay/android/app/sys/DeviceInfo:d	(Landroid/content/Context;)Ljava/lang/String;
    //   403: invokestatic 117	com/alipay/android/app/encrypt/Des:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   406: astore 7
    //   408: aload 7
    //   410: invokestatic 119	com/alipay/android/app/tid/TidInfo:c	(Ljava/lang/String;)Z
    //   413: ifne +12 -> 425
    //   416: lconst_0
    //   417: lstore 4
    //   419: aconst_null
    //   420: astore 6
    //   422: aconst_null
    //   423: astore 7
    //   425: aload 11
    //   427: athrow
    //   428: astore_3
    //   429: invokestatic 157	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   432: aload_3
    //   433: ldc 159
    //   435: invokevirtual 162	com/alipay/android/app/monitor/MonitorThread:b	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   438: aload_2
    //   439: invokevirtual 136	com/alipay/android/app/tid/a:close	()V
    //   442: invokestatic 139	com/alipay/android/app/tid/TidInfo:j	()V
    //   445: aload 6
    //   447: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   450: ifeq +172 -> 622
    //   453: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   456: getfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   459: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   462: ifeq +160 -> 622
    //   465: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   468: invokestatic 142	com/alipay/android/app/tid/TidInfo:i	()Ljava/lang/String;
    //   471: putfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   474: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   477: lload 4
    //   479: putfield 29	com/alipay/android/app/tid/TidInfo:d	J
    //   482: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   485: aload 7
    //   487: putfield 25	com/alipay/android/app/tid/TidInfo:b	Ljava/lang/String;
    //   490: goto -181 -> 309
    //   493: astore_0
    //   494: ldc 2
    //   496: monitorexit
    //   497: aload_0
    //   498: athrow
    //   499: aload_2
    //   500: aload 13
    //   502: aload 14
    //   504: invokevirtual 165	com/alipay/android/app/tid/a:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   507: lconst_0
    //   508: lstore 4
    //   510: aconst_null
    //   511: astore 6
    //   513: aconst_null
    //   514: astore 7
    //   516: goto -259 -> 257
    //   519: aload_2
    //   520: aload 13
    //   522: aload 14
    //   524: aload 7
    //   526: aload 6
    //   528: invokevirtual 168	com/alipay/android/app/tid/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   531: goto -274 -> 257
    //   534: astore 8
    //   536: aload_2
    //   537: invokevirtual 136	com/alipay/android/app/tid/a:close	()V
    //   540: invokestatic 139	com/alipay/android/app/tid/TidInfo:j	()V
    //   543: aload 6
    //   545: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   548: ifeq +105 -> 653
    //   551: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   554: getfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   557: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   560: ifeq +93 -> 653
    //   563: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   566: invokestatic 142	com/alipay/android/app/tid/TidInfo:i	()Ljava/lang/String;
    //   569: putfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   572: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   575: lload 4
    //   577: putfield 29	com/alipay/android/app/tid/TidInfo:d	J
    //   580: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   583: aload 7
    //   585: putfield 25	com/alipay/android/app/tid/TidInfo:b	Ljava/lang/String;
    //   588: aload 8
    //   590: athrow
    //   591: aload 6
    //   593: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   596: ifeq +15 -> 611
    //   599: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   602: getfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   605: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   608: ifeq -315 -> 293
    //   611: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   614: aload 6
    //   616: putfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   619: goto -326 -> 293
    //   622: aload 6
    //   624: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   627: ifeq +15 -> 642
    //   630: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   633: getfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   636: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   639: ifeq -165 -> 474
    //   642: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   645: aload 6
    //   647: putfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   650: goto -176 -> 474
    //   653: aload 6
    //   655: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   658: ifeq +15 -> 673
    //   661: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   664: getfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   667: invokestatic 22	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   670: ifeq -98 -> 572
    //   673: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   676: aload 6
    //   678: putfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   681: goto -109 -> 572
    //   684: astore 8
    //   686: lconst_0
    //   687: lstore 4
    //   689: aconst_null
    //   690: astore 6
    //   692: aconst_null
    //   693: astore 7
    //   695: goto -159 -> 536
    //   698: astore_3
    //   699: lconst_0
    //   700: lstore 4
    //   702: aconst_null
    //   703: astore 6
    //   705: aconst_null
    //   706: astore 7
    //   708: goto -279 -> 429
    //   711: astore 11
    //   713: lconst_0
    //   714: lstore 4
    //   716: aconst_null
    //   717: astore 6
    //   719: goto -330 -> 389
    //   722: astore 11
    //   724: lconst_0
    //   725: lstore 4
    //   727: goto -338 -> 389
    //   730: astore 11
    //   732: goto -343 -> 389
    //   735: astore 12
    //   737: lconst_0
    //   738: lstore 4
    //   740: aconst_null
    //   741: astore 6
    //   743: goto -398 -> 345
    //   746: astore 12
    //   748: lconst_0
    //   749: lstore 4
    //   751: goto -406 -> 345
    //   754: astore 12
    //   756: goto -411 -> 345
    //   759: astore 11
    //   761: lconst_0
    //   762: lstore 4
    //   764: aconst_null
    //   765: astore 6
    //   767: aconst_null
    //   768: astore 7
    //   770: goto -381 -> 389
    //
    // Exception table:
    //   from	to	target	type
    //   102	121	320	java/lang/Exception
    //   28	41	334	java/lang/Exception
    //   145	164	428	java/lang/Exception
    //   164	172	428	java/lang/Exception
    //   181	215	428	java/lang/Exception
    //   215	253	428	java/lang/Exception
    //   350	369	428	java/lang/Exception
    //   369	377	428	java/lang/Exception
    //   389	408	428	java/lang/Exception
    //   408	416	428	java/lang/Exception
    //   425	428	428	java/lang/Exception
    //   499	507	428	java/lang/Exception
    //   519	531	428	java/lang/Exception
    //   3	19	493	finally
    //   257	293	493	finally
    //   293	309	493	finally
    //   309	314	493	finally
    //   438	474	493	finally
    //   474	490	493	finally
    //   536	572	493	finally
    //   572	591	493	finally
    //   591	611	493	finally
    //   611	619	493	finally
    //   622	642	493	finally
    //   642	650	493	finally
    //   653	673	493	finally
    //   673	681	493	finally
    //   145	164	534	finally
    //   164	172	534	finally
    //   181	215	534	finally
    //   215	253	534	finally
    //   350	369	534	finally
    //   369	377	534	finally
    //   389	408	534	finally
    //   408	416	534	finally
    //   425	428	534	finally
    //   429	438	534	finally
    //   499	507	534	finally
    //   519	531	534	finally
    //   19	28	684	finally
    //   19	28	698	java/lang/Exception
    //   45	78	711	finally
    //   82	102	722	finally
    //   102	121	722	finally
    //   322	327	722	finally
    //   125	145	730	finally
    //   345	350	730	finally
    //   45	78	735	java/lang/Exception
    //   82	102	746	java/lang/Exception
    //   322	327	746	java/lang/Exception
    //   125	145	754	java/lang/Exception
    //   28	41	759	finally
  }

  public static void h()
  {
    a.b = null;
    a.c = i();
    a.d = 0L;
    a = null;
    Context localContext = GlobalContext.a().b();
    String str1 = DeviceInfo.a(localContext).b();
    String str2 = DeviceInfo.a(localContext).c();
    a locala = new a(localContext);
    locala.a(str1, str2);
    locala.close();
  }

  public static String i()
  {
    String str = Long.toHexString(System.currentTimeMillis());
    if (str.length() > 10)
      str = str.substring(-10 + str.length());
    return str;
  }

  private static void j()
  {
    if (a == null)
      a = new TidInfo();
  }

  public final String a()
  {
    return this.b;
  }

  // ERROR //
  public final void a(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 25	com/alipay/android/app/tid/TidInfo:b	Ljava/lang/String;
    //   6: invokestatic 119	com/alipay/android/app/tid/TidInfo:c	(Ljava/lang/String;)Z
    //   9: istore_3
    //   10: iload_3
    //   11: ifne +6 -> 17
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: invokestatic 139	com/alipay/android/app/tid/TidInfo:j	()V
    //   20: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   23: aload_0
    //   24: getfield 25	com/alipay/android/app/tid/TidInfo:b	Ljava/lang/String;
    //   27: putfield 25	com/alipay/android/app/tid/TidInfo:b	Ljava/lang/String;
    //   30: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   33: aload_0
    //   34: getfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   37: putfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   40: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   43: aload_0
    //   44: getfield 29	com/alipay/android/app/tid/TidInfo:d	J
    //   47: putfield 29	com/alipay/android/app/tid/TidInfo:d	J
    //   50: new 58	com/alipay/android/app/tid/a
    //   53: dup
    //   54: aload_1
    //   55: invokespecial 61	com/alipay/android/app/tid/a:<init>	(Landroid/content/Context;)V
    //   58: astore 4
    //   60: aload 4
    //   62: aload_1
    //   63: invokestatic 122	com/alipay/android/app/sys/DeviceInfo:a	(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;
    //   66: invokevirtual 125	com/alipay/android/app/sys/DeviceInfo:b	()Ljava/lang/String;
    //   69: aload_1
    //   70: invokestatic 122	com/alipay/android/app/sys/DeviceInfo:a	(Landroid/content/Context;)Lcom/alipay/android/app/sys/DeviceInfo;
    //   73: invokevirtual 127	com/alipay/android/app/sys/DeviceInfo:c	()Ljava/lang/String;
    //   76: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   79: getfield 25	com/alipay/android/app/tid/TidInfo:b	Ljava/lang/String;
    //   82: getstatic 44	com/alipay/android/app/tid/TidInfo:a	Lcom/alipay/android/app/tid/TidInfo;
    //   85: getfield 27	com/alipay/android/app/tid/TidInfo:c	Ljava/lang/String;
    //   88: invokevirtual 168	com/alipay/android/app/tid/a:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   91: aload 4
    //   93: invokevirtual 136	com/alipay/android/app/tid/a:close	()V
    //   96: goto -82 -> 14
    //   99: astore_2
    //   100: aload_0
    //   101: monitorexit
    //   102: aload_2
    //   103: athrow
    //   104: astore 6
    //   106: aload 6
    //   108: invokevirtual 180	java/lang/Exception:printStackTrace	()V
    //   111: invokestatic 157	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   114: aload 6
    //   116: ldc 182
    //   118: invokevirtual 162	com/alipay/android/app/monitor/MonitorThread:b	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   121: aload 4
    //   123: invokevirtual 136	com/alipay/android/app/tid/a:close	()V
    //   126: goto -112 -> 14
    //   129: astore 5
    //   131: aload 4
    //   133: invokevirtual 136	com/alipay/android/app/tid/a:close	()V
    //   136: aload 5
    //   138: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	10	99	finally
    //   17	60	99	finally
    //   91	96	99	finally
    //   121	126	99	finally
    //   131	139	99	finally
    //   60	91	104	java/lang/Exception
    //   60	91	129	finally
    //   106	121	129	finally
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final String b()
  {
    return this.c;
  }

  public final void b(String paramString)
  {
    this.c = paramString;
  }

  public final long c()
  {
    return this.d;
  }

  public final void d()
  {
    this.c = i();
  }

  public final boolean e()
  {
    return TextUtils.isEmpty(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.tid.TidInfo
 * JD-Core Version:    0.6.2
 */