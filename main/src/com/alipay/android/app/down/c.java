package com.alipay.android.app.down;

final class c
  implements Runnable
{
  private String a;
  private String b;
  private FileDownloader c;
  private boolean d = false;
  private long e;
  private long f;

  public c(String paramString1, String paramString2, FileDownloader paramFileDownloader)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramFileDownloader;
  }

  public final long a()
  {
    return this.e;
  }

  public final void a(long paramLong)
  {
    this.e = paramLong;
  }

  public final long b()
  {
    return this.f;
  }

  public final void b(long paramLong)
  {
    this.f = paramLong;
  }

  public final boolean c()
  {
    return this.d;
  }

  // ERROR //
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 29	com/alipay/android/app/down/c:c	Lcom/alipay/android/app/down/FileDownloader;
    //   4: invokevirtual 48	com/alipay/android/app/down/FileDownloader:a	()Z
    //   7: ifeq +30 -> 37
    //   10: aload_0
    //   11: getfield 36	com/alipay/android/app/down/c:f	J
    //   14: lconst_0
    //   15: lcmp
    //   16: ifle +15 -> 31
    //   19: aload_0
    //   20: getfield 33	com/alipay/android/app/down/c:e	J
    //   23: aload_0
    //   24: getfield 36	com/alipay/android/app/down/c:f	J
    //   27: lcmp
    //   28: iflt +9 -> 37
    //   31: aload_0
    //   32: iconst_1
    //   33: putfield 23	com/alipay/android/app/down/c:d	Z
    //   36: return
    //   37: new 50	com/alipay/android/app/down/d
    //   40: dup
    //   41: aload_0
    //   42: invokespecial 53	com/alipay/android/app/down/d:<init>	(Lcom/alipay/android/app/down/c;)V
    //   45: astore_1
    //   46: aload_0
    //   47: getfield 23	com/alipay/android/app/down/c:d	Z
    //   50: ifne +175 -> 225
    //   53: new 55	org/apache/http/client/methods/HttpGet
    //   56: dup
    //   57: aload_0
    //   58: getfield 25	com/alipay/android/app/down/c:a	Ljava/lang/String;
    //   61: invokespecial 58	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   64: astore_2
    //   65: new 60	org/apache/http/impl/client/DefaultHttpClient
    //   68: dup
    //   69: invokespecial 61	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   72: astore_3
    //   73: aload_0
    //   74: getfield 29	com/alipay/android/app/down/c:c	Lcom/alipay/android/app/down/FileDownloader;
    //   77: invokevirtual 48	com/alipay/android/app/down/FileDownloader:a	()Z
    //   80: ifeq +40 -> 120
    //   83: aload_2
    //   84: ldc 63
    //   86: new 65	java/lang/StringBuilder
    //   89: dup
    //   90: ldc 67
    //   92: invokespecial 68	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   95: aload_0
    //   96: getfield 33	com/alipay/android/app/down/c:e	J
    //   99: invokevirtual 72	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   102: ldc 74
    //   104: invokevirtual 77	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: aload_0
    //   108: getfield 36	com/alipay/android/app/down/c:f	J
    //   111: invokevirtual 72	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   114: invokevirtual 81	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   117: invokevirtual 85	org/apache/http/client/methods/HttpGet:addHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   120: aload_3
    //   121: aload_2
    //   122: invokeinterface 91 2 0
    //   127: astore 21
    //   129: aload 21
    //   131: invokeinterface 97 1 0
    //   136: invokeinterface 103 1 0
    //   141: istore 22
    //   143: iload 22
    //   145: istore 10
    //   147: iload 10
    //   149: tableswitch	default:+47 -> 196, 200:+81->230, 201:+81->230, 202:+81->230, 203:+81->230, 204:+81->230, 205:+81->230, 206:+81->230, 207:+81->230
    //   197: iconst_1
    //   198: putfield 23	com/alipay/android/app/down/c:d	Z
    //   201: aconst_null
    //   202: astore 5
    //   204: aload_0
    //   205: getfield 23	com/alipay/android/app/down/c:d	Z
    //   208: istore 24
    //   210: iload 24
    //   212: ifeq +55 -> 267
    //   215: aload 5
    //   217: ifnull +8 -> 225
    //   220: aload 5
    //   222: invokevirtual 108	java/io/InputStream:close	()V
    //   225: aload_1
    //   226: invokevirtual 110	com/alipay/android/app/down/d:a	()V
    //   229: return
    //   230: aload 21
    //   232: invokeinterface 114 1 0
    //   237: invokeinterface 120 1 0
    //   242: astore 23
    //   244: aload 23
    //   246: astore 5
    //   248: goto -44 -> 204
    //   251: astore 12
    //   253: iconst_0
    //   254: istore 10
    //   256: aconst_null
    //   257: astore 5
    //   259: ldc 2
    //   261: aconst_null
    //   262: aload 12
    //   264: invokestatic 125	com/alipay/android/app/exception/AppErrorException:a	(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   267: aload 5
    //   269: ifnonnull +21 -> 290
    //   272: aload 5
    //   274: ifnull -228 -> 46
    //   277: aload 5
    //   279: invokevirtual 108	java/io/InputStream:close	()V
    //   282: goto -236 -> 46
    //   285: astore 20
    //   287: goto -241 -> 46
    //   290: sipush 1024
    //   293: newarray byte
    //   295: astore 15
    //   297: aload 5
    //   299: aload 15
    //   301: iconst_0
    //   302: aload 15
    //   304: arraylength
    //   305: invokevirtual 129	java/io/InputStream:read	([BII)I
    //   308: istore 16
    //   310: iload 16
    //   312: iconst_m1
    //   313: if_icmpeq +28 -> 341
    //   316: aload_0
    //   317: aload_0
    //   318: getfield 33	com/alipay/android/app/down/c:e	J
    //   321: aload_1
    //   322: aload 15
    //   324: iload 16
    //   326: invokevirtual 132	com/alipay/android/app/down/d:a	([BI)I
    //   329: i2l
    //   330: ladd
    //   331: putfield 33	com/alipay/android/app/down/c:e	J
    //   334: aload_0
    //   335: getfield 29	com/alipay/android/app/down/c:c	Lcom/alipay/android/app/down/FileDownloader;
    //   338: invokevirtual 134	com/alipay/android/app/down/FileDownloader:c	()V
    //   341: aload_0
    //   342: getfield 29	com/alipay/android/app/down/c:c	Lcom/alipay/android/app/down/FileDownloader;
    //   345: invokevirtual 48	com/alipay/android/app/down/FileDownloader:a	()Z
    //   348: ifeq +59 -> 407
    //   351: aload_0
    //   352: getfield 33	com/alipay/android/app/down/c:e	J
    //   355: aload_0
    //   356: getfield 36	com/alipay/android/app/down/c:f	J
    //   359: lcmp
    //   360: iflt +47 -> 407
    //   363: iconst_0
    //   364: istore 17
    //   366: aload_0
    //   367: getfield 23	com/alipay/android/app/down/c:d	Z
    //   370: ifne +43 -> 413
    //   373: iload 17
    //   375: ifeq +38 -> 413
    //   378: iconst_1
    //   379: istore 18
    //   381: goto +221 -> 602
    //   384: aload_0
    //   385: iconst_1
    //   386: putfield 23	com/alipay/android/app/down/c:d	Z
    //   389: aload 5
    //   391: ifnull -345 -> 46
    //   394: aload 5
    //   396: invokevirtual 108	java/io/InputStream:close	()V
    //   399: goto -353 -> 46
    //   402: astore 19
    //   404: goto -358 -> 46
    //   407: iconst_1
    //   408: istore 17
    //   410: goto -44 -> 366
    //   413: iconst_0
    //   414: istore 18
    //   416: goto +186 -> 602
    //   419: astore 9
    //   421: iconst_0
    //   422: istore 10
    //   424: aconst_null
    //   425: astore 5
    //   427: invokestatic 139	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   430: aload 9
    //   432: ldc 141
    //   434: invokevirtual 144	com/alipay/android/app/monitor/MonitorThread:c	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   437: iload 10
    //   439: ifne +8 -> 447
    //   442: aload_0
    //   443: iconst_1
    //   444: putfield 23	com/alipay/android/app/down/c:d	Z
    //   447: aload 5
    //   449: ifnull -403 -> 46
    //   452: aload 5
    //   454: invokevirtual 108	java/io/InputStream:close	()V
    //   457: goto -411 -> 46
    //   460: astore 11
    //   462: goto -416 -> 46
    //   465: astore 13
    //   467: invokestatic 139	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   470: aload 13
    //   472: ldc 146
    //   474: invokevirtual 148	com/alipay/android/app/monitor/MonitorThread:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   477: aload_0
    //   478: iconst_1
    //   479: putfield 23	com/alipay/android/app/down/c:d	Z
    //   482: aload 5
    //   484: ifnull -438 -> 46
    //   487: aload 5
    //   489: invokevirtual 108	java/io/InputStream:close	()V
    //   492: goto -446 -> 46
    //   495: astore 14
    //   497: goto -451 -> 46
    //   500: astore 7
    //   502: aconst_null
    //   503: astore 5
    //   505: invokestatic 139	com/alipay/android/app/monitor/MonitorThread:a	()Lcom/alipay/android/app/monitor/MonitorThread;
    //   508: aload 7
    //   510: ldc 150
    //   512: invokevirtual 148	com/alipay/android/app/monitor/MonitorThread:a	(Ljava/lang/Throwable;Ljava/lang/String;)V
    //   515: aload_0
    //   516: iconst_1
    //   517: putfield 23	com/alipay/android/app/down/c:d	Z
    //   520: aload 5
    //   522: ifnull -476 -> 46
    //   525: aload 5
    //   527: invokevirtual 108	java/io/InputStream:close	()V
    //   530: goto -484 -> 46
    //   533: astore 8
    //   535: goto -489 -> 46
    //   538: astore 4
    //   540: aconst_null
    //   541: astore 5
    //   543: aload 5
    //   545: ifnull +8 -> 553
    //   548: aload 5
    //   550: invokevirtual 108	java/io/InputStream:close	()V
    //   553: aload 4
    //   555: athrow
    //   556: astore 25
    //   558: goto -333 -> 225
    //   561: astore 6
    //   563: goto -10 -> 553
    //   566: astore 4
    //   568: goto -25 -> 543
    //   571: astore 7
    //   573: goto -68 -> 505
    //   576: astore 9
    //   578: aconst_null
    //   579: astore 5
    //   581: goto -154 -> 427
    //   584: astore 9
    //   586: goto -159 -> 427
    //   589: astore 12
    //   591: aconst_null
    //   592: astore 5
    //   594: goto -335 -> 259
    //   597: astore 12
    //   599: goto -340 -> 259
    //   602: iload 16
    //   604: iflt -220 -> 384
    //   607: iload 18
    //   609: ifne -312 -> 297
    //   612: goto -228 -> 384
    //
    // Exception table:
    //   from	to	target	type
    //   53	120	251	java/io/IOException
    //   120	143	251	java/io/IOException
    //   277	282	285	java/lang/Exception
    //   394	399	402	java/lang/Exception
    //   53	120	419	java/net/SocketTimeoutException
    //   120	143	419	java/net/SocketTimeoutException
    //   452	457	460	java/lang/Exception
    //   259	267	465	java/io/IOException
    //   290	297	465	java/io/IOException
    //   297	310	465	java/io/IOException
    //   316	341	465	java/io/IOException
    //   341	363	465	java/io/IOException
    //   366	373	465	java/io/IOException
    //   384	389	465	java/io/IOException
    //   487	492	495	java/lang/Exception
    //   53	120	500	java/lang/Exception
    //   120	143	500	java/lang/Exception
    //   196	201	500	java/lang/Exception
    //   230	244	500	java/lang/Exception
    //   525	530	533	java/lang/Exception
    //   53	120	538	finally
    //   120	143	538	finally
    //   196	201	538	finally
    //   230	244	538	finally
    //   220	225	556	java/lang/Exception
    //   548	553	561	java/lang/Exception
    //   204	210	566	finally
    //   259	267	566	finally
    //   290	297	566	finally
    //   297	310	566	finally
    //   316	341	566	finally
    //   341	363	566	finally
    //   366	373	566	finally
    //   384	389	566	finally
    //   427	437	566	finally
    //   442	447	566	finally
    //   467	482	566	finally
    //   505	520	566	finally
    //   204	210	571	java/lang/Exception
    //   259	267	571	java/lang/Exception
    //   290	297	571	java/lang/Exception
    //   297	310	571	java/lang/Exception
    //   316	341	571	java/lang/Exception
    //   341	363	571	java/lang/Exception
    //   366	373	571	java/lang/Exception
    //   384	389	571	java/lang/Exception
    //   196	201	576	java/net/SocketTimeoutException
    //   230	244	576	java/net/SocketTimeoutException
    //   204	210	584	java/net/SocketTimeoutException
    //   259	267	584	java/net/SocketTimeoutException
    //   290	297	584	java/net/SocketTimeoutException
    //   297	310	584	java/net/SocketTimeoutException
    //   316	341	584	java/net/SocketTimeoutException
    //   341	363	584	java/net/SocketTimeoutException
    //   366	373	584	java/net/SocketTimeoutException
    //   384	389	584	java/net/SocketTimeoutException
    //   196	201	589	java/io/IOException
    //   230	244	589	java/io/IOException
    //   204	210	597	java/io/IOException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.down.c
 * JD-Core Version:    0.6.2
 */