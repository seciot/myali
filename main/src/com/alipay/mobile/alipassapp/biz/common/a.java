package com.alipay.mobile.alipassapp.biz.common;

import android.content.Context;
import android.net.Uri;
import com.alipay.mobile.alipassapp.a.b;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.common.helper.ZipHelper;
import com.alipay.mobile.common.utils.StringUtils;
import java.io.File;

public final class a
{
  private Context a;
  private String b;

  public a(Context paramContext)
  {
    this.a = paramContext;
    this.b = b.a(this.a, "alipassDir");
  }

  // ERROR //
  private AlipassInfo b(String paramString1, String paramString2)
  {
    // Byte code:
    //   0: new 31	java/io/File
    //   3: dup
    //   4: new 33	java/lang/StringBuilder
    //   7: dup
    //   8: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   11: aload_1
    //   12: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   15: ldc 40
    //   17: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   20: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   23: invokespecial 47	java/io/File:<init>	(Ljava/lang/String;)V
    //   26: astore_3
    //   27: new 49	com/alipay/mobile/alipassapp/biz/model/AlipassInfo
    //   30: dup
    //   31: invokespecial 50	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:<init>	()V
    //   34: astore 4
    //   36: new 52	java/io/BufferedInputStream
    //   39: dup
    //   40: new 54	java/io/FileInputStream
    //   43: dup
    //   44: aload_3
    //   45: invokespecial 57	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   48: invokespecial 60	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   51: astore 5
    //   53: aload 5
    //   55: invokestatic 65	com/alipay/mobile/alipassapp/a/c:a	(Ljava/io/InputStream;)Ljava/lang/String;
    //   58: invokestatic 71	com/alibaba/fastjson/JSON:parseObject	(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    //   61: astore 11
    //   63: aload 11
    //   65: ifnonnull +11 -> 76
    //   68: aload 5
    //   70: invokevirtual 76	java/io/InputStream:close	()V
    //   73: aload 4
    //   75: areturn
    //   76: aload 11
    //   78: ldc 78
    //   80: invokevirtual 83	com/alibaba/fastjson/JSONObject:getJSONObject	(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    //   83: astore 12
    //   85: aload 12
    //   87: ifnull +344 -> 431
    //   90: aload 12
    //   92: ldc 85
    //   94: invokevirtual 89	com/alibaba/fastjson/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   97: astore 13
    //   99: ldc 91
    //   101: aload 13
    //   103: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   106: ifeq +535 -> 641
    //   109: new 99	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA
    //   112: dup
    //   113: invokespecial 100	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA:<init>	()V
    //   116: pop
    //   117: aload 11
    //   119: invokevirtual 103	com/alibaba/fastjson/JSONObject:toJSONString	()Ljava/lang/String;
    //   122: ldc 99
    //   124: invokestatic 108	com/alipay/mobile/alipassapp/biz/common/b:b	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   127: checkcast 99	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA
    //   130: astore 15
    //   132: aload 11
    //   134: ldc 110
    //   136: invokevirtual 83	com/alibaba/fastjson/JSONObject:getJSONObject	(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    //   139: astore 16
    //   141: aload 16
    //   143: ifnull +21 -> 164
    //   146: aload 15
    //   148: aload 16
    //   150: invokevirtual 103	com/alibaba/fastjson/JSONObject:toJSONString	()Ljava/lang/String;
    //   153: ldc 112
    //   155: invokestatic 108	com/alipay/mobile/alipassapp/biz/common/b:b	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   158: checkcast 112	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform
    //   161: invokevirtual 116	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA:setPlatform	(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Platform;)V
    //   164: aload 11
    //   166: ldc 118
    //   168: invokevirtual 83	com/alibaba/fastjson/JSONObject:getJSONObject	(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    //   171: astore 17
    //   173: aload 17
    //   175: ifnull +143 -> 318
    //   178: aload 17
    //   180: invokevirtual 103	com/alibaba/fastjson/JSONObject:toJSONString	()Ljava/lang/String;
    //   183: ldc 120
    //   185: invokestatic 108	com/alipay/mobile/alipassapp/biz/common/b:b	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   188: checkcast 120	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo
    //   191: astore 18
    //   193: aload 15
    //   195: aload 18
    //   197: invokevirtual 124	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA:setEvoucherInfo	(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo;)V
    //   200: aload 18
    //   202: aload 17
    //   204: ldc 126
    //   206: invokevirtual 89	com/alibaba/fastjson/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   209: invokevirtual 129	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo:setType	(Ljava/lang/String;)V
    //   212: aload 18
    //   214: aload 17
    //   216: ldc 131
    //   218: invokevirtual 89	com/alibaba/fastjson/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   221: invokevirtual 134	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo:setProduct	(Ljava/lang/String;)V
    //   224: aload 17
    //   226: ldc 136
    //   228: invokevirtual 83	com/alibaba/fastjson/JSONObject:getJSONObject	(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    //   231: astore 19
    //   233: aload 19
    //   235: ifnull +54 -> 289
    //   238: aload 19
    //   240: invokevirtual 103	com/alibaba/fastjson/JSONObject:toJSONString	()Ljava/lang/String;
    //   243: ldc 138
    //   245: invokestatic 108	com/alipay/mobile/alipassapp/biz/common/b:b	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   248: checkcast 138	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo
    //   251: astore 20
    //   253: aload 18
    //   255: aload 20
    //   257: invokevirtual 142	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo:seteInfo	(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo;)V
    //   260: aload 19
    //   262: ldc 144
    //   264: invokevirtual 148	com/alibaba/fastjson/JSONObject:getJSONArray	(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    //   267: astore 21
    //   269: aload 21
    //   271: ifnull +18 -> 289
    //   274: aload 20
    //   276: aload 21
    //   278: invokevirtual 151	com/alibaba/fastjson/JSONArray:toJSONString	()Ljava/lang/String;
    //   281: ldc 153
    //   283: invokestatic 156	com/alipay/mobile/alipassapp/biz/common/b:a	(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    //   286: invokevirtual 160	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Einfo:setBarcodeList	(Ljava/util/List;)V
    //   289: aload 17
    //   291: ldc 162
    //   293: invokevirtual 148	com/alibaba/fastjson/JSONObject:getJSONArray	(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    //   296: astore 22
    //   298: aload 22
    //   300: ifnull +18 -> 318
    //   303: aload 18
    //   305: aload 22
    //   307: invokevirtual 151	com/alibaba/fastjson/JSONArray:toJSONString	()Ljava/lang/String;
    //   310: ldc 164
    //   312: invokestatic 156	com/alipay/mobile/alipassapp/biz/common/b:a	(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    //   315: invokevirtual 167	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$EvoucherInfo:setLocations	(Ljava/util/List;)V
    //   318: aload 11
    //   320: ldc 169
    //   322: invokevirtual 83	com/alibaba/fastjson/JSONObject:getJSONObject	(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    //   325: astore 23
    //   327: aload 23
    //   329: ifnull +21 -> 350
    //   332: aload 15
    //   334: aload 23
    //   336: invokevirtual 103	com/alibaba/fastjson/JSONObject:toJSONString	()Ljava/lang/String;
    //   339: ldc 171
    //   341: invokestatic 108	com/alipay/mobile/alipassapp/biz/common/b:b	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   344: checkcast 171	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style
    //   347: invokevirtual 175	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA:setStyle	(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Style;)V
    //   350: aload 11
    //   352: ldc 177
    //   354: invokevirtual 83	com/alibaba/fastjson/JSONObject:getJSONObject	(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    //   357: astore 24
    //   359: aload 24
    //   361: ifnull +21 -> 382
    //   364: aload 15
    //   366: aload 24
    //   368: invokevirtual 103	com/alibaba/fastjson/JSONObject:toJSONString	()Ljava/lang/String;
    //   371: ldc 179
    //   373: invokestatic 108	com/alipay/mobile/alipassapp/biz/common/b:b	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   376: checkcast 179	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant
    //   379: invokevirtual 183	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA:setMerchant	(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$Merchant;)V
    //   382: aload 11
    //   384: ldc 78
    //   386: invokevirtual 83	com/alibaba/fastjson/JSONObject:getJSONObject	(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    //   389: astore 25
    //   391: aload 25
    //   393: ifnull +21 -> 414
    //   396: aload 15
    //   398: aload 25
    //   400: invokevirtual 103	com/alibaba/fastjson/JSONObject:toJSONString	()Ljava/lang/String;
    //   403: ldc 185
    //   405: invokestatic 108	com/alipay/mobile/alipassapp/biz/common/b:b	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   408: checkcast 185	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo
    //   411: invokevirtual 189	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA:setFileInfo	(Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA$FileInfo;)V
    //   414: aload 15
    //   416: ldc 191
    //   418: invokevirtual 194	com/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA:setStatus	(Ljava/lang/String;)V
    //   421: aload_0
    //   422: aload_2
    //   423: aload 15
    //   425: aload 4
    //   427: invokestatic 199	com/alipay/mobile/alipassapp/biz/common/c:a	(Lcom/alipay/mobile/alipassapp/biz/common/a;Ljava/lang/String;Lcom/alipay/mobile/alipassapp/biz/common/oldcoupon/AlipassInfoA;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    //   430: pop
    //   431: aload 4
    //   433: invokevirtual 203	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   436: ifnonnull +41 -> 477
    //   439: aload 4
    //   441: new 205	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo
    //   444: dup
    //   445: invokespecial 206	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo:<init>	()V
    //   448: invokevirtual 210	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:setPassBaseInfo	(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;)V
    //   451: aload 4
    //   453: invokevirtual 203	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   456: invokevirtual 214	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo:getDisplayInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;
    //   459: ifnonnull +18 -> 477
    //   462: aload 4
    //   464: invokevirtual 203	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   467: new 216	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo
    //   470: dup
    //   471: invokespecial 217	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo:<init>	()V
    //   474: invokevirtual 221	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo:setDisplayInfo	(Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;)V
    //   477: new 31	java/io/File
    //   480: dup
    //   481: new 33	java/lang/StringBuilder
    //   484: dup
    //   485: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   488: aload_1
    //   489: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   492: ldc 223
    //   494: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   497: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   500: invokespecial 47	java/io/File:<init>	(Ljava/lang/String;)V
    //   503: astore 27
    //   505: aload 27
    //   507: invokevirtual 227	java/io/File:exists	()Z
    //   510: ifeq +19 -> 529
    //   513: aload 4
    //   515: invokevirtual 203	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   518: invokevirtual 214	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo:getDisplayInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;
    //   521: aload 27
    //   523: invokevirtual 230	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   526: invokevirtual 233	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo:setLogo	(Ljava/lang/String;)V
    //   529: new 31	java/io/File
    //   532: dup
    //   533: new 33	java/lang/StringBuilder
    //   536: dup
    //   537: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   540: aload_1
    //   541: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   544: ldc 235
    //   546: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   549: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   552: invokespecial 47	java/io/File:<init>	(Ljava/lang/String;)V
    //   555: astore 28
    //   557: aload 28
    //   559: invokevirtual 227	java/io/File:exists	()Z
    //   562: ifeq +19 -> 581
    //   565: aload 4
    //   567: invokevirtual 203	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   570: invokevirtual 214	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo:getDisplayInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;
    //   573: aload 28
    //   575: invokevirtual 230	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   578: invokevirtual 238	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo:setIcon	(Ljava/lang/String;)V
    //   581: new 31	java/io/File
    //   584: dup
    //   585: new 33	java/lang/StringBuilder
    //   588: dup
    //   589: invokespecial 34	java/lang/StringBuilder:<init>	()V
    //   592: aload_1
    //   593: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   596: ldc 240
    //   598: invokevirtual 38	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   601: invokevirtual 44	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   604: invokespecial 47	java/io/File:<init>	(Ljava/lang/String;)V
    //   607: astore 29
    //   609: aload 29
    //   611: invokevirtual 227	java/io/File:exists	()Z
    //   614: ifeq +19 -> 633
    //   617: aload 4
    //   619: invokevirtual 203	com/alipay/mobile/alipassapp/biz/model/AlipassInfo:getPassBaseInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo;
    //   622: invokevirtual 214	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$AliPassBaseInfo:getDisplayInfo	()Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo;
    //   625: aload 29
    //   627: invokevirtual 230	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   630: invokevirtual 243	com/alipay/mobile/alipassapp/biz/model/AlipassInfo$DisplayInfo:setStrip	(Ljava/lang/String;)V
    //   633: aload 5
    //   635: invokevirtual 76	java/io/InputStream:close	()V
    //   638: aload 4
    //   640: areturn
    //   641: ldc 245
    //   643: aload 13
    //   645: invokevirtual 97	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   648: ifeq -217 -> 431
    //   651: aload 11
    //   653: aload 4
    //   655: invokestatic 248	com/alipay/mobile/alipassapp/biz/common/b:a	(Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;)Lcom/alipay/mobile/alipassapp/biz/model/AlipassInfo;
    //   658: pop
    //   659: goto -228 -> 431
    //   662: astore 8
    //   664: aload 5
    //   666: astore 9
    //   668: aload 9
    //   670: ifnull -32 -> 638
    //   673: aload 9
    //   675: invokevirtual 76	java/io/InputStream:close	()V
    //   678: goto -40 -> 638
    //   681: astore 10
    //   683: goto -45 -> 638
    //   686: astore 34
    //   688: aconst_null
    //   689: astore 5
    //   691: aload 34
    //   693: astore 6
    //   695: aload 5
    //   697: ifnull +8 -> 705
    //   700: aload 5
    //   702: invokevirtual 76	java/io/InputStream:close	()V
    //   705: aload 6
    //   707: athrow
    //   708: astore 32
    //   710: goto -637 -> 73
    //   713: astore 30
    //   715: goto -77 -> 638
    //   718: astore 7
    //   720: goto -15 -> 705
    //   723: astore 6
    //   725: goto -30 -> 695
    //   728: astore 33
    //   730: aconst_null
    //   731: astore 9
    //   733: goto -65 -> 668
    //
    // Exception table:
    //   from	to	target	type
    //   53	63	662	java/io/FileNotFoundException
    //   76	85	662	java/io/FileNotFoundException
    //   90	141	662	java/io/FileNotFoundException
    //   146	164	662	java/io/FileNotFoundException
    //   164	173	662	java/io/FileNotFoundException
    //   178	233	662	java/io/FileNotFoundException
    //   238	269	662	java/io/FileNotFoundException
    //   274	289	662	java/io/FileNotFoundException
    //   289	298	662	java/io/FileNotFoundException
    //   303	318	662	java/io/FileNotFoundException
    //   318	327	662	java/io/FileNotFoundException
    //   332	350	662	java/io/FileNotFoundException
    //   350	359	662	java/io/FileNotFoundException
    //   364	382	662	java/io/FileNotFoundException
    //   382	391	662	java/io/FileNotFoundException
    //   396	414	662	java/io/FileNotFoundException
    //   414	431	662	java/io/FileNotFoundException
    //   431	477	662	java/io/FileNotFoundException
    //   477	529	662	java/io/FileNotFoundException
    //   529	581	662	java/io/FileNotFoundException
    //   581	633	662	java/io/FileNotFoundException
    //   641	659	662	java/io/FileNotFoundException
    //   673	678	681	java/io/IOException
    //   36	53	686	finally
    //   68	73	708	java/io/IOException
    //   633	638	713	java/io/IOException
    //   700	705	718	java/io/IOException
    //   53	63	723	finally
    //   76	85	723	finally
    //   90	141	723	finally
    //   146	164	723	finally
    //   164	173	723	finally
    //   178	233	723	finally
    //   238	269	723	finally
    //   274	289	723	finally
    //   289	298	723	finally
    //   303	318	723	finally
    //   318	327	723	finally
    //   332	350	723	finally
    //   350	359	723	finally
    //   364	382	723	finally
    //   382	391	723	finally
    //   396	414	723	finally
    //   414	431	723	finally
    //   431	477	723	finally
    //   477	529	723	finally
    //   529	581	723	finally
    //   581	633	723	finally
    //   641	659	723	finally
    //   36	53	728	java/io/FileNotFoundException
  }

  // ERROR //
  private boolean b(Uri paramUri, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: iload_3
    //   4: ifeq +122 -> 126
    //   7: new 54	java/io/FileInputStream
    //   10: dup
    //   11: new 31	java/io/File
    //   14: dup
    //   15: aload_1
    //   16: invokevirtual 254	android/net/Uri:toString	()Ljava/lang/String;
    //   19: ldc_w 256
    //   22: invokestatic 262	java/net/URLDecoder:decode	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   25: invokespecial 47	java/io/File:<init>	(Ljava/lang/String;)V
    //   28: invokespecial 57	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   31: astore 11
    //   33: aload 11
    //   35: ifnull +128 -> 163
    //   38: new 264	java/io/BufferedOutputStream
    //   41: dup
    //   42: new 266	java/io/FileOutputStream
    //   45: dup
    //   46: aload_0
    //   47: aload_2
    //   48: invokevirtual 269	com/alipay/mobile/alipassapp/biz/common/a:b	(Ljava/lang/String;)Ljava/io/File;
    //   51: invokespecial 270	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   54: invokespecial 273	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   57: astore 16
    //   59: sipush 10240
    //   62: newarray byte
    //   64: astore 18
    //   66: aload 11
    //   68: aload 18
    //   70: invokevirtual 277	java/io/InputStream:read	([B)I
    //   73: istore 19
    //   75: iload 19
    //   77: iconst_m1
    //   78: if_icmpeq +68 -> 146
    //   81: aload 16
    //   83: aload 18
    //   85: iconst_0
    //   86: iload 19
    //   88: invokevirtual 281	java/io/BufferedOutputStream:write	([BII)V
    //   91: goto -25 -> 66
    //   94: astore 17
    //   96: aload 16
    //   98: astore 6
    //   100: aload 11
    //   102: astore 7
    //   104: aload 7
    //   106: ifnull +8 -> 114
    //   109: aload 7
    //   111: invokevirtual 76	java/io/InputStream:close	()V
    //   114: aload 6
    //   116: ifnull +8 -> 124
    //   119: aload 6
    //   121: invokevirtual 282	java/io/BufferedOutputStream:close	()V
    //   124: iconst_0
    //   125: ireturn
    //   126: aload_0
    //   127: getfield 15	com/alipay/mobile/alipassapp/biz/common/a:a	Landroid/content/Context;
    //   130: invokevirtual 288	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   133: aload_1
    //   134: invokevirtual 294	android/content/ContentResolver:openInputStream	(Landroid/net/Uri;)Ljava/io/InputStream;
    //   137: astore 14
    //   139: aload 14
    //   141: astore 11
    //   143: goto -110 -> 33
    //   146: aload 11
    //   148: ifnull +8 -> 156
    //   151: aload 11
    //   153: invokevirtual 76	java/io/InputStream:close	()V
    //   156: aload 16
    //   158: invokevirtual 282	java/io/BufferedOutputStream:close	()V
    //   161: iconst_1
    //   162: ireturn
    //   163: aload 11
    //   165: ifnull -41 -> 124
    //   168: aload 11
    //   170: invokevirtual 76	java/io/InputStream:close	()V
    //   173: iconst_0
    //   174: ireturn
    //   175: astore 15
    //   177: iconst_0
    //   178: ireturn
    //   179: astore 10
    //   181: aconst_null
    //   182: astore 11
    //   184: aload 11
    //   186: ifnull +8 -> 194
    //   189: aload 11
    //   191: invokevirtual 76	java/io/InputStream:close	()V
    //   194: aload 4
    //   196: ifnull +8 -> 204
    //   199: aload 4
    //   201: invokevirtual 282	java/io/BufferedOutputStream:close	()V
    //   204: aload 10
    //   206: athrow
    //   207: astore 21
    //   209: goto -53 -> 156
    //   212: astore 20
    //   214: goto -53 -> 161
    //   217: astore 9
    //   219: goto -105 -> 114
    //   222: astore 8
    //   224: iconst_0
    //   225: ireturn
    //   226: astore 13
    //   228: goto -34 -> 194
    //   231: astore 12
    //   233: goto -29 -> 204
    //   236: astore 10
    //   238: aconst_null
    //   239: astore 4
    //   241: goto -57 -> 184
    //   244: astore 10
    //   246: aload 16
    //   248: astore 4
    //   250: goto -66 -> 184
    //   253: astore 5
    //   255: aconst_null
    //   256: astore 6
    //   258: aconst_null
    //   259: astore 7
    //   261: goto -157 -> 104
    //   264: astore 22
    //   266: aload 11
    //   268: astore 7
    //   270: aconst_null
    //   271: astore 6
    //   273: goto -169 -> 104
    //
    // Exception table:
    //   from	to	target	type
    //   59	66	94	java/lang/Exception
    //   66	75	94	java/lang/Exception
    //   81	91	94	java/lang/Exception
    //   168	173	175	java/io/IOException
    //   7	33	179	finally
    //   126	139	179	finally
    //   151	156	207	java/io/IOException
    //   156	161	212	java/io/IOException
    //   109	114	217	java/io/IOException
    //   119	124	222	java/io/IOException
    //   189	194	226	java/io/IOException
    //   199	204	231	java/io/IOException
    //   38	59	236	finally
    //   59	66	244	finally
    //   66	75	244	finally
    //   81	91	244	finally
    //   7	33	253	java/lang/Exception
    //   126	139	253	java/lang/Exception
    //   38	59	264	java/lang/Exception
  }

  public final AlipassInfo a(String paramString1, String paramString2)
  {
    return b(a(paramString1), paramString2);
  }

  public final String a(String paramString)
  {
    return b.a(this.a, "alipassDir") + paramString.substring(0, paramString.indexOf(".")) + File.separator;
  }

  public final boolean a(Uri paramUri, String paramString, boolean paramBoolean)
  {
    boolean bool1 = b(paramUri, paramString, paramBoolean);
    boolean bool2 = false;
    if (bool1)
    {
      boolean bool3 = StringUtils.isBlank(paramString);
      bool2 = false;
      if (!bool3)
      {
        boolean bool4 = paramString.endsWith(".alipass");
        bool2 = false;
        if (bool4)
        {
          String str = a(paramString);
          bool2 = ZipHelper.unZip(b(paramString).getAbsolutePath(), str);
        }
      }
    }
    return bool2;
  }

  public final File b(String paramString)
  {
    return new File(this.b + paramString);
  }

  // ERROR //
  public final String c(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: aload_1
    //   4: invokevirtual 269	com/alipay/mobile/alipassapp/biz/common/a:b	(Ljava/lang/String;)Ljava/io/File;
    //   7: astore_3
    //   8: aload_3
    //   9: invokevirtual 227	java/io/File:exists	()Z
    //   12: ifeq +316 -> 328
    //   15: new 52	java/io/BufferedInputStream
    //   18: dup
    //   19: new 54	java/io/FileInputStream
    //   22: dup
    //   23: aload_3
    //   24: invokespecial 57	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   27: invokespecial 60	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   30: astore 4
    //   32: new 333	java/io/ByteArrayOutputStream
    //   35: dup
    //   36: aload_3
    //   37: invokevirtual 337	java/io/File:length	()J
    //   40: l2i
    //   41: invokespecial 340	java/io/ByteArrayOutputStream:<init>	(I)V
    //   44: astore 5
    //   46: sipush 8192
    //   49: newarray byte
    //   51: astore 21
    //   53: aload 4
    //   55: aload 21
    //   57: invokevirtual 341	java/io/BufferedInputStream:read	([B)I
    //   60: istore 22
    //   62: iload 22
    //   64: iconst_m1
    //   65: if_icmpeq +91 -> 156
    //   68: aload 5
    //   70: aload 21
    //   72: iconst_0
    //   73: iload 22
    //   75: invokevirtual 342	java/io/ByteArrayOutputStream:write	([BII)V
    //   78: goto -25 -> 53
    //   81: astore 10
    //   83: aload 4
    //   85: ifnull +8 -> 93
    //   88: aload 4
    //   90: invokevirtual 343	java/io/BufferedInputStream:close	()V
    //   93: aload 5
    //   95: ifnull +235 -> 330
    //   98: aload 5
    //   100: invokevirtual 344	java/io/ByteArrayOutputStream:close	()V
    //   103: aload 5
    //   105: astore 11
    //   107: aload 11
    //   109: ifnull +219 -> 328
    //   112: aload 11
    //   114: invokevirtual 348	java/io/ByteArrayOutputStream:size	()I
    //   117: ifle +211 -> 328
    //   120: new 93	java/lang/String
    //   123: dup
    //   124: aload 11
    //   126: invokevirtual 352	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   129: iconst_0
    //   130: invokestatic 358	android/util/Base64:encode	([BI)[B
    //   133: invokespecial 361	java/lang/String:<init>	([B)V
    //   136: astore 12
    //   138: aload 11
    //   140: invokevirtual 364	java/io/ByteArrayOutputStream:flush	()V
    //   143: aload 11
    //   145: ifnull +8 -> 153
    //   148: aload 11
    //   150: invokevirtual 344	java/io/ByteArrayOutputStream:close	()V
    //   153: aload 12
    //   155: areturn
    //   156: aload 4
    //   158: invokevirtual 343	java/io/BufferedInputStream:close	()V
    //   161: aload 5
    //   163: invokevirtual 344	java/io/ByteArrayOutputStream:close	()V
    //   166: aload 5
    //   168: astore 11
    //   170: goto -63 -> 107
    //   173: astore 24
    //   175: aload 5
    //   177: astore 11
    //   179: goto -72 -> 107
    //   182: astore 19
    //   184: aload 5
    //   186: astore 11
    //   188: goto -81 -> 107
    //   191: astore 7
    //   193: aconst_null
    //   194: astore 4
    //   196: aload 4
    //   198: ifnull +8 -> 206
    //   201: aload 4
    //   203: invokevirtual 343	java/io/BufferedInputStream:close	()V
    //   206: aload_2
    //   207: ifnull +7 -> 214
    //   210: aload_2
    //   211: invokevirtual 344	java/io/ByteArrayOutputStream:close	()V
    //   214: aload 7
    //   216: athrow
    //   217: astore 18
    //   219: aconst_null
    //   220: astore 12
    //   222: aload 11
    //   224: ifnull -71 -> 153
    //   227: aload 11
    //   229: invokevirtual 344	java/io/ByteArrayOutputStream:close	()V
    //   232: aload 12
    //   234: areturn
    //   235: astore 14
    //   237: aload 12
    //   239: areturn
    //   240: astore 15
    //   242: aload 11
    //   244: ifnull +8 -> 252
    //   247: aload 11
    //   249: invokevirtual 344	java/io/ByteArrayOutputStream:close	()V
    //   252: aload 15
    //   254: athrow
    //   255: astore 23
    //   257: goto -96 -> 161
    //   260: astore 20
    //   262: goto -169 -> 93
    //   265: astore 9
    //   267: goto -61 -> 206
    //   270: astore 8
    //   272: goto -58 -> 214
    //   275: astore 17
    //   277: aload 12
    //   279: areturn
    //   280: astore 16
    //   282: goto -30 -> 252
    //   285: astore 13
    //   287: goto -65 -> 222
    //   290: astore 7
    //   292: aconst_null
    //   293: astore_2
    //   294: goto -98 -> 196
    //   297: astore 6
    //   299: aload 5
    //   301: astore_2
    //   302: aload 6
    //   304: astore 7
    //   306: goto -110 -> 196
    //   309: astore 26
    //   311: aconst_null
    //   312: astore 5
    //   314: aconst_null
    //   315: astore 4
    //   317: goto -234 -> 83
    //   320: astore 25
    //   322: aconst_null
    //   323: astore 5
    //   325: goto -242 -> 83
    //   328: aconst_null
    //   329: areturn
    //   330: aload 5
    //   332: astore 11
    //   334: goto -227 -> 107
    //
    // Exception table:
    //   from	to	target	type
    //   46	53	81	java/lang/Exception
    //   53	62	81	java/lang/Exception
    //   68	78	81	java/lang/Exception
    //   161	166	173	java/io/IOException
    //   98	103	182	java/io/IOException
    //   15	32	191	finally
    //   120	138	217	java/lang/Exception
    //   227	232	235	java/io/IOException
    //   120	138	240	finally
    //   138	143	240	finally
    //   156	161	255	java/io/IOException
    //   88	93	260	java/io/IOException
    //   201	206	265	java/io/IOException
    //   210	214	270	java/io/IOException
    //   148	153	275	java/io/IOException
    //   247	252	280	java/io/IOException
    //   138	143	285	java/lang/Exception
    //   32	46	290	finally
    //   46	53	297	finally
    //   53	62	297	finally
    //   68	78	297	finally
    //   15	32	309	java/lang/Exception
    //   32	46	320	java/lang/Exception
  }

  // ERROR //
  public final void d(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokevirtual 269	com/alipay/mobile/alipassapp/biz/common/a:b	(Ljava/lang/String;)Ljava/io/File;
    //   5: astore_2
    //   6: aload_0
    //   7: aload_1
    //   8: iconst_0
    //   9: aload_1
    //   10: ldc_w 300
    //   13: invokevirtual 304	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   16: invokevirtual 308	java/lang/String:substring	(II)Ljava/lang/String;
    //   19: invokevirtual 269	com/alipay/mobile/alipassapp/biz/common/a:b	(Ljava/lang/String;)Ljava/io/File;
    //   22: astore_3
    //   23: aload_2
    //   24: invokestatic 367	com/alipay/mobile/alipassapp/a/b:a	(Ljava/io/File;)V
    //   27: aload_3
    //   28: invokestatic 367	com/alipay/mobile/alipassapp/a/b:a	(Ljava/io/File;)V
    //   31: return
    //   32: astore 6
    //   34: aload_3
    //   35: invokestatic 367	com/alipay/mobile/alipassapp/a/b:a	(Ljava/io/File;)V
    //   38: return
    //   39: astore 7
    //   41: return
    //   42: astore 4
    //   44: aload_3
    //   45: invokestatic 367	com/alipay/mobile/alipassapp/a/b:a	(Ljava/io/File;)V
    //   48: aload 4
    //   50: athrow
    //   51: astore 8
    //   53: return
    //   54: astore 5
    //   56: goto -8 -> 48
    //
    // Exception table:
    //   from	to	target	type
    //   23	27	32	java/io/IOException
    //   34	38	39	java/io/IOException
    //   23	27	42	finally
    //   27	31	51	java/io/IOException
    //   44	48	54	java/io/IOException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.common.a
 * JD-Core Version:    0.6.2
 */