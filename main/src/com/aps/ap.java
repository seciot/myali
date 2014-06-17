package com.aps;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Environment;
import android.os.Process;
import java.io.File;

public final class ap
{
  private Context a = null;
  private boolean b = true;
  private int c = 1270;
  private int d = 310;
  private int e = 4;
  private int f = 200;
  private int g = 1;
  private int h = 0;
  private int i = 0;
  private long j = 0L;
  private ao k = null;

  private ap(Context paramContext)
  {
    this.a = paramContext;
  }

  private static int a(byte[] paramArrayOfByte, int paramInt)
  {
    int m = 0;
    int n = 0;
    while (m < 4)
    {
      n += ((0xFF & paramArrayOfByte[(m + paramInt)]) << (m << 3));
      m++;
    }
    return n;
  }

  private static long a(byte[] paramArrayOfByte)
  {
    int m = 0;
    int n = 0;
    while (m < 8)
    {
      n += ((0xFF & paramArrayOfByte[(m + 14)]) << (m << 3));
      m++;
    }
    return n;
  }

  // ERROR //
  protected static ap a(Context paramContext)
  {
    // Byte code:
    //   0: new 2	com/aps/ap
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 54	com/aps/ap:<init>	(Landroid/content/Context;)V
    //   8: astore_1
    //   9: aload_1
    //   10: iconst_0
    //   11: putfield 41	com/aps/ap:h	I
    //   14: aload_1
    //   15: iconst_0
    //   16: putfield 43	com/aps/ap:i	I
    //   19: aload_1
    //   20: ldc2_w 55
    //   23: ldc2_w 57
    //   26: invokestatic 64	java/lang/System:currentTimeMillis	()J
    //   29: ladd
    //   30: ldc2_w 55
    //   33: ldiv
    //   34: lmul
    //   35: putfield 45	com/aps/ap:j	J
    //   38: aconst_null
    //   39: astore_2
    //   40: new 66	java/io/FileInputStream
    //   43: dup
    //   44: new 68	java/io/File
    //   47: dup
    //   48: new 70	java/lang/StringBuilder
    //   51: dup
    //   52: invokespecial 71	java/lang/StringBuilder:<init>	()V
    //   55: aload_0
    //   56: invokestatic 74	com/aps/ap:b	(Landroid/content/Context;)Ljava/lang/String;
    //   59: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: getstatic 82	java/io/File:separator	Ljava/lang/String;
    //   65: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: ldc 84
    //   70: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokespecial 91	java/io/File:<init>	(Ljava/lang/String;)V
    //   79: invokespecial 94	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   82: astore_3
    //   83: new 96	java/io/ByteArrayOutputStream
    //   86: dup
    //   87: invokespecial 97	java/io/ByteArrayOutputStream:<init>	()V
    //   90: astore 4
    //   92: bipush 32
    //   94: newarray byte
    //   96: astore 10
    //   98: aload_3
    //   99: aload 10
    //   101: invokevirtual 101	java/io/FileInputStream:read	([B)I
    //   104: istore 11
    //   106: iload 11
    //   108: iconst_m1
    //   109: if_icmpeq +28 -> 137
    //   112: aload 4
    //   114: aload 10
    //   116: iconst_0
    //   117: iload 11
    //   119: invokevirtual 105	java/io/ByteArrayOutputStream:write	([BII)V
    //   122: goto -24 -> 98
    //   125: astore 8
    //   127: aload_3
    //   128: ifnull +7 -> 135
    //   131: aload_3
    //   132: invokevirtual 108	java/io/FileInputStream:close	()V
    //   135: aload_1
    //   136: areturn
    //   137: aload 4
    //   139: invokevirtual 111	java/io/ByteArrayOutputStream:flush	()V
    //   142: aload 4
    //   144: invokevirtual 115	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   147: astore 12
    //   149: aload 12
    //   151: ifnull +131 -> 282
    //   154: aload 12
    //   156: arraylength
    //   157: bipush 22
    //   159: if_icmplt +123 -> 282
    //   162: aload 12
    //   164: iconst_0
    //   165: baload
    //   166: ifeq +131 -> 297
    //   169: iconst_1
    //   170: istore 14
    //   172: aload_1
    //   173: iload 14
    //   175: putfield 29	com/aps/ap:b	Z
    //   178: aload_1
    //   179: bipush 10
    //   181: aload 12
    //   183: iconst_1
    //   184: baload
    //   185: imul
    //   186: bipush 10
    //   188: ishl
    //   189: putfield 31	com/aps/ap:c	I
    //   192: aload_1
    //   193: bipush 10
    //   195: aload 12
    //   197: iconst_2
    //   198: baload
    //   199: imul
    //   200: bipush 10
    //   202: ishl
    //   203: putfield 33	com/aps/ap:d	I
    //   206: aload_1
    //   207: aload 12
    //   209: iconst_3
    //   210: baload
    //   211: putfield 35	com/aps/ap:e	I
    //   214: aload_1
    //   215: bipush 10
    //   217: aload 12
    //   219: iconst_4
    //   220: baload
    //   221: imul
    //   222: putfield 37	com/aps/ap:f	I
    //   225: aload_1
    //   226: aload 12
    //   228: iconst_5
    //   229: baload
    //   230: putfield 39	com/aps/ap:g	I
    //   233: aload 12
    //   235: invokestatic 117	com/aps/ap:a	([B)J
    //   238: lstore 15
    //   240: aload_1
    //   241: getfield 45	com/aps/ap:j	J
    //   244: lload 15
    //   246: lsub
    //   247: ldc2_w 55
    //   250: lcmp
    //   251: ifge +31 -> 282
    //   254: aload_1
    //   255: lload 15
    //   257: putfield 45	com/aps/ap:j	J
    //   260: aload_1
    //   261: aload 12
    //   263: bipush 6
    //   265: invokestatic 119	com/aps/ap:a	([BI)I
    //   268: putfield 41	com/aps/ap:h	I
    //   271: aload_1
    //   272: aload 12
    //   274: bipush 10
    //   276: invokestatic 119	com/aps/ap:a	([BI)I
    //   279: putfield 43	com/aps/ap:i	I
    //   282: aload 4
    //   284: invokevirtual 120	java/io/ByteArrayOutputStream:close	()V
    //   287: aload_3
    //   288: invokevirtual 108	java/io/FileInputStream:close	()V
    //   291: aload_1
    //   292: areturn
    //   293: astore 13
    //   295: aload_1
    //   296: areturn
    //   297: iconst_0
    //   298: istore 14
    //   300: goto -128 -> 172
    //   303: astore 6
    //   305: aload_2
    //   306: ifnull +7 -> 313
    //   309: aload_2
    //   310: invokevirtual 108	java/io/FileInputStream:close	()V
    //   313: aload 6
    //   315: athrow
    //   316: astore 9
    //   318: aload_1
    //   319: areturn
    //   320: astore 7
    //   322: goto -9 -> 313
    //   325: astore 5
    //   327: aload_3
    //   328: astore_2
    //   329: aload 5
    //   331: astore 6
    //   333: goto -28 -> 305
    //   336: astore 17
    //   338: aconst_null
    //   339: astore_3
    //   340: goto -213 -> 127
    //
    // Exception table:
    //   from	to	target	type
    //   83	98	125	java/lang/Exception
    //   98	106	125	java/lang/Exception
    //   112	122	125	java/lang/Exception
    //   137	149	125	java/lang/Exception
    //   154	169	125	java/lang/Exception
    //   172	282	125	java/lang/Exception
    //   282	287	125	java/lang/Exception
    //   287	291	293	java/lang/Exception
    //   40	83	303	finally
    //   131	135	316	java/lang/Exception
    //   309	313	320	java/lang/Exception
    //   83	98	325	finally
    //   98	106	325	finally
    //   112	122	325	finally
    //   137	149	325	finally
    //   154	169	325	finally
    //   172	282	325	finally
    //   282	287	325	finally
    //   40	83	336	java/lang/Exception
  }

  private static byte[] a(long paramLong)
  {
    byte[] arrayOfByte = new byte[8];
    for (int m = 0; m < 8; m++)
      arrayOfByte[m] = ((byte)(int)(0xFF & paramLong >> (m << 3)));
    return arrayOfByte;
  }

  private static String b(Context paramContext)
  {
    int m = Process.myUid();
    File localFile = null;
    if (m != 1000)
      localFile = z.a(paramContext);
    if ((("mounted".equals(Environment.getExternalStorageState())) || (!z.c())) && (localFile != null))
      return localFile.getPath();
    return paramContext.getFilesDir().getPath();
  }

  private static byte[] c(int paramInt)
  {
    byte[] arrayOfByte = new byte[4];
    for (int m = 0; m < 4; m++)
      arrayOfByte[m] = ((byte)(paramInt >> (m << 3)));
    return arrayOfByte;
  }

  private void g()
  {
    long l = 28800000L + System.currentTimeMillis();
    if (l - this.j > 86400000L)
    {
      this.j = (86400000L * (l / 86400000L));
      this.h = 0;
      this.i = 0;
    }
  }

  protected final void a(int paramInt)
  {
    g();
    if (paramInt < 0)
      paramInt = 0;
    this.h = paramInt;
  }

  protected final void a(ao paramao)
  {
    this.k = paramao;
  }

  protected final boolean a()
  {
    g();
    NetworkInfo localNetworkInfo = ((ConnectivityManager)this.a.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo != null) && (localNetworkInfo.isConnected()))
    {
      if (localNetworkInfo.getType() == 1)
        return (this.b) && (this.h < this.c);
      return (this.b) && (this.i < this.d);
    }
    return this.b;
  }

  // ERROR //
  protected final boolean a(String paramString)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: new 187	org/json/JSONObject
    //   5: dup
    //   6: aload_1
    //   7: invokespecial 188	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   10: astore_3
    //   11: aload_3
    //   12: ldc 189
    //   14: invokevirtual 192	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   17: ifeq +21 -> 38
    //   20: aload_3
    //   21: ldc 189
    //   23: invokevirtual 196	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   26: ifeq +455 -> 481
    //   29: iload_2
    //   30: istore 20
    //   32: aload_0
    //   33: iload 20
    //   35: putfield 29	com/aps/ap:b	Z
    //   38: aload_3
    //   39: ldc 197
    //   41: invokevirtual 192	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   44: ifeq +98 -> 142
    //   47: aload_3
    //   48: ldc 197
    //   50: invokevirtual 196	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   53: istore 19
    //   55: aload_0
    //   56: bipush 10
    //   58: iload 19
    //   60: bipush 127
    //   62: iand
    //   63: imul
    //   64: bipush 10
    //   66: ishl
    //   67: putfield 31	com/aps/ap:c	I
    //   70: aload_0
    //   71: bipush 10
    //   73: iload 19
    //   75: sipush 3968
    //   78: iand
    //   79: bipush 7
    //   81: ishr
    //   82: imul
    //   83: bipush 10
    //   85: ishl
    //   86: putfield 33	com/aps/ap:d	I
    //   89: aload_0
    //   90: ldc 198
    //   92: iload 19
    //   94: iand
    //   95: bipush 12
    //   97: ishr
    //   98: putfield 35	com/aps/ap:e	I
    //   101: aload_0
    //   102: bipush 10
    //   104: ldc 199
    //   106: iload 19
    //   108: iand
    //   109: bipush 19
    //   111: ishr
    //   112: imul
    //   113: putfield 37	com/aps/ap:f	I
    //   116: aload_0
    //   117: iload 19
    //   119: ldc 200
    //   121: iand
    //   122: bipush 26
    //   124: ishr
    //   125: putfield 39	com/aps/ap:g	I
    //   128: aload_0
    //   129: getfield 47	com/aps/ap:k	Lcom/aps/ao;
    //   132: ifnull +10 -> 142
    //   135: aload_0
    //   136: getfield 47	com/aps/ap:k	Lcom/aps/ao;
    //   139: invokevirtual 204	com/aps/ao:a	()V
    //   142: aload_3
    //   143: ldc 206
    //   145: invokevirtual 192	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   148: ifeq +347 -> 495
    //   151: aload_3
    //   152: ldc 206
    //   154: invokevirtual 196	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   157: istore 18
    //   159: iload 18
    //   161: ifeq +326 -> 487
    //   164: iload_2
    //   165: istore 5
    //   167: aload_0
    //   168: invokespecial 163	com/aps/ap:g	()V
    //   171: new 208	java/io/FileOutputStream
    //   174: dup
    //   175: new 68	java/io/File
    //   178: dup
    //   179: new 70	java/lang/StringBuilder
    //   182: dup
    //   183: invokespecial 71	java/lang/StringBuilder:<init>	()V
    //   186: aload_0
    //   187: getfield 27	com/aps/ap:a	Landroid/content/Context;
    //   190: invokestatic 74	com/aps/ap:b	(Landroid/content/Context;)Ljava/lang/String;
    //   193: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: getstatic 82	java/io/File:separator	Ljava/lang/String;
    //   199: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: ldc 84
    //   204: invokevirtual 78	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: invokevirtual 88	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   210: invokespecial 91	java/io/File:<init>	(Ljava/lang/String;)V
    //   213: invokespecial 209	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   216: astore 7
    //   218: aload_0
    //   219: getfield 41	com/aps/ap:h	I
    //   222: invokestatic 211	com/aps/ap:c	(I)[B
    //   225: astore 13
    //   227: aload_0
    //   228: getfield 43	com/aps/ap:i	I
    //   231: invokestatic 211	com/aps/ap:c	(I)[B
    //   234: astore 14
    //   236: aload_0
    //   237: getfield 45	com/aps/ap:j	J
    //   240: invokestatic 213	com/aps/ap:a	(J)[B
    //   243: astore 15
    //   245: bipush 22
    //   247: newarray byte
    //   249: astore 16
    //   251: aload_0
    //   252: getfield 29	com/aps/ap:b	Z
    //   255: ifeq +246 -> 501
    //   258: aload 16
    //   260: iconst_0
    //   261: iload_2
    //   262: i2b
    //   263: bastore
    //   264: aload 16
    //   266: iconst_1
    //   267: aload_0
    //   268: getfield 31	com/aps/ap:c	I
    //   271: sipush 10240
    //   274: idiv
    //   275: i2b
    //   276: bastore
    //   277: aload 16
    //   279: iconst_2
    //   280: aload_0
    //   281: getfield 33	com/aps/ap:d	I
    //   284: sipush 10240
    //   287: idiv
    //   288: i2b
    //   289: bastore
    //   290: aload 16
    //   292: iconst_3
    //   293: aload_0
    //   294: getfield 35	com/aps/ap:e	I
    //   297: i2b
    //   298: bastore
    //   299: aload 16
    //   301: iconst_4
    //   302: aload_0
    //   303: getfield 37	com/aps/ap:f	I
    //   306: bipush 10
    //   308: idiv
    //   309: i2b
    //   310: bastore
    //   311: aload 16
    //   313: iconst_5
    //   314: aload_0
    //   315: getfield 39	com/aps/ap:g	I
    //   318: i2b
    //   319: bastore
    //   320: aload 16
    //   322: bipush 6
    //   324: aload 13
    //   326: iconst_0
    //   327: baload
    //   328: bastore
    //   329: aload 16
    //   331: bipush 7
    //   333: aload 13
    //   335: iconst_1
    //   336: baload
    //   337: bastore
    //   338: aload 16
    //   340: bipush 8
    //   342: aload 13
    //   344: iconst_2
    //   345: baload
    //   346: bastore
    //   347: aload 16
    //   349: bipush 9
    //   351: aload 13
    //   353: iconst_3
    //   354: baload
    //   355: bastore
    //   356: aload 16
    //   358: bipush 10
    //   360: aload 14
    //   362: iconst_0
    //   363: baload
    //   364: bastore
    //   365: aload 16
    //   367: bipush 11
    //   369: aload 14
    //   371: iconst_1
    //   372: baload
    //   373: bastore
    //   374: aload 16
    //   376: bipush 12
    //   378: aload 14
    //   380: iconst_2
    //   381: baload
    //   382: bastore
    //   383: aload 16
    //   385: bipush 13
    //   387: aload 14
    //   389: iconst_3
    //   390: baload
    //   391: bastore
    //   392: aload 16
    //   394: bipush 14
    //   396: aload 15
    //   398: iconst_0
    //   399: baload
    //   400: bastore
    //   401: aload 16
    //   403: bipush 15
    //   405: aload 15
    //   407: iconst_1
    //   408: baload
    //   409: bastore
    //   410: aload 16
    //   412: bipush 16
    //   414: aload 15
    //   416: iconst_2
    //   417: baload
    //   418: bastore
    //   419: aload 16
    //   421: bipush 17
    //   423: aload 15
    //   425: iconst_3
    //   426: baload
    //   427: bastore
    //   428: aload 16
    //   430: bipush 18
    //   432: aload 15
    //   434: iconst_4
    //   435: baload
    //   436: bastore
    //   437: aload 16
    //   439: bipush 19
    //   441: aload 15
    //   443: iconst_5
    //   444: baload
    //   445: bastore
    //   446: aload 16
    //   448: bipush 20
    //   450: aload 15
    //   452: bipush 6
    //   454: baload
    //   455: bastore
    //   456: aload 16
    //   458: bipush 21
    //   460: aload 15
    //   462: bipush 7
    //   464: baload
    //   465: bastore
    //   466: aload 7
    //   468: aload 16
    //   470: invokevirtual 216	java/io/FileOutputStream:write	([B)V
    //   473: aload 7
    //   475: invokevirtual 217	java/io/FileOutputStream:close	()V
    //   478: iload 5
    //   480: ireturn
    //   481: iconst_0
    //   482: istore 20
    //   484: goto -452 -> 32
    //   487: iconst_0
    //   488: istore 5
    //   490: goto -323 -> 167
    //   493: astore 4
    //   495: iconst_0
    //   496: istore 5
    //   498: goto -331 -> 167
    //   501: iconst_0
    //   502: istore_2
    //   503: goto -245 -> 258
    //   506: astore 9
    //   508: aconst_null
    //   509: astore 10
    //   511: aload 10
    //   513: ifnull -35 -> 478
    //   516: aload 10
    //   518: invokevirtual 217	java/io/FileOutputStream:close	()V
    //   521: iload 5
    //   523: ireturn
    //   524: astore 11
    //   526: iload 5
    //   528: ireturn
    //   529: astore 6
    //   531: aconst_null
    //   532: astore 7
    //   534: aload 7
    //   536: ifnull +8 -> 544
    //   539: aload 7
    //   541: invokevirtual 217	java/io/FileOutputStream:close	()V
    //   544: aload 6
    //   546: athrow
    //   547: astore 17
    //   549: iload 5
    //   551: ireturn
    //   552: astore 8
    //   554: goto -10 -> 544
    //   557: astore 6
    //   559: goto -25 -> 534
    //   562: astore 12
    //   564: aload 7
    //   566: astore 10
    //   568: goto -57 -> 511
    //
    // Exception table:
    //   from	to	target	type
    //   2	29	493	java/lang/Exception
    //   32	38	493	java/lang/Exception
    //   38	142	493	java/lang/Exception
    //   142	159	493	java/lang/Exception
    //   167	218	506	java/lang/Exception
    //   516	521	524	java/lang/Exception
    //   167	218	529	finally
    //   473	478	547	java/lang/Exception
    //   539	544	552	java/lang/Exception
    //   218	258	557	finally
    //   258	473	557	finally
    //   218	258	562	java/lang/Exception
    //   258	473	562	java/lang/Exception
  }

  protected final int b()
  {
    return this.e;
  }

  protected final void b(int paramInt)
  {
    g();
    if (paramInt < 0)
      paramInt = 0;
    this.i = paramInt;
  }

  protected final int c()
  {
    return this.f;
  }

  protected final int d()
  {
    return this.g;
  }

  protected final int e()
  {
    g();
    return this.h;
  }

  protected final int f()
  {
    g();
    return this.i;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.ap
 * JD-Core Version:    0.6.2
 */