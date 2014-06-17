package com.alipay.mobile.common.ui.contacts.util;

import com.alipay.mobileprod.biz.contact.model.MobileBindingInfo;
import java.util.List;

public class MobileMatchInfoCache
{
  public static final String CACHE_DIR = "local_cache";
  public String cachePath;

  public MobileMatchInfoCache(String paramString)
  {
    this.cachePath = paramString;
  }

  // ERROR //
  private List<MobileBindingInfo> a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 28	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 29	java/util/ArrayList:<init>	()V
    //   9: astore_2
    //   10: new 31	java/io/File
    //   13: dup
    //   14: new 31	java/io/File
    //   17: dup
    //   18: invokestatic 37	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   21: invokevirtual 41	com/alipay/mobile/framework/AlipayApplication:getCacheDir	()Ljava/io/File;
    //   24: ldc 8
    //   26: invokespecial 44	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   29: aload_0
    //   30: getfield 16	com/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache:cachePath	Ljava/lang/String;
    //   33: invokespecial 44	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   36: astore_3
    //   37: aload_3
    //   38: invokevirtual 48	java/io/File:exists	()Z
    //   41: ifne +5 -> 46
    //   44: aload_2
    //   45: areturn
    //   46: new 50	java/io/FileInputStream
    //   49: dup
    //   50: aload_3
    //   51: invokespecial 53	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   54: astore 7
    //   56: aload 7
    //   58: invokevirtual 57	java/io/FileInputStream:available	()I
    //   61: newarray byte
    //   63: astore 26
    //   65: aload 7
    //   67: aload 26
    //   69: invokevirtual 61	java/io/FileInputStream:read	([B)I
    //   72: pop
    //   73: new 63	java/io/ByteArrayInputStream
    //   76: dup
    //   77: invokestatic 37	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   80: aload 26
    //   82: invokestatic 69	com/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor:decrypt	(Landroid/content/ContextWrapper;[B)[B
    //   85: invokespecial 72	java/io/ByteArrayInputStream:<init>	([B)V
    //   88: astore 6
    //   90: new 74	java/io/ObjectInputStream
    //   93: dup
    //   94: aload 6
    //   96: invokespecial 77	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   99: astore 5
    //   101: aload 5
    //   103: invokevirtual 81	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   106: checkcast 83	java/util/List
    //   109: astore 12
    //   111: aload 5
    //   113: invokevirtual 86	java/io/ObjectInputStream:close	()V
    //   116: aload 6
    //   118: invokevirtual 87	java/io/ByteArrayInputStream:close	()V
    //   121: aload 7
    //   123: invokevirtual 88	java/io/FileInputStream:close	()V
    //   126: aload 12
    //   128: areturn
    //   129: astore 17
    //   131: aconst_null
    //   132: astore 18
    //   134: aconst_null
    //   135: astore 19
    //   137: aload_1
    //   138: ifnull +7 -> 145
    //   141: aload_1
    //   142: invokevirtual 86	java/io/ObjectInputStream:close	()V
    //   145: aload 18
    //   147: ifnull +8 -> 155
    //   150: aload 18
    //   152: invokevirtual 87	java/io/ByteArrayInputStream:close	()V
    //   155: aload 19
    //   157: ifnull +8 -> 165
    //   160: aload 19
    //   162: invokevirtual 88	java/io/FileInputStream:close	()V
    //   165: aload_2
    //   166: astore 12
    //   168: goto -42 -> 126
    //   171: astore 20
    //   173: aload_2
    //   174: astore 12
    //   176: goto -50 -> 126
    //   179: astore 15
    //   181: aconst_null
    //   182: astore 6
    //   184: aconst_null
    //   185: astore 7
    //   187: aload_1
    //   188: ifnull +7 -> 195
    //   191: aload_1
    //   192: invokevirtual 86	java/io/ObjectInputStream:close	()V
    //   195: aload 6
    //   197: ifnull +8 -> 205
    //   200: aload 6
    //   202: invokevirtual 87	java/io/ByteArrayInputStream:close	()V
    //   205: aload 7
    //   207: ifnull +8 -> 215
    //   210: aload 7
    //   212: invokevirtual 88	java/io/FileInputStream:close	()V
    //   215: aload_2
    //   216: astore 12
    //   218: goto -92 -> 126
    //   221: astore 16
    //   223: aload_2
    //   224: astore 12
    //   226: goto -100 -> 126
    //   229: astore 13
    //   231: aconst_null
    //   232: astore 6
    //   234: aconst_null
    //   235: astore 7
    //   237: aload_1
    //   238: ifnull +7 -> 245
    //   241: aload_1
    //   242: invokevirtual 86	java/io/ObjectInputStream:close	()V
    //   245: aload 6
    //   247: ifnull +8 -> 255
    //   250: aload 6
    //   252: invokevirtual 87	java/io/ByteArrayInputStream:close	()V
    //   255: aload 7
    //   257: ifnull +8 -> 265
    //   260: aload 7
    //   262: invokevirtual 88	java/io/FileInputStream:close	()V
    //   265: aload_2
    //   266: astore 12
    //   268: goto -142 -> 126
    //   271: astore 14
    //   273: aload_2
    //   274: astore 12
    //   276: goto -150 -> 126
    //   279: astore 10
    //   281: aconst_null
    //   282: astore 6
    //   284: aconst_null
    //   285: astore 7
    //   287: aload_1
    //   288: ifnull +7 -> 295
    //   291: aload_1
    //   292: invokevirtual 86	java/io/ObjectInputStream:close	()V
    //   295: aload 6
    //   297: ifnull +8 -> 305
    //   300: aload 6
    //   302: invokevirtual 87	java/io/ByteArrayInputStream:close	()V
    //   305: aload 7
    //   307: ifnull +8 -> 315
    //   310: aload 7
    //   312: invokevirtual 88	java/io/FileInputStream:close	()V
    //   315: aload_2
    //   316: astore 12
    //   318: goto -192 -> 126
    //   321: astore 11
    //   323: aload_2
    //   324: astore 12
    //   326: goto -200 -> 126
    //   329: astore 4
    //   331: aconst_null
    //   332: astore 5
    //   334: aconst_null
    //   335: astore 6
    //   337: aconst_null
    //   338: astore 7
    //   340: aload 4
    //   342: astore 8
    //   344: aload 5
    //   346: ifnull +8 -> 354
    //   349: aload 5
    //   351: invokevirtual 86	java/io/ObjectInputStream:close	()V
    //   354: aload 6
    //   356: ifnull +8 -> 364
    //   359: aload 6
    //   361: invokevirtual 87	java/io/ByteArrayInputStream:close	()V
    //   364: aload 7
    //   366: ifnull +8 -> 374
    //   369: aload 7
    //   371: invokevirtual 88	java/io/FileInputStream:close	()V
    //   374: aload 8
    //   376: athrow
    //   377: astore 9
    //   379: goto -5 -> 374
    //   382: astore 25
    //   384: aload 25
    //   386: astore 8
    //   388: aconst_null
    //   389: astore 5
    //   391: aconst_null
    //   392: astore 6
    //   394: goto -50 -> 344
    //   397: astore 37
    //   399: aload 37
    //   401: astore 8
    //   403: aconst_null
    //   404: astore 5
    //   406: goto -62 -> 344
    //   409: astore 8
    //   411: goto -67 -> 344
    //   414: astore 24
    //   416: aconst_null
    //   417: astore_1
    //   418: aconst_null
    //   419: astore 6
    //   421: goto -134 -> 287
    //   424: astore 36
    //   426: aconst_null
    //   427: astore_1
    //   428: goto -141 -> 287
    //   431: astore 31
    //   433: aload 5
    //   435: astore_1
    //   436: goto -149 -> 287
    //   439: astore 23
    //   441: aconst_null
    //   442: astore_1
    //   443: aconst_null
    //   444: astore 6
    //   446: goto -209 -> 237
    //   449: astore 35
    //   451: aconst_null
    //   452: astore_1
    //   453: goto -216 -> 237
    //   456: astore 30
    //   458: aload 5
    //   460: astore_1
    //   461: goto -224 -> 237
    //   464: astore 22
    //   466: aconst_null
    //   467: astore_1
    //   468: aconst_null
    //   469: astore 6
    //   471: goto -284 -> 187
    //   474: astore 34
    //   476: aconst_null
    //   477: astore_1
    //   478: goto -291 -> 187
    //   481: astore 29
    //   483: aload 5
    //   485: astore_1
    //   486: goto -299 -> 187
    //   489: astore 21
    //   491: aload 7
    //   493: astore 19
    //   495: aconst_null
    //   496: astore_1
    //   497: aconst_null
    //   498: astore 18
    //   500: goto -363 -> 137
    //   503: astore 33
    //   505: aload 6
    //   507: astore 18
    //   509: aload 7
    //   511: astore 19
    //   513: aconst_null
    //   514: astore_1
    //   515: goto -378 -> 137
    //   518: astore 28
    //   520: aload 5
    //   522: astore_1
    //   523: aload 6
    //   525: astore 18
    //   527: aload 7
    //   529: astore 19
    //   531: goto -394 -> 137
    //   534: astore 32
    //   536: goto -410 -> 126
    //
    // Exception table:
    //   from	to	target	type
    //   10	44	129	java/io/FileNotFoundException
    //   46	56	129	java/io/FileNotFoundException
    //   141	145	171	java/lang/Exception
    //   150	155	171	java/lang/Exception
    //   160	165	171	java/lang/Exception
    //   10	44	179	java/io/IOException
    //   46	56	179	java/io/IOException
    //   191	195	221	java/lang/Exception
    //   200	205	221	java/lang/Exception
    //   210	215	221	java/lang/Exception
    //   10	44	229	java/lang/ClassNotFoundException
    //   46	56	229	java/lang/ClassNotFoundException
    //   241	245	271	java/lang/Exception
    //   250	255	271	java/lang/Exception
    //   260	265	271	java/lang/Exception
    //   10	44	279	java/lang/Exception
    //   46	56	279	java/lang/Exception
    //   291	295	321	java/lang/Exception
    //   300	305	321	java/lang/Exception
    //   310	315	321	java/lang/Exception
    //   10	44	329	finally
    //   46	56	329	finally
    //   349	354	377	java/lang/Exception
    //   359	364	377	java/lang/Exception
    //   369	374	377	java/lang/Exception
    //   56	90	382	finally
    //   90	101	397	finally
    //   101	111	409	finally
    //   56	90	414	java/lang/Exception
    //   90	101	424	java/lang/Exception
    //   101	111	431	java/lang/Exception
    //   56	90	439	java/lang/ClassNotFoundException
    //   90	101	449	java/lang/ClassNotFoundException
    //   101	111	456	java/lang/ClassNotFoundException
    //   56	90	464	java/io/IOException
    //   90	101	474	java/io/IOException
    //   101	111	481	java/io/IOException
    //   56	90	489	java/io/FileNotFoundException
    //   90	101	503	java/io/FileNotFoundException
    //   101	111	518	java/io/FileNotFoundException
    //   111	126	534	java/lang/Exception
  }

  public List<MobileBindingInfo> readMobileMatchInfoHistory()
  {
    try
    {
      List localList = a();
      return localList;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public void writeMobileMatchInfoHistory(List<MobileBindingInfo> paramList, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_1
    //   5: ifnull +7 -> 12
    //   8: iload_2
    //   9: ifgt +6 -> 15
    //   12: aload_0
    //   13: monitorexit
    //   14: return
    //   15: new 28	java/util/ArrayList
    //   18: dup
    //   19: invokespecial 29	java/util/ArrayList:<init>	()V
    //   22: astore 4
    //   24: aload_1
    //   25: invokeinterface 97 1 0
    //   30: astore 6
    //   32: aload 6
    //   34: invokeinterface 102 1 0
    //   39: ifeq +31 -> 70
    //   42: aload 4
    //   44: aload 6
    //   46: invokeinterface 105 1 0
    //   51: checkcast 107	com/alipay/mobileprod/biz/contact/model/MobileBindingInfo
    //   54: invokeinterface 111 2 0
    //   59: pop
    //   60: goto -28 -> 32
    //   63: astore 5
    //   65: aload_0
    //   66: monitorexit
    //   67: aload 5
    //   69: athrow
    //   70: new 31	java/io/File
    //   73: dup
    //   74: invokestatic 37	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   77: invokevirtual 41	com/alipay/mobile/framework/AlipayApplication:getCacheDir	()Ljava/io/File;
    //   80: ldc 8
    //   82: invokespecial 44	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   85: astore 7
    //   87: aload 7
    //   89: invokevirtual 48	java/io/File:exists	()Z
    //   92: ifne +9 -> 101
    //   95: aload 7
    //   97: invokevirtual 114	java/io/File:mkdir	()Z
    //   100: pop
    //   101: new 116	java/io/FileOutputStream
    //   104: dup
    //   105: new 31	java/io/File
    //   108: dup
    //   109: aload 7
    //   111: aload_0
    //   112: getfield 16	com/alipay/mobile/common/ui/contacts/util/MobileMatchInfoCache:cachePath	Ljava/lang/String;
    //   115: invokespecial 44	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   118: invokespecial 117	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   121: astore 10
    //   123: new 119	java/io/ByteArrayOutputStream
    //   126: dup
    //   127: invokespecial 120	java/io/ByteArrayOutputStream:<init>	()V
    //   130: astore 17
    //   132: new 122	java/io/ObjectOutputStream
    //   135: dup
    //   136: aload 17
    //   138: invokespecial 125	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   141: astore 9
    //   143: aload 9
    //   145: aload 4
    //   147: invokevirtual 129	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   150: aload 9
    //   152: invokevirtual 132	java/io/ObjectOutputStream:flush	()V
    //   155: aload 10
    //   157: invokestatic 37	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   160: aload 17
    //   162: invokevirtual 136	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   165: invokestatic 139	com/alipay/mobilesecurity/taobao/sso/util/TaobaoSecurityEncryptor:encrypt	(Landroid/content/ContextWrapper;[B)[B
    //   168: invokevirtual 142	java/io/FileOutputStream:write	([B)V
    //   171: aload 9
    //   173: invokevirtual 143	java/io/ObjectOutputStream:close	()V
    //   176: aload 17
    //   178: invokevirtual 144	java/io/ByteArrayOutputStream:close	()V
    //   181: aload 10
    //   183: invokevirtual 145	java/io/FileOutputStream:close	()V
    //   186: goto -174 -> 12
    //   189: astore 24
    //   191: goto -179 -> 12
    //   194: astore 16
    //   196: aconst_null
    //   197: astore 17
    //   199: aconst_null
    //   200: astore 18
    //   202: aload_3
    //   203: ifnull +7 -> 210
    //   206: aload_3
    //   207: invokevirtual 143	java/io/ObjectOutputStream:close	()V
    //   210: aload 17
    //   212: ifnull +8 -> 220
    //   215: aload 17
    //   217: invokevirtual 144	java/io/ByteArrayOutputStream:close	()V
    //   220: aload 18
    //   222: ifnull -210 -> 12
    //   225: aload 18
    //   227: invokevirtual 145	java/io/FileOutputStream:close	()V
    //   230: goto -218 -> 12
    //   233: astore 19
    //   235: goto -223 -> 12
    //   238: astore 14
    //   240: aconst_null
    //   241: astore 9
    //   243: aconst_null
    //   244: astore 10
    //   246: aload 9
    //   248: ifnull +8 -> 256
    //   251: aload 9
    //   253: invokevirtual 143	java/io/ObjectOutputStream:close	()V
    //   256: aload_3
    //   257: ifnull +7 -> 264
    //   260: aload_3
    //   261: invokevirtual 144	java/io/ByteArrayOutputStream:close	()V
    //   264: aload 10
    //   266: ifnull -254 -> 12
    //   269: aload 10
    //   271: invokevirtual 145	java/io/FileOutputStream:close	()V
    //   274: goto -262 -> 12
    //   277: astore 15
    //   279: goto -267 -> 12
    //   282: astore 12
    //   284: aconst_null
    //   285: astore 9
    //   287: aconst_null
    //   288: astore 10
    //   290: aload 9
    //   292: ifnull +8 -> 300
    //   295: aload 9
    //   297: invokevirtual 143	java/io/ObjectOutputStream:close	()V
    //   300: aload_3
    //   301: ifnull +7 -> 308
    //   304: aload_3
    //   305: invokevirtual 144	java/io/ByteArrayOutputStream:close	()V
    //   308: aload 10
    //   310: ifnull -298 -> 12
    //   313: aload 10
    //   315: invokevirtual 145	java/io/FileOutputStream:close	()V
    //   318: goto -306 -> 12
    //   321: astore 13
    //   323: goto -311 -> 12
    //   326: astore 8
    //   328: aconst_null
    //   329: astore 9
    //   331: aconst_null
    //   332: astore 10
    //   334: aload 9
    //   336: ifnull +8 -> 344
    //   339: aload 9
    //   341: invokevirtual 143	java/io/ObjectOutputStream:close	()V
    //   344: aload_3
    //   345: ifnull +7 -> 352
    //   348: aload_3
    //   349: invokevirtual 144	java/io/ByteArrayOutputStream:close	()V
    //   352: aload 10
    //   354: ifnull +8 -> 362
    //   357: aload 10
    //   359: invokevirtual 145	java/io/FileOutputStream:close	()V
    //   362: aload 8
    //   364: athrow
    //   365: astore 11
    //   367: goto -5 -> 362
    //   370: astore 8
    //   372: aconst_null
    //   373: astore_3
    //   374: aconst_null
    //   375: astore 9
    //   377: goto -43 -> 334
    //   380: astore 28
    //   382: aload 17
    //   384: astore_3
    //   385: aload 28
    //   387: astore 8
    //   389: aconst_null
    //   390: astore 9
    //   392: goto -58 -> 334
    //   395: astore 23
    //   397: aload 17
    //   399: astore_3
    //   400: aload 23
    //   402: astore 8
    //   404: goto -70 -> 334
    //   407: astore 31
    //   409: aconst_null
    //   410: astore_3
    //   411: aconst_null
    //   412: astore 9
    //   414: goto -124 -> 290
    //   417: astore 27
    //   419: aload 17
    //   421: astore_3
    //   422: aconst_null
    //   423: astore 9
    //   425: goto -135 -> 290
    //   428: astore 22
    //   430: aload 17
    //   432: astore_3
    //   433: goto -143 -> 290
    //   436: astore 30
    //   438: aconst_null
    //   439: astore_3
    //   440: aconst_null
    //   441: astore 9
    //   443: goto -197 -> 246
    //   446: astore 26
    //   448: aload 17
    //   450: astore_3
    //   451: aconst_null
    //   452: astore 9
    //   454: goto -208 -> 246
    //   457: astore 21
    //   459: aload 17
    //   461: astore_3
    //   462: goto -216 -> 246
    //   465: astore 29
    //   467: aload 10
    //   469: astore 18
    //   471: aconst_null
    //   472: astore 17
    //   474: aconst_null
    //   475: astore_3
    //   476: goto -274 -> 202
    //   479: astore 25
    //   481: aload 10
    //   483: astore 18
    //   485: aconst_null
    //   486: astore_3
    //   487: goto -285 -> 202
    //   490: astore 20
    //   492: aload 9
    //   494: astore_3
    //   495: aload 10
    //   497: astore 18
    //   499: goto -297 -> 202
    //
    // Exception table:
    //   from	to	target	type
    //   15	32	63	finally
    //   32	60	63	finally
    //   171	186	63	finally
    //   206	210	63	finally
    //   215	220	63	finally
    //   225	230	63	finally
    //   251	256	63	finally
    //   260	264	63	finally
    //   269	274	63	finally
    //   295	300	63	finally
    //   304	308	63	finally
    //   313	318	63	finally
    //   339	344	63	finally
    //   348	352	63	finally
    //   357	362	63	finally
    //   362	365	63	finally
    //   171	186	189	java/lang/Exception
    //   70	101	194	java/io/FileNotFoundException
    //   101	123	194	java/io/FileNotFoundException
    //   206	210	233	java/lang/Exception
    //   215	220	233	java/lang/Exception
    //   225	230	233	java/lang/Exception
    //   70	101	238	java/io/IOException
    //   101	123	238	java/io/IOException
    //   251	256	277	java/lang/Exception
    //   260	264	277	java/lang/Exception
    //   269	274	277	java/lang/Exception
    //   70	101	282	java/lang/Exception
    //   101	123	282	java/lang/Exception
    //   295	300	321	java/lang/Exception
    //   304	308	321	java/lang/Exception
    //   313	318	321	java/lang/Exception
    //   70	101	326	finally
    //   101	123	326	finally
    //   339	344	365	java/lang/Exception
    //   348	352	365	java/lang/Exception
    //   357	362	365	java/lang/Exception
    //   123	132	370	finally
    //   132	143	380	finally
    //   143	171	395	finally
    //   123	132	407	java/lang/Exception
    //   132	143	417	java/lang/Exception
    //   143	171	428	java/lang/Exception
    //   123	132	436	java/io/IOException
    //   132	143	446	java/io/IOException
    //   143	171	457	java/io/IOException
    //   123	132	465	java/io/FileNotFoundException
    //   132	143	479	java/io/FileNotFoundException
    //   143	171	490	java/io/FileNotFoundException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.MobileMatchInfoCache
 * JD-Core Version:    0.6.2
 */