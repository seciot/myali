package com.alipay.android.app.monitor;

import android.content.Context;

final class g extends SystemTimeTask
{
  private boolean a;

  g(Context paramContext)
  {
    super(paramContext);
  }

  // ERROR //
  private static void a(java.io.File paramFile)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: invokevirtual 21	java/io/File:exists	()Z
    //   6: ifeq +38 -> 44
    //   9: aload_0
    //   10: invokevirtual 24	java/io/File:isFile	()Z
    //   13: ifeq +31 -> 44
    //   16: new 26	java/lang/StringBuilder
    //   19: dup
    //   20: ldc 28
    //   22: invokespecial 31	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: invokevirtual 35	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   29: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   32: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   35: astore_2
    //   36: aload_2
    //   37: invokestatic 48	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   40: ifeq +41 -> 81
    //   43: return
    //   44: aload_0
    //   45: invokevirtual 21	java/io/File:exists	()Z
    //   48: ifeq +145 -> 193
    //   51: aload_0
    //   52: invokevirtual 51	java/io/File:isAbsolute	()Z
    //   55: ifeq +138 -> 193
    //   58: new 26	java/lang/StringBuilder
    //   61: dup
    //   62: ldc 53
    //   64: invokespecial 31	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   67: aload_0
    //   68: invokevirtual 35	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   71: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: astore_2
    //   78: goto -42 -> 36
    //   81: invokestatic 59	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   84: ldc 61
    //   86: invokevirtual 65	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   89: invokevirtual 71	java/lang/Process:getOutputStream	()Ljava/io/OutputStream;
    //   92: astore_1
    //   93: new 26	java/lang/StringBuilder
    //   96: dup
    //   97: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   100: astore 8
    //   102: aload 8
    //   104: aload_2
    //   105: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: pop
    //   109: aload 8
    //   111: ldc 76
    //   113: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: pop
    //   117: aload 8
    //   119: ldc 78
    //   121: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: pop
    //   125: aload 8
    //   127: ldc 76
    //   129: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: pop
    //   133: aload_1
    //   134: aload 8
    //   136: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   139: invokevirtual 84	java/lang/String:getBytes	()[B
    //   142: invokevirtual 90	java/io/OutputStream:write	([B)V
    //   145: aload_1
    //   146: invokevirtual 93	java/io/OutputStream:flush	()V
    //   149: aload_1
    //   150: invokevirtual 96	java/io/OutputStream:close	()V
    //   153: aload_0
    //   154: invokevirtual 35	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   157: pop
    //   158: invokestatic 101	com/alipay/android/app/util/LogUtils:h	()V
    //   161: return
    //   162: astore 5
    //   164: aload_1
    //   165: invokevirtual 96	java/io/OutputStream:close	()V
    //   168: goto -15 -> 153
    //   171: astore 6
    //   173: goto -20 -> 153
    //   176: astore_3
    //   177: aload_1
    //   178: invokevirtual 96	java/io/OutputStream:close	()V
    //   181: aload_3
    //   182: athrow
    //   183: astore 13
    //   185: goto -32 -> 153
    //   188: astore 4
    //   190: goto -9 -> 181
    //   193: aconst_null
    //   194: astore_2
    //   195: goto -159 -> 36
    //
    // Exception table:
    //   from	to	target	type
    //   81	149	162	java/io/IOException
    //   164	168	171	java/lang/Exception
    //   81	149	176	finally
    //   149	153	183	java/lang/Exception
    //   177	181	188	java/lang/Exception
  }

  // ERROR //
  private static void a(java.io.File paramFile, org.json.JSONArray paramJSONArray)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 105	java/io/File:canRead	()Z
    //   4: ifne +4 -> 8
    //   7: return
    //   8: aconst_null
    //   9: astore_2
    //   10: new 107	java/io/BufferedReader
    //   13: dup
    //   14: new 109	java/io/FileReader
    //   17: dup
    //   18: aload_0
    //   19: invokespecial 111	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   22: invokespecial 114	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   25: astore_3
    //   26: aload_3
    //   27: invokevirtual 117	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   30: astore 9
    //   32: aload 9
    //   34: ifnull +34 -> 68
    //   37: aload_1
    //   38: new 119	org/json/JSONObject
    //   41: dup
    //   42: aload 9
    //   44: invokespecial 120	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   47: invokevirtual 126	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   50: pop
    //   51: goto -25 -> 26
    //   54: astore 7
    //   56: aload_3
    //   57: ifnull -50 -> 7
    //   60: aload_3
    //   61: invokevirtual 127	java/io/BufferedReader:close	()V
    //   64: return
    //   65: astore 8
    //   67: return
    //   68: aload_3
    //   69: invokevirtual 127	java/io/BufferedReader:close	()V
    //   72: aload_3
    //   73: invokevirtual 127	java/io/BufferedReader:close	()V
    //   76: return
    //   77: astore 11
    //   79: return
    //   80: astore 5
    //   82: aload_2
    //   83: ifnull +7 -> 90
    //   86: aload_2
    //   87: invokevirtual 127	java/io/BufferedReader:close	()V
    //   90: aload 5
    //   92: athrow
    //   93: astore 6
    //   95: goto -5 -> 90
    //   98: astore 4
    //   100: aload_3
    //   101: astore_2
    //   102: aload 4
    //   104: astore 5
    //   106: goto -24 -> 82
    //   109: astore 12
    //   111: aconst_null
    //   112: astore_3
    //   113: goto -57 -> 56
    //
    // Exception table:
    //   from	to	target	type
    //   26	32	54	java/lang/Exception
    //   37	51	54	java/lang/Exception
    //   68	72	54	java/lang/Exception
    //   60	64	65	java/io/IOException
    //   72	76	77	java/io/IOException
    //   10	26	80	finally
    //   86	90	93	java/io/IOException
    //   26	32	98	finally
    //   37	51	98	finally
    //   68	72	98	finally
    //   10	26	109	java/lang/Exception
  }

  // ERROR //
  private boolean b(java.io.File paramFile)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aconst_null
    //   3: astore_3
    //   4: new 119	org/json/JSONObject
    //   7: dup
    //   8: invokespecial 130	org/json/JSONObject:<init>	()V
    //   11: astore 4
    //   13: new 122	org/json/JSONArray
    //   16: dup
    //   17: invokespecial 131	org/json/JSONArray:<init>	()V
    //   20: astore 5
    //   22: new 119	org/json/JSONObject
    //   25: dup
    //   26: invokespecial 130	org/json/JSONObject:<init>	()V
    //   29: astore 6
    //   31: aload 6
    //   33: ldc 133
    //   35: ldc 135
    //   37: invokevirtual 138	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   40: pop
    //   41: aload 6
    //   43: ldc 140
    //   45: ldc 142
    //   47: invokevirtual 138	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   50: pop
    //   51: aload 6
    //   53: ldc 144
    //   55: getstatic 150	com/alipay/android/app/pay/GlobalConstant:API_VERSION	Ljava/lang/String;
    //   58: invokevirtual 138	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   61: pop
    //   62: aload 6
    //   64: ldc 152
    //   66: getstatic 157	android/os/Build:MODEL	Ljava/lang/String;
    //   69: invokevirtual 138	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   72: pop
    //   73: aload 6
    //   75: ldc 159
    //   77: aload 5
    //   79: invokevirtual 138	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   82: pop
    //   83: aload 4
    //   85: ldc 161
    //   87: aload 6
    //   89: invokevirtual 138	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   92: pop
    //   93: aload_1
    //   94: aload 5
    //   96: invokestatic 163	com/alipay/android/app/monitor/g:a	(Ljava/io/File;Lorg/json/JSONArray;)V
    //   99: aload_0
    //   100: invokevirtual 167	com/alipay/android/app/monitor/g:d	()Landroid/content/Context;
    //   103: getstatic 170	com/alipay/android/app/pay/GlobalConstant:HTTP_URL	Ljava/lang/String;
    //   106: aload 4
    //   108: invokevirtual 171	org/json/JSONObject:toString	()Ljava/lang/String;
    //   111: invokestatic 176	com/alipay/android/lib/plusin/protocol/RequestUtils:a	(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    //   114: astore 18
    //   116: aload 18
    //   118: astore_3
    //   119: aload_3
    //   120: invokeinterface 182 1 0
    //   125: invokeinterface 188 1 0
    //   130: istore 20
    //   132: iload 20
    //   134: sipush 404
    //   137: if_icmpne +87 -> 224
    //   140: aload_1
    //   141: invokevirtual 191	java/io/File:getName	()Ljava/lang/String;
    //   144: astore 21
    //   146: aload 21
    //   148: getstatic 197	com/alipay/android/app/monitor/MonitorEnum:f	Lcom/alipay/android/app/monitor/MonitorEnum;
    //   151: invokevirtual 199	com/alipay/android/app/monitor/MonitorEnum:a	()Ljava/lang/String;
    //   154: invokevirtual 203	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   157: ifgt +21 -> 178
    //   160: aload 21
    //   162: getstatic 205	com/alipay/android/app/monitor/MonitorEnum:b	Lcom/alipay/android/app/monitor/MonitorEnum;
    //   165: invokevirtual 199	com/alipay/android/app/monitor/MonitorEnum:a	()Ljava/lang/String;
    //   168: invokevirtual 203	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   171: istore 23
    //   173: iload 23
    //   175: ifle +25 -> 200
    //   178: aload_3
    //   179: ifnull +17 -> 196
    //   182: aload_3
    //   183: invokeinterface 209 1 0
    //   188: invokeinterface 215 1 0
    //   193: invokevirtual 218	java/io/InputStream:close	()V
    //   196: iconst_0
    //   197: istore_2
    //   198: iload_2
    //   199: ireturn
    //   200: aload_3
    //   201: ifnull -3 -> 198
    //   204: aload_3
    //   205: invokeinterface 209 1 0
    //   210: invokeinterface 215 1 0
    //   215: invokevirtual 218	java/io/InputStream:close	()V
    //   218: iload_2
    //   219: ireturn
    //   220: astore 24
    //   222: iload_2
    //   223: ireturn
    //   224: iload 20
    //   226: sipush 400
    //   229: if_icmplt +31 -> 260
    //   232: iload 20
    //   234: sipush 500
    //   237: if_icmpge +23 -> 260
    //   240: aload_3
    //   241: ifnull +17 -> 258
    //   244: aload_3
    //   245: invokeinterface 209 1 0
    //   250: invokeinterface 215 1 0
    //   255: invokevirtual 218	java/io/InputStream:close	()V
    //   258: iconst_0
    //   259: ireturn
    //   260: aload_3
    //   261: ifnull -63 -> 198
    //   264: aload_3
    //   265: invokeinterface 209 1 0
    //   270: invokeinterface 215 1 0
    //   275: invokevirtual 218	java/io/InputStream:close	()V
    //   278: iload_2
    //   279: ireturn
    //   280: astore 25
    //   282: iload_2
    //   283: ireturn
    //   284: astore 9
    //   286: aconst_null
    //   287: astore 10
    //   289: aload 10
    //   291: ifnull +18 -> 309
    //   294: aload 10
    //   296: invokeinterface 209 1 0
    //   301: invokeinterface 215 1 0
    //   306: invokevirtual 218	java/io/InputStream:close	()V
    //   309: iconst_0
    //   310: ireturn
    //   311: astore 7
    //   313: aload_3
    //   314: ifnull +17 -> 331
    //   317: aload_3
    //   318: invokeinterface 209 1 0
    //   323: invokeinterface 215 1 0
    //   328: invokevirtual 218	java/io/InputStream:close	()V
    //   331: aload 7
    //   333: athrow
    //   334: astore 8
    //   336: goto -5 -> 331
    //   339: astore 11
    //   341: goto -32 -> 309
    //   344: astore 19
    //   346: aload_3
    //   347: astore 10
    //   349: goto -60 -> 289
    //   352: astore 26
    //   354: goto -96 -> 258
    //   357: astore 22
    //   359: goto -163 -> 196
    //
    // Exception table:
    //   from	to	target	type
    //   204	218	220	java/lang/Exception
    //   264	278	280	java/lang/Exception
    //   4	116	284	java/lang/Exception
    //   4	116	311	finally
    //   119	132	311	finally
    //   140	173	311	finally
    //   317	331	334	java/lang/Exception
    //   294	309	339	java/lang/Exception
    //   119	132	344	java/lang/Exception
    //   140	173	344	java/lang/Exception
    //   244	258	352	java/lang/Exception
    //   182	196	357	java/lang/Exception
  }

  protected final void e()
  {
    this.a = true;
  }

  // ERROR //
  protected final void f()
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: putfield 221	com/alipay/android/app/monitor/g:a	Z
    //   5: invokestatic 223	com/alipay/android/app/monitor/g:b	()Z
    //   8: ifne +10 -> 18
    //   11: aload_0
    //   12: invokevirtual 226	com/alipay/android/app/monitor/g:c	()Z
    //   15: ifne +4 -> 19
    //   18: return
    //   19: getstatic 229	com/alipay/android/app/pay/GlobalConstant:DEBUG	Z
    //   22: ifeq +167 -> 189
    //   25: invokestatic 234	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   28: invokevirtual 236	com/alipay/android/app/sys/GlobalContext:b	()Landroid/content/Context;
    //   31: invokevirtual 242	android/content/Context:getExternalCacheDir	()Ljava/io/File;
    //   34: invokevirtual 35	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   37: astore_3
    //   38: new 17	java/io/File
    //   41: dup
    //   42: new 26	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 74	java/lang/StringBuilder:<init>	()V
    //   49: aload_3
    //   50: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: getstatic 245	java/io/File:separator	Ljava/lang/String;
    //   56: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: ldc 247
    //   61: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: getstatic 245	java/io/File:separator	Ljava/lang/String;
    //   67: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: ldc 159
    //   72: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: getstatic 245	java/io/File:separator	Ljava/lang/String;
    //   78: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   81: invokevirtual 42	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: invokespecial 248	java/io/File:<init>	(Ljava/lang/String;)V
    //   87: astore 4
    //   89: aload 4
    //   91: invokevirtual 21	java/io/File:exists	()Z
    //   94: ifeq -76 -> 18
    //   97: aload 4
    //   99: invokevirtual 252	java/io/File:listFiles	()[Ljava/io/File;
    //   102: astore 5
    //   104: iconst_0
    //   105: istore 6
    //   107: iload 6
    //   109: aload 5
    //   111: arraylength
    //   112: if_icmpge -94 -> 18
    //   115: aload 5
    //   117: iload 6
    //   119: aaload
    //   120: astore 7
    //   122: ldc 254
    //   124: invokestatic 259	com/alipay/android/app/monitor/c:a	(Ljava/lang/String;)Ljava/lang/String;
    //   127: astore 8
    //   129: aload 7
    //   131: invokevirtual 191	java/io/File:getName	()Ljava/lang/String;
    //   134: aload 8
    //   136: invokestatic 263	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   139: ifne +152 -> 291
    //   142: aload 7
    //   144: invokevirtual 252	java/io/File:listFiles	()[Ljava/io/File;
    //   147: astore 9
    //   149: iconst_0
    //   150: istore 10
    //   152: iload 10
    //   154: aload 9
    //   156: arraylength
    //   157: if_icmpge +87 -> 244
    //   160: aload 9
    //   162: iload 10
    //   164: aaload
    //   165: astore 13
    //   167: aload 13
    //   169: invokevirtual 267	java/io/File:length	()J
    //   172: lstore 15
    //   174: lload 15
    //   176: ldc2_w 268
    //   179: lcmp
    //   180: ifge +27 -> 207
    //   183: iinc 10 1
    //   186: goto -34 -> 152
    //   189: invokestatic 234	com/alipay/android/app/sys/GlobalContext:a	()Lcom/alipay/android/app/sys/GlobalContext;
    //   192: invokevirtual 236	com/alipay/android/app/sys/GlobalContext:b	()Landroid/content/Context;
    //   195: invokevirtual 272	android/content/Context:getFilesDir	()Ljava/io/File;
    //   198: invokevirtual 35	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   201: astore_2
    //   202: aload_2
    //   203: astore_3
    //   204: goto -166 -> 38
    //   207: aload_0
    //   208: aload 13
    //   210: invokespecial 274	com/alipay/android/app/monitor/g:b	(Ljava/io/File;)Z
    //   213: ifeq +11 -> 224
    //   216: aload 13
    //   218: invokestatic 276	com/alipay/android/app/monitor/g:a	(Ljava/io/File;)V
    //   221: goto -38 -> 183
    //   224: aload 4
    //   226: invokevirtual 267	java/io/File:length	()J
    //   229: ldc2_w 277
    //   232: lcmp
    //   233: ifle -50 -> 183
    //   236: aload 13
    //   238: invokestatic 276	com/alipay/android/app/monitor/g:a	(Ljava/io/File;)V
    //   241: goto -58 -> 183
    //   244: aload 7
    //   246: invokevirtual 252	java/io/File:listFiles	()[Ljava/io/File;
    //   249: astore 11
    //   251: aload 11
    //   253: ifnull +9 -> 262
    //   256: aload 11
    //   258: arraylength
    //   259: ifne +8 -> 267
    //   262: aload 7
    //   264: invokestatic 276	com/alipay/android/app/monitor/g:a	(Ljava/io/File;)V
    //   267: aload_0
    //   268: getfield 221	com/alipay/android/app/monitor/g:a	Z
    //   271: ifeq +20 -> 291
    //   274: invokestatic 223	com/alipay/android/app/monitor/g:b	()Z
    //   277: ifeq +14 -> 291
    //   280: aload_0
    //   281: invokevirtual 226	com/alipay/android/app/monitor/g:c	()Z
    //   284: istore 12
    //   286: iload 12
    //   288: ifeq -270 -> 18
    //   291: iinc 6 1
    //   294: goto -187 -> 107
    //   297: astore_1
    //   298: aload_1
    //   299: invokevirtual 281	java/lang/Exception:printStackTrace	()V
    //   302: return
    //   303: astore 14
    //   305: goto -122 -> 183
    //
    // Exception table:
    //   from	to	target	type
    //   19	38	297	java/lang/Exception
    //   38	104	297	java/lang/Exception
    //   107	149	297	java/lang/Exception
    //   152	167	297	java/lang/Exception
    //   189	202	297	java/lang/Exception
    //   244	251	297	java/lang/Exception
    //   256	262	297	java/lang/Exception
    //   262	267	297	java/lang/Exception
    //   267	286	297	java/lang/Exception
    //   167	174	303	java/lang/Exception
    //   207	221	303	java/lang/Exception
    //   224	241	303	java/lang/Exception
  }

  protected final boolean g()
  {
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.monitor.g
 * JD-Core Version:    0.6.2
 */