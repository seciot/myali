package com.alipay.mobile.appstoreapp.security;

public class CertHandler
{
  // ERROR //
  public static java.io.File a(java.lang.String paramString1, java.lang.String paramString2)
  {
    // Byte code:
    //   0: new 12	java/util/Scanner
    //   3: dup
    //   4: new 14	java/io/File
    //   7: dup
    //   8: new 16	java/lang/StringBuilder
    //   11: dup
    //   12: invokespecial 20	java/lang/StringBuilder:<init>	()V
    //   15: aload_0
    //   16: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   19: getstatic 28	java/io/File:separator	Ljava/lang/String;
    //   22: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   25: ldc 30
    //   27: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: invokespecial 37	java/io/File:<init>	(Ljava/lang/String;)V
    //   36: invokespecial 40	java/util/Scanner:<init>	(Ljava/io/File;)V
    //   39: astore_2
    //   40: aload_2
    //   41: invokevirtual 44	java/util/Scanner:hasNextLine	()Z
    //   44: ifeq +271 -> 315
    //   47: aload_2
    //   48: invokevirtual 47	java/util/Scanner:nextLine	()Ljava/lang/String;
    //   51: invokevirtual 52	java/lang/String:trim	()Ljava/lang/String;
    //   54: astore 8
    //   56: aload 8
    //   58: new 16	java/lang/StringBuilder
    //   61: dup
    //   62: ldc 54
    //   64: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   67: aload_1
    //   68: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   74: invokevirtual 59	java/lang/String:matches	(Ljava/lang/String;)Z
    //   77: ifeq -37 -> 40
    //   80: aload 8
    //   82: iconst_5
    //   83: invokevirtual 63	java/lang/String:substring	(I)Ljava/lang/String;
    //   86: invokevirtual 52	java/lang/String:trim	()Ljava/lang/String;
    //   89: astore 9
    //   91: aload_2
    //   92: invokevirtual 47	java/util/Scanner:nextLine	()Ljava/lang/String;
    //   95: invokevirtual 52	java/lang/String:trim	()Ljava/lang/String;
    //   98: astore 10
    //   100: aload 10
    //   102: ldc 65
    //   104: invokevirtual 69	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   107: ifne +137 -> 244
    //   110: aload 10
    //   112: bipush 11
    //   114: invokevirtual 63	java/lang/String:substring	(I)Ljava/lang/String;
    //   117: invokevirtual 52	java/lang/String:trim	()Ljava/lang/String;
    //   120: astore 11
    //   122: aload 9
    //   124: invokevirtual 73	java/lang/String:length	()I
    //   127: ifle +127 -> 254
    //   130: aload 11
    //   132: invokevirtual 73	java/lang/String:length	()I
    //   135: ifle +119 -> 254
    //   138: new 14	java/io/File
    //   141: dup
    //   142: new 16	java/lang/StringBuilder
    //   145: dup
    //   146: invokespecial 20	java/lang/StringBuilder:<init>	()V
    //   149: aload_0
    //   150: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   153: getstatic 28	java/io/File:separator	Ljava/lang/String;
    //   156: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: aload_1
    //   160: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   163: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   166: invokespecial 37	java/io/File:<init>	(Ljava/lang/String;)V
    //   169: astore 5
    //   171: aload 5
    //   173: aload 11
    //   175: invokestatic 78	com/alipay/mobile/appstoreapp/security/VerifyHelper:a	(Ljava/io/File;Ljava/lang/String;)Z
    //   178: ifne +140 -> 318
    //   181: new 10	java/lang/Exception
    //   184: dup
    //   185: ldc 80
    //   187: invokespecial 81	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   190: athrow
    //   191: astore 13
    //   193: aload_2
    //   194: astore 7
    //   196: ldc 83
    //   198: new 16	java/lang/StringBuilder
    //   201: dup
    //   202: ldc 85
    //   204: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: aload_0
    //   208: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: ldc 87
    //   213: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: aload_1
    //   217: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: ldc 89
    //   222: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   228: invokestatic 95	com/alipay/mobile/common/logagent/LogUtil:logContainerDebuggable	(Ljava/lang/String;Ljava/lang/String;)V
    //   231: aload 7
    //   233: ifnull +8 -> 241
    //   236: aload 7
    //   238: invokevirtual 98	java/util/Scanner:close	()V
    //   241: aload 5
    //   243: areturn
    //   244: new 10	java/lang/Exception
    //   247: dup
    //   248: ldc 80
    //   250: invokespecial 81	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   253: athrow
    //   254: new 10	java/lang/Exception
    //   257: dup
    //   258: ldc 80
    //   260: invokespecial 81	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   263: athrow
    //   264: astore 4
    //   266: aconst_null
    //   267: astore 5
    //   269: ldc 83
    //   271: new 16	java/lang/StringBuilder
    //   274: dup
    //   275: ldc 100
    //   277: invokespecial 55	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   280: aload_0
    //   281: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   284: ldc 87
    //   286: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   289: aload_1
    //   290: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   293: ldc 102
    //   295: invokevirtual 24	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   298: invokevirtual 34	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   301: invokestatic 95	com/alipay/mobile/common/logagent/LogUtil:logContainerDebuggable	(Ljava/lang/String;Ljava/lang/String;)V
    //   304: aload_2
    //   305: ifnull -64 -> 241
    //   308: aload_2
    //   309: invokevirtual 98	java/util/Scanner:close	()V
    //   312: aload 5
    //   314: areturn
    //   315: aconst_null
    //   316: astore 5
    //   318: aload_2
    //   319: invokevirtual 98	java/util/Scanner:close	()V
    //   322: aload 5
    //   324: areturn
    //   325: astore_3
    //   326: aconst_null
    //   327: astore_2
    //   328: aload_2
    //   329: ifnull +7 -> 336
    //   332: aload_2
    //   333: invokevirtual 98	java/util/Scanner:close	()V
    //   336: aload_3
    //   337: athrow
    //   338: astore_3
    //   339: goto -11 -> 328
    //   342: astore_3
    //   343: aload 7
    //   345: astore_2
    //   346: goto -18 -> 328
    //   349: astore 15
    //   351: aconst_null
    //   352: astore 5
    //   354: aconst_null
    //   355: astore_2
    //   356: goto -87 -> 269
    //   359: astore 12
    //   361: goto -92 -> 269
    //   364: astore 14
    //   366: aconst_null
    //   367: astore 5
    //   369: aconst_null
    //   370: astore 7
    //   372: goto -176 -> 196
    //   375: astore 6
    //   377: aload_2
    //   378: astore 7
    //   380: aconst_null
    //   381: astore 5
    //   383: goto -187 -> 196
    //
    // Exception table:
    //   from	to	target	type
    //   171	191	191	java/io/FileNotFoundException
    //   40	171	264	java/lang/Exception
    //   244	254	264	java/lang/Exception
    //   254	264	264	java/lang/Exception
    //   0	40	325	finally
    //   40	171	338	finally
    //   171	191	338	finally
    //   244	254	338	finally
    //   254	264	338	finally
    //   269	304	338	finally
    //   196	231	342	finally
    //   0	40	349	java/lang/Exception
    //   171	191	359	java/lang/Exception
    //   0	40	364	java/io/FileNotFoundException
    //   40	171	375	java/io/FileNotFoundException
    //   244	254	375	java/io/FileNotFoundException
    //   254	264	375	java/io/FileNotFoundException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.security.CertHandler
 * JD-Core Version:    0.6.2
 */