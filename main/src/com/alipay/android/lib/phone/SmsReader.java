package com.alipay.android.lib.phone;

public class SmsReader
{
  private boolean a = false;
  private long b;

  // ERROR //
  public final java.lang.String a(android.content.Context paramContext, java.lang.String[] paramArrayOfString, java.lang.String paramString, int paramInt, com.alipay.android.app.data.ValidatedFrameData paramValidatedFrameData)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload 5
    //   3: invokevirtual 23	com/alipay/android/app/data/ValidatedFrameData:g	()J
    //   6: putfield 25	com/alipay/android/lib/phone/SmsReader:b	J
    //   9: aload_3
    //   10: invokestatic 31	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   13: astore 9
    //   15: ldc 33
    //   17: invokestatic 39	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   20: astore 10
    //   22: bipush 8
    //   24: anewarray 41	java/lang/String
    //   27: dup
    //   28: iconst_0
    //   29: ldc 43
    //   31: aastore
    //   32: dup
    //   33: iconst_1
    //   34: ldc 45
    //   36: aastore
    //   37: dup
    //   38: iconst_2
    //   39: ldc 47
    //   41: aastore
    //   42: dup
    //   43: iconst_3
    //   44: ldc 49
    //   46: aastore
    //   47: dup
    //   48: iconst_4
    //   49: ldc 51
    //   51: aastore
    //   52: dup
    //   53: iconst_5
    //   54: ldc 53
    //   56: aastore
    //   57: dup
    //   58: bipush 6
    //   60: ldc 55
    //   62: aastore
    //   63: dup
    //   64: bipush 7
    //   66: ldc 57
    //   68: aastore
    //   69: astore 11
    //   71: aload_1
    //   72: invokevirtual 63	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   75: aload 10
    //   77: aload 11
    //   79: aconst_null
    //   80: aconst_null
    //   81: ldc 65
    //   83: invokevirtual 71	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   86: astore 12
    //   88: aload 12
    //   90: astore 7
    //   92: aload 7
    //   94: invokeinterface 77 1 0
    //   99: ifeq +365 -> 464
    //   102: aload 7
    //   104: ldc 45
    //   106: invokeinterface 81 2 0
    //   111: istore 14
    //   113: aload 7
    //   115: ldc 49
    //   117: invokeinterface 81 2 0
    //   122: istore 15
    //   124: aload 7
    //   126: ldc 51
    //   128: invokeinterface 81 2 0
    //   133: istore 16
    //   135: aload 7
    //   137: ldc 53
    //   139: invokeinterface 81 2 0
    //   144: pop
    //   145: aload 7
    //   147: ldc 55
    //   149: invokeinterface 81 2 0
    //   154: istore 18
    //   156: aload 7
    //   158: ldc 57
    //   160: invokeinterface 81 2 0
    //   165: istore 19
    //   167: aconst_null
    //   168: astore 13
    //   170: aload_0
    //   171: getfield 14	com/alipay/android/lib/phone/SmsReader:a	Z
    //   174: ifne +178 -> 352
    //   177: aload 7
    //   179: iload 14
    //   181: invokeinterface 85 2 0
    //   186: astore 20
    //   188: aload 7
    //   190: iload 15
    //   192: invokeinterface 85 2 0
    //   197: astore 21
    //   199: aload 7
    //   201: iload 16
    //   203: invokeinterface 89 2 0
    //   208: lstore 22
    //   210: aload 7
    //   212: iload 18
    //   214: invokeinterface 93 2 0
    //   219: istore 24
    //   221: aload 7
    //   223: iload 19
    //   225: invokeinterface 93 2 0
    //   230: istore 25
    //   232: lload 22
    //   234: aload_0
    //   235: getfield 25	com/alipay/android/lib/phone/SmsReader:b	J
    //   238: lsub
    //   239: lconst_0
    //   240: lcmp
    //   241: ifle +89 -> 330
    //   244: aload_2
    //   245: arraylength
    //   246: istore 27
    //   248: iconst_0
    //   249: istore 28
    //   251: iconst_0
    //   252: istore 29
    //   254: iload 28
    //   256: iload 27
    //   258: if_icmpge +30 -> 288
    //   261: aload_2
    //   262: iload 28
    //   264: aaload
    //   265: astore 30
    //   267: aload 20
    //   269: invokestatic 99	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   272: ifne +105 -> 377
    //   275: aload 20
    //   277: aload 30
    //   279: invokevirtual 103	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   282: ifeq +95 -> 377
    //   285: iconst_1
    //   286: istore 29
    //   288: iload 29
    //   290: ifeq +40 -> 330
    //   293: iload 24
    //   295: iconst_1
    //   296: if_icmpne +34 -> 330
    //   299: iload 25
    //   301: ifne +29 -> 330
    //   304: aload 9
    //   306: aload 21
    //   308: invokevirtual 107	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   311: astore 31
    //   313: aload 31
    //   315: invokevirtual 112	java/util/regex/Matcher:find	()Z
    //   318: ifeq +12 -> 330
    //   321: aload 31
    //   323: iload 4
    //   325: invokevirtual 115	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   328: astore 13
    //   330: aload 13
    //   332: invokestatic 99	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   335: ifeq +17 -> 352
    //   338: aload 7
    //   340: invokeinterface 118 1 0
    //   345: istore 26
    //   347: iload 26
    //   349: ifne -179 -> 170
    //   352: aload 7
    //   354: ifnull +20 -> 374
    //   357: aload 7
    //   359: invokeinterface 121 1 0
    //   364: ifne +10 -> 374
    //   367: aload 7
    //   369: invokeinterface 124 1 0
    //   374: aload 13
    //   376: areturn
    //   377: iinc 28 1
    //   380: goto -129 -> 251
    //   383: astore 8
    //   385: aconst_null
    //   386: astore 7
    //   388: invokestatic 129	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   391: aload 8
    //   393: ldc 131
    //   395: invokevirtual 134	com/alipay/android/app/monitor/MonitorThread:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   398: aload 7
    //   400: ifnull +62 -> 462
    //   403: aload 7
    //   405: invokeinterface 121 1 0
    //   410: ifne +52 -> 462
    //   413: aload 7
    //   415: invokeinterface 124 1 0
    //   420: aconst_null
    //   421: areturn
    //   422: astore 6
    //   424: aconst_null
    //   425: astore 7
    //   427: aload 7
    //   429: ifnull +20 -> 449
    //   432: aload 7
    //   434: invokeinterface 121 1 0
    //   439: ifne +10 -> 449
    //   442: aload 7
    //   444: invokeinterface 124 1 0
    //   449: aload 6
    //   451: athrow
    //   452: astore 6
    //   454: goto -27 -> 427
    //   457: astore 8
    //   459: goto -71 -> 388
    //   462: aconst_null
    //   463: areturn
    //   464: aconst_null
    //   465: astore 13
    //   467: goto -115 -> 352
    //
    // Exception table:
    //   from	to	target	type
    //   9	88	383	android/database/sqlite/SQLiteException
    //   9	88	422	finally
    //   92	167	452	finally
    //   170	248	452	finally
    //   261	285	452	finally
    //   304	330	452	finally
    //   330	347	452	finally
    //   388	398	452	finally
    //   92	167	457	android/database/sqlite/SQLiteException
    //   170	248	457	android/database/sqlite/SQLiteException
    //   261	285	457	android/database/sqlite/SQLiteException
    //   304	330	457	android/database/sqlite/SQLiteException
    //   330	347	457	android/database/sqlite/SQLiteException
  }

  public final void a()
  {
    this.a = true;
  }

  public final void b()
  {
    this.a = false;
  }

  public final boolean c()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.lib.phone.SmsReader
 * JD-Core Version:    0.6.2
 */