package com.alipay.mobile.security.securitycommon;

import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AutoReadSmsCheckCodeCallBack;
import com.alipay.mobile.framework.service.ext.security.QihooGuardService;

public class AutoReadSmsCheckCode
{
  private static final String a = AutoReadSmsCheckCode.class.getSimpleName();
  private boolean b = true;
  private boolean c = false;
  private long d;
  private long e = System.currentTimeMillis();
  private AutoReadSmsCheckCodeCallBack f;
  private long g = 0L;

  public AutoReadSmsCheckCode(ActivityApplication paramActivityApplication, AutoReadSmsCheckCodeCallBack paramAutoReadSmsCheckCodeCallBack)
  {
    this.f = paramAutoReadSmsCheckCodeCallBack;
    this.g = 0L;
    QihooGuardService.isQihooGuardOpened();
  }

  // ERROR //
  private long a(android.content.Context paramContext)
  {
    // Byte code:
    //   0: ldc 56
    //   2: invokestatic 62	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   5: astore 9
    //   7: iconst_2
    //   8: anewarray 64	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: ldc 66
    //   15: aastore
    //   16: dup
    //   17: iconst_1
    //   18: ldc 68
    //   20: aastore
    //   21: astore 10
    //   23: aload_1
    //   24: invokevirtual 74	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   27: aload 9
    //   29: aload 10
    //   31: aconst_null
    //   32: aconst_null
    //   33: ldc 76
    //   35: invokevirtual 82	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   38: astore 11
    //   40: aload 11
    //   42: astore_3
    //   43: aload_3
    //   44: invokeinterface 87 1 0
    //   49: ifeq +79 -> 128
    //   52: aload_3
    //   53: ldc 68
    //   55: invokeinterface 91 2 0
    //   60: istore 14
    //   62: aload_0
    //   63: aload_3
    //   64: aload_3
    //   65: ldc 66
    //   67: invokeinterface 91 2 0
    //   72: invokeinterface 95 2 0
    //   77: putfield 39	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:g	J
    //   80: aload_3
    //   81: iload 14
    //   83: invokeinterface 95 2 0
    //   88: lstore 7
    //   90: lload 7
    //   92: lconst_0
    //   93: lcmp
    //   94: ifne +12 -> 106
    //   97: invokestatic 35	java/lang/System:currentTimeMillis	()J
    //   100: lstore 15
    //   102: lload 15
    //   104: lstore 7
    //   106: aload_3
    //   107: ifnull +18 -> 125
    //   110: aload_3
    //   111: invokeinterface 98 1 0
    //   116: ifne +9 -> 125
    //   119: aload_3
    //   120: invokeinterface 101 1 0
    //   125: lload 7
    //   127: lreturn
    //   128: invokestatic 35	java/lang/System:currentTimeMillis	()J
    //   131: lstore 12
    //   133: lload 12
    //   135: lstore 7
    //   137: aload_3
    //   138: ifnull -13 -> 125
    //   141: aload_3
    //   142: invokeinterface 98 1 0
    //   147: ifne -22 -> 125
    //   150: aload_3
    //   151: invokeinterface 101 1 0
    //   156: lload 7
    //   158: lreturn
    //   159: astore 4
    //   161: aconst_null
    //   162: astore_3
    //   163: getstatic 25	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:a	Ljava/lang/String;
    //   166: new 103	java/lang/StringBuilder
    //   169: dup
    //   170: ldc 105
    //   172: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   175: aload 4
    //   177: invokevirtual 111	android/database/sqlite/SQLiteException:toString	()Ljava/lang/String;
    //   180: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   186: invokestatic 121	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   189: invokestatic 35	java/lang/System:currentTimeMillis	()J
    //   192: lstore 5
    //   194: lload 5
    //   196: lstore 7
    //   198: aload_3
    //   199: ifnull -74 -> 125
    //   202: aload_3
    //   203: invokeinterface 98 1 0
    //   208: ifne -83 -> 125
    //   211: aload_3
    //   212: invokeinterface 101 1 0
    //   217: lload 7
    //   219: lreturn
    //   220: astore_2
    //   221: aconst_null
    //   222: astore_3
    //   223: aload_3
    //   224: ifnull +18 -> 242
    //   227: aload_3
    //   228: invokeinterface 98 1 0
    //   233: ifne +9 -> 242
    //   236: aload_3
    //   237: invokeinterface 101 1 0
    //   242: aload_2
    //   243: athrow
    //   244: astore_2
    //   245: goto -22 -> 223
    //   248: astore 4
    //   250: goto -87 -> 163
    //
    // Exception table:
    //   from	to	target	type
    //   0	40	159	android/database/sqlite/SQLiteException
    //   0	40	220	finally
    //   43	90	244	finally
    //   97	102	244	finally
    //   128	133	244	finally
    //   163	194	244	finally
    //   43	90	248	android/database/sqlite/SQLiteException
    //   97	102	248	android/database/sqlite/SQLiteException
    //   128	133	248	android/database/sqlite/SQLiteException
  }

  // ERROR //
  private String a(android.content.Context paramContext, String[] paramArrayOfString, String paramString, int paramInt)
  {
    // Byte code:
    //   0: aload_3
    //   1: invokestatic 128	java/util/regex/Pattern:compile	(Ljava/lang/String;)Ljava/util/regex/Pattern;
    //   4: astore 11
    //   6: invokestatic 131	com/alipay/mobile/framework/service/ext/security/QihooGuardService:readQihooSMS	()Ljava/lang/String;
    //   9: astore 12
    //   11: aload 12
    //   13: ifnull +10 -> 23
    //   16: aload 12
    //   18: astore 10
    //   20: aload 10
    //   22: areturn
    //   23: ldc 56
    //   25: invokestatic 62	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   28: astore 14
    //   30: bipush 8
    //   32: anewarray 64	java/lang/String
    //   35: dup
    //   36: iconst_0
    //   37: ldc 66
    //   39: aastore
    //   40: dup
    //   41: iconst_1
    //   42: ldc 133
    //   44: aastore
    //   45: dup
    //   46: iconst_2
    //   47: ldc 135
    //   49: aastore
    //   50: dup
    //   51: iconst_3
    //   52: ldc 137
    //   54: aastore
    //   55: dup
    //   56: iconst_4
    //   57: ldc 68
    //   59: aastore
    //   60: dup
    //   61: iconst_5
    //   62: ldc 139
    //   64: aastore
    //   65: dup
    //   66: bipush 6
    //   68: ldc 141
    //   70: aastore
    //   71: dup
    //   72: bipush 7
    //   74: ldc 143
    //   76: aastore
    //   77: astore 15
    //   79: aload_1
    //   80: invokevirtual 74	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   83: aload 14
    //   85: aload 15
    //   87: ldc 145
    //   89: aconst_null
    //   90: ldc 147
    //   92: invokevirtual 82	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   95: astore 16
    //   97: aload 16
    //   99: astore 6
    //   101: aload 6
    //   103: invokeinterface 87 1 0
    //   108: ifeq +621 -> 729
    //   111: aload 6
    //   113: ldc 133
    //   115: invokeinterface 91 2 0
    //   120: istore 18
    //   122: aload 6
    //   124: ldc 66
    //   126: invokeinterface 91 2 0
    //   131: istore 19
    //   133: aload 6
    //   135: ldc 137
    //   137: invokeinterface 91 2 0
    //   142: istore 20
    //   144: aload 6
    //   146: ldc 68
    //   148: invokeinterface 91 2 0
    //   153: istore 21
    //   155: aload 6
    //   157: ldc 139
    //   159: invokeinterface 91 2 0
    //   164: istore 22
    //   166: aload 6
    //   168: ldc 141
    //   170: invokeinterface 91 2 0
    //   175: istore 23
    //   177: aconst_null
    //   178: astore 10
    //   180: aload_0
    //   181: getfield 41	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:b	Z
    //   184: ifne +281 -> 465
    //   187: aload 6
    //   189: iload 18
    //   191: invokeinterface 151 2 0
    //   196: astore 24
    //   198: aload 6
    //   200: iload 20
    //   202: invokeinterface 151 2 0
    //   207: astore 25
    //   209: aload 6
    //   211: iload 21
    //   213: invokeinterface 95 2 0
    //   218: lstore 26
    //   220: aload 6
    //   222: iload 22
    //   224: invokeinterface 155 2 0
    //   229: istore 28
    //   231: aload 6
    //   233: iload 23
    //   235: invokeinterface 155 2 0
    //   240: istore 29
    //   242: getstatic 25	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:a	Ljava/lang/String;
    //   245: new 103	java/lang/StringBuilder
    //   248: dup
    //   249: ldc 157
    //   251: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   254: aload 24
    //   256: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   259: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   262: invokestatic 121	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   265: getstatic 25	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:a	Ljava/lang/String;
    //   268: new 103	java/lang/StringBuilder
    //   271: dup
    //   272: ldc 159
    //   274: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   277: aload 25
    //   279: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: invokestatic 121	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   288: lload 26
    //   290: aload_0
    //   291: getfield 161	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:d	J
    //   294: lsub
    //   295: lstore 30
    //   297: getstatic 25	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:a	Ljava/lang/String;
    //   300: new 103	java/lang/StringBuilder
    //   303: dup
    //   304: ldc 163
    //   306: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   309: lload 26
    //   311: invokevirtual 166	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   314: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   317: invokestatic 121	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   320: getstatic 25	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:a	Ljava/lang/String;
    //   323: new 103	java/lang/StringBuilder
    //   326: dup
    //   327: ldc 168
    //   329: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   332: aload_0
    //   333: getfield 161	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:d	J
    //   336: invokevirtual 166	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   339: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   342: invokestatic 121	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   345: getstatic 25	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:a	Ljava/lang/String;
    //   348: new 103	java/lang/StringBuilder
    //   351: dup
    //   352: ldc 170
    //   354: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   357: lload 30
    //   359: invokevirtual 166	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   362: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   365: invokestatic 121	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   368: aload 6
    //   370: iload 19
    //   372: invokeinterface 95 2 0
    //   377: invokestatic 176	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   380: astore 32
    //   382: getstatic 25	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:a	Ljava/lang/String;
    //   385: new 103	java/lang/StringBuilder
    //   388: dup
    //   389: ldc 178
    //   391: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   394: aload 32
    //   396: invokevirtual 181	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   399: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   402: invokestatic 121	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   405: aload 32
    //   407: invokevirtual 184	java/lang/Long:longValue	()J
    //   410: aload_0
    //   411: getfield 39	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:g	J
    //   414: lcmp
    //   415: ifgt +75 -> 490
    //   418: getstatic 25	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:a	Ljava/lang/String;
    //   421: new 103	java/lang/StringBuilder
    //   424: dup
    //   425: ldc 186
    //   427: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   430: aload_0
    //   431: getfield 39	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:g	J
    //   434: invokevirtual 166	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   437: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   440: invokestatic 121	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   443: aload 10
    //   445: invokestatic 192	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   448: ifeq +17 -> 465
    //   451: aload 6
    //   453: invokeinterface 195 1 0
    //   458: istore 39
    //   460: iload 39
    //   462: ifne -282 -> 180
    //   465: aload 6
    //   467: ifnull -447 -> 20
    //   470: aload 6
    //   472: invokeinterface 98 1 0
    //   477: ifne -457 -> 20
    //   480: aload 6
    //   482: invokeinterface 101 1 0
    //   487: aload 10
    //   489: areturn
    //   490: aload_2
    //   491: arraylength
    //   492: istore 33
    //   494: iconst_0
    //   495: istore 34
    //   497: iconst_0
    //   498: istore 35
    //   500: iload 34
    //   502: iload 33
    //   504: if_icmpge +30 -> 534
    //   507: aload_2
    //   508: iload 34
    //   510: aaload
    //   511: astore 36
    //   513: aload 24
    //   515: invokestatic 192	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   518: ifne +65 -> 583
    //   521: aload 24
    //   523: aload 36
    //   525: invokevirtual 199	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   528: ifeq +55 -> 583
    //   531: iconst_1
    //   532: istore 35
    //   534: iload 35
    //   536: ifeq -93 -> 443
    //   539: iload 28
    //   541: iconst_1
    //   542: if_icmpne -99 -> 443
    //   545: iload 29
    //   547: ifne -104 -> 443
    //   550: aload 11
    //   552: aload 25
    //   554: invokevirtual 203	java/util/regex/Pattern:matcher	(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;
    //   557: astore 37
    //   559: aload 37
    //   561: invokevirtual 208	java/util/regex/Matcher:find	()Z
    //   564: ifeq -121 -> 443
    //   567: aload 37
    //   569: iload 4
    //   571: invokevirtual 211	java/util/regex/Matcher:group	(I)Ljava/lang/String;
    //   574: astore 38
    //   576: aload 38
    //   578: astore 10
    //   580: goto -137 -> 443
    //   583: iinc 34 1
    //   586: goto -89 -> 497
    //   589: astore 7
    //   591: aload 7
    //   593: astore 8
    //   595: aconst_null
    //   596: astore 9
    //   598: aconst_null
    //   599: astore 10
    //   601: getstatic 25	com/alipay/mobile/security/securitycommon/AutoReadSmsCheckCode:a	Ljava/lang/String;
    //   604: new 103	java/lang/StringBuilder
    //   607: dup
    //   608: ldc 105
    //   610: invokespecial 108	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   613: aload 8
    //   615: invokevirtual 111	android/database/sqlite/SQLiteException:toString	()Ljava/lang/String;
    //   618: invokevirtual 115	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   621: invokevirtual 116	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   624: invokestatic 121	com/alipay/mobile/common/logging/LogCatLog:d	(Ljava/lang/String;Ljava/lang/String;)V
    //   627: aload 9
    //   629: ifnull -609 -> 20
    //   632: aload 9
    //   634: invokeinterface 98 1 0
    //   639: ifne -619 -> 20
    //   642: aload 9
    //   644: invokeinterface 101 1 0
    //   649: aload 10
    //   651: areturn
    //   652: astore 5
    //   654: aconst_null
    //   655: astore 6
    //   657: aload 6
    //   659: ifnull +20 -> 679
    //   662: aload 6
    //   664: invokeinterface 98 1 0
    //   669: ifne +10 -> 679
    //   672: aload 6
    //   674: invokeinterface 101 1 0
    //   679: aload 5
    //   681: athrow
    //   682: astore 5
    //   684: goto -27 -> 657
    //   687: astore 5
    //   689: aload 9
    //   691: astore 6
    //   693: goto -36 -> 657
    //   696: astore 13
    //   698: aload 13
    //   700: astore 8
    //   702: aload 12
    //   704: astore 10
    //   706: aconst_null
    //   707: astore 9
    //   709: goto -108 -> 601
    //   712: astore 17
    //   714: aload 6
    //   716: astore 9
    //   718: aload 17
    //   720: astore 8
    //   722: aload 12
    //   724: astore 10
    //   726: goto -125 -> 601
    //   729: aload 12
    //   731: astore 10
    //   733: goto -268 -> 465
    //
    // Exception table:
    //   from	to	target	type
    //   0	11	589	android/database/sqlite/SQLiteException
    //   0	11	652	finally
    //   23	97	652	finally
    //   101	177	682	finally
    //   180	443	682	finally
    //   443	460	682	finally
    //   490	494	682	finally
    //   507	531	682	finally
    //   550	576	682	finally
    //   601	627	687	finally
    //   23	97	696	android/database/sqlite/SQLiteException
    //   101	177	712	android/database/sqlite/SQLiteException
    //   180	443	712	android/database/sqlite/SQLiteException
    //   443	460	712	android/database/sqlite/SQLiteException
    //   490	494	712	android/database/sqlite/SQLiteException
    //   507	531	712	android/database/sqlite/SQLiteException
    //   550	576	712	android/database/sqlite/SQLiteException
  }

  public void dispose()
  {
    this.b = true;
    this.c = false;
    this.g = 0L;
  }

  public void readsms(String paramString1, int paramInt1, Long paramLong, int paramInt2, String paramString2, String[] paramArrayOfString)
  {
    this.d = paramLong.longValue();
    if (this.c)
      return;
    this.c = true;
    this.b = false;
    this.g = 0L;
    new Thread(new a(this, paramInt2, paramArrayOfString, paramString1, paramInt1, paramString2)).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.AutoReadSmsCheckCode
 * JD-Core Version:    0.6.2
 */