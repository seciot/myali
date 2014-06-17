package com.taobao.securityjni.tools;

public final class c
{
  // ERROR //
  public static void a(java.lang.String paramString1, java.lang.String paramString2)
  {
    // Byte code:
    //   0: ldc 16
    //   2: ldc 18
    //   4: invokestatic 24	java/lang/System:getProperty	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   7: astore_2
    //   8: aload_0
    //   9: ifnull +12 -> 21
    //   12: ldc 26
    //   14: aload_0
    //   15: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   18: ifeq +4 -> 22
    //   21: return
    //   22: aload_0
    //   23: iconst_0
    //   24: iconst_1
    //   25: invokevirtual 36	java/lang/String:substring	(II)Ljava/lang/String;
    //   28: aload_2
    //   29: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   32: ifne +40 -> 72
    //   35: invokestatic 42	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   38: invokevirtual 48	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   41: astore 21
    //   43: aload 21
    //   45: ifnull -24 -> 21
    //   48: new 50	java/lang/StringBuilder
    //   51: dup
    //   52: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   55: aload 21
    //   57: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_2
    //   61: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: aload_0
    //   65: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   71: astore_0
    //   72: new 44	java/io/File
    //   75: dup
    //   76: aload_0
    //   77: invokespecial 64	java/io/File:<init>	(Ljava/lang/String;)V
    //   80: astore_3
    //   81: new 50	java/lang/StringBuilder
    //   84: dup
    //   85: invokespecial 54	java/lang/StringBuilder:<init>	()V
    //   88: astore 4
    //   90: aload_3
    //   91: invokevirtual 68	java/io/File:exists	()Z
    //   94: ifeq -73 -> 21
    //   97: aload_3
    //   98: invokevirtual 71	java/io/File:isFile	()Z
    //   101: ifeq -80 -> 21
    //   104: aload_3
    //   105: invokevirtual 74	java/io/File:canRead	()Z
    //   108: ifeq -87 -> 21
    //   111: new 76	java/io/FileReader
    //   114: dup
    //   115: aload_3
    //   116: invokespecial 79	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   119: astore 5
    //   121: new 81	java/io/BufferedReader
    //   124: dup
    //   125: aload 5
    //   127: invokespecial 84	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   130: astore 6
    //   132: aload 6
    //   134: invokevirtual 87	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   137: astore 18
    //   139: aload 18
    //   141: ifnull +87 -> 228
    //   144: aload 4
    //   146: aload 18
    //   148: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: ldc 89
    //   153: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   156: pop
    //   157: goto -25 -> 132
    //   160: astore 15
    //   162: aload 5
    //   164: astore 16
    //   166: aload 15
    //   168: invokevirtual 92	java/io/FileNotFoundException:printStackTrace	()V
    //   171: aload 6
    //   173: ifnull +8 -> 181
    //   176: aload 6
    //   178: invokevirtual 95	java/io/BufferedReader:close	()V
    //   181: aload 16
    //   183: ifnull +8 -> 191
    //   186: aload 16
    //   188: invokevirtual 96	java/io/FileReader:close	()V
    //   191: aload_3
    //   192: invokevirtual 99	java/io/File:delete	()Z
    //   195: pop
    //   196: aload 4
    //   198: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: astore 12
    //   203: aload 12
    //   205: ifnull +194 -> 399
    //   208: ldc 26
    //   210: aload 12
    //   212: invokevirtual 32	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   215: ifne +184 -> 399
    //   218: aload_1
    //   219: aload 12
    //   221: aload_0
    //   222: ldc 101
    //   224: invokestatic 107	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:UserTrackUpload	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   227: return
    //   228: aload 6
    //   230: invokevirtual 95	java/io/BufferedReader:close	()V
    //   233: aload 5
    //   235: invokevirtual 96	java/io/FileReader:close	()V
    //   238: goto -47 -> 191
    //   241: astore 20
    //   243: goto -52 -> 191
    //   246: astore 7
    //   248: aconst_null
    //   249: astore 6
    //   251: aconst_null
    //   252: astore 5
    //   254: aload 7
    //   256: invokevirtual 108	java/lang/SecurityException:printStackTrace	()V
    //   259: aload 6
    //   261: ifnull +8 -> 269
    //   264: aload 6
    //   266: invokevirtual 95	java/io/BufferedReader:close	()V
    //   269: aload 5
    //   271: ifnull -80 -> 191
    //   274: aload 5
    //   276: invokevirtual 96	java/io/FileReader:close	()V
    //   279: goto -88 -> 191
    //   282: astore 10
    //   284: goto -93 -> 191
    //   287: astore 13
    //   289: aconst_null
    //   290: astore 6
    //   292: aconst_null
    //   293: astore 5
    //   295: aload 13
    //   297: invokevirtual 109	java/lang/Exception:printStackTrace	()V
    //   300: aload_1
    //   301: new 50	java/lang/StringBuilder
    //   304: dup
    //   305: ldc 111
    //   307: invokespecial 112	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   310: aload 13
    //   312: invokevirtual 115	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   315: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: ldc 89
    //   320: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   323: aload 13
    //   325: invokevirtual 116	java/lang/Exception:toString	()Ljava/lang/String;
    //   328: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: aload_0
    //   335: ldc 101
    //   337: invokestatic 107	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:UserTrackUpload	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   340: aload 6
    //   342: ifnull +8 -> 350
    //   345: aload 6
    //   347: invokevirtual 95	java/io/BufferedReader:close	()V
    //   350: aload 5
    //   352: ifnull -161 -> 191
    //   355: aload 5
    //   357: invokevirtual 96	java/io/FileReader:close	()V
    //   360: goto -169 -> 191
    //   363: astore 14
    //   365: goto -174 -> 191
    //   368: astore 8
    //   370: aconst_null
    //   371: astore 6
    //   373: aconst_null
    //   374: astore 5
    //   376: aload 6
    //   378: ifnull +8 -> 386
    //   381: aload 6
    //   383: invokevirtual 95	java/io/BufferedReader:close	()V
    //   386: aload 5
    //   388: ifnull +8 -> 396
    //   391: aload 5
    //   393: invokevirtual 96	java/io/FileReader:close	()V
    //   396: aload 8
    //   398: athrow
    //   399: aload_1
    //   400: ldc 118
    //   402: aload_0
    //   403: ldc 101
    //   405: invokestatic 107	com/taobao/securityjni/usertrack/TBSecurityUsertrackProxy:UserTrackUpload	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   408: return
    //   409: astore 9
    //   411: goto -15 -> 396
    //   414: astore 8
    //   416: aconst_null
    //   417: astore 6
    //   419: goto -43 -> 376
    //   422: astore 8
    //   424: goto -48 -> 376
    //   427: astore 8
    //   429: aload 16
    //   431: astore 5
    //   433: goto -57 -> 376
    //   436: astore 13
    //   438: aconst_null
    //   439: astore 6
    //   441: goto -146 -> 295
    //   444: astore 13
    //   446: goto -151 -> 295
    //   449: astore 7
    //   451: aconst_null
    //   452: astore 6
    //   454: goto -200 -> 254
    //   457: astore 7
    //   459: goto -205 -> 254
    //   462: astore 17
    //   464: goto -273 -> 191
    //   467: astore 15
    //   469: aconst_null
    //   470: astore 6
    //   472: aconst_null
    //   473: astore 16
    //   475: goto -309 -> 166
    //   478: astore 15
    //   480: aload 5
    //   482: astore 16
    //   484: aconst_null
    //   485: astore 6
    //   487: goto -321 -> 166
    //
    // Exception table:
    //   from	to	target	type
    //   132	139	160	java/io/FileNotFoundException
    //   144	157	160	java/io/FileNotFoundException
    //   228	238	241	java/io/IOException
    //   111	121	246	java/lang/SecurityException
    //   264	269	282	java/io/IOException
    //   274	279	282	java/io/IOException
    //   111	121	287	java/lang/Exception
    //   345	350	363	java/io/IOException
    //   355	360	363	java/io/IOException
    //   111	121	368	finally
    //   381	386	409	java/io/IOException
    //   391	396	409	java/io/IOException
    //   121	132	414	finally
    //   132	139	422	finally
    //   144	157	422	finally
    //   254	259	422	finally
    //   295	340	422	finally
    //   166	171	427	finally
    //   121	132	436	java/lang/Exception
    //   132	139	444	java/lang/Exception
    //   144	157	444	java/lang/Exception
    //   121	132	449	java/lang/SecurityException
    //   132	139	457	java/lang/SecurityException
    //   144	157	457	java/lang/SecurityException
    //   176	181	462	java/io/IOException
    //   186	191	462	java/io/IOException
    //   111	121	467	java/io/FileNotFoundException
    //   121	132	478	java/io/FileNotFoundException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.tools.c
 * JD-Core Version:    0.6.2
 */