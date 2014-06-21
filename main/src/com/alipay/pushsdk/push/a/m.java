package com.alipay.pushsdk.push.a;

import com.alipay.pushsdk.c.a.d;
import com.alipay.pushsdk.push.c.b;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;
import java.util.Timer;

public class m extends AppBundle
{
  private static final String m = com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.getBundle(m.class);
  protected Socket i;
  String j = null;
  j k;
  f l;
  private String n = null;
  private boolean o = false;
  private int p = BundlesManager.AppBundle;
  private int q = 0;
  private Timer r = null;
  private int s = -1;
  private long t = System.currentTimeMillis();
  private Object u = new Object();

  public m(BundlesManagerImpl paramc)
  {
    super(paramc);
  }

  public final void setBundlePath(int paramInt)
  {
    this.p = paramInt;
  }

  protected final void a(long paramLong, int paramInt)
  {
    if (this.r != null)
      g();
    this.s = paramInt;
    this.t = paramLong;
    o.getBundle(this.t);
    synchronized (this.u)
    {
      this.r = new Timer(true);
      this.r.schedule(new n(this), o.stop());
      return;
    }
  }

  // ERROR //
  public final void setBundlePath(com.alipay.pushsdk.push.BundlesManager.AppBundle parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 115	com/alipay/pushsdk/push/a/m:h	Lcom/alipay/pushsdk/push/a/c;
    //   4: astore_3
    //   5: aload_3
    //   6: invokevirtual 121	com/alipay/pushsdk/push/a/c:d	()Lcom/alipay/pushsdk/push/a/d;
    //   9: astore 4
    //   11: getstatic 126	com/alipay/pushsdk/push/a/d:a	Lcom/alipay/pushsdk/push/a/d;
    //   14: aload 4
    //   16: if_acmpne +361 -> 377
    //   19: iconst_1
    //   20: istore 5
    //   22: aload_3
    //   23: invokevirtual 128	com/alipay/pushsdk/push/a/c:a	()Ljava/lang/String;
    //   26: astore 6
    //   28: aload_3
    //   29: invokevirtual 129	com/alipay/pushsdk/push/a/c:b	()I
    //   32: istore 7
    //   34: iconst_3
    //   35: getstatic 36	com/alipay/pushsdk/push/a/m:m	Ljava/lang/String;
    //   38: new 131	java/lang/StringBuilder
    //   41: dup
    //   42: ldc 133
    //   44: invokespecial 136	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: aload 6
    //   49: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: ldc 142
    //   54: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: iload 7
    //   59: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   62: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   65: invokestatic 151	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   68: aload_3
    //   69: invokevirtual 155	com/alipay/pushsdk/push/a/c:c	()Lcom/alipay/pushsdk/push/a/a/c;
    //   72: astore 8
    //   74: getstatic 160	com/alipay/pushsdk/c/a/d:v	Ljava/lang/String;
    //   77: getstatic 163	com/alipay/pushsdk/c/a/d:w	Ljava/lang/String;
    //   80: invokestatic 64	java/lang/System:currentTimeMillis	()J
    //   83: getstatic 166	com/alipay/pushsdk/c/a/d:x	Ljava/lang/String;
    //   86: ldc2_w 167
    //   89: invokestatic 64	java/lang/System:currentTimeMillis	()J
    //   92: ladd
    //   93: new 131	java/lang/StringBuilder
    //   96: dup
    //   97: ldc 133
    //   99: invokespecial 136	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   102: aload 6
    //   104: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: ldc 142
    //   109: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   112: iload 7
    //   114: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   117: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   120: invokestatic 171	com/alipay/pushsdk/c/a/d:a	(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLjava/lang/String;)V
    //   123: aload_3
    //   124: invokevirtual 174	com/alipay/pushsdk/push/a/c:g	()Ljavax/net/SocketFactory;
    //   127: ifnonnull +256 -> 383
    //   130: aload_0
    //   131: new 176	java/net/Socket
    //   134: dup
    //   135: aload 6
    //   137: iload 7
    //   139: invokespecial 179	java/net/Socket:<init>	(Ljava/lang/String;I)V
    //   142: putfield 181	com/alipay/pushsdk/push/a/m:i	Ljava/net/Socket;
    //   145: aload_0
    //   146: getfield 181	com/alipay/pushsdk/push/a/m:i	Ljava/net/Socket;
    //   149: ifnull +630 -> 779
    //   152: iconst_4
    //   153: getstatic 36	com/alipay/pushsdk/push/a/m:m	Ljava/lang/String;
    //   156: ldc 183
    //   158: invokestatic 151	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   161: iconst_0
    //   162: istore 11
    //   164: iload 11
    //   166: bipush 20
    //   168: if_icmpge +23 -> 191
    //   171: ldc2_w 184
    //   174: invokestatic 190	java/lang/Thread:sleep	(J)V
    //   177: aload_0
    //   178: getfield 181	com/alipay/pushsdk/push/a/m:i	Ljava/net/Socket;
    //   181: invokevirtual 194	java/net/Socket:isConnected	()Z
    //   184: istore 17
    //   186: iload 17
    //   188: ifeq +622 -> 810
    //   191: aload_0
    //   192: getfield 181	com/alipay/pushsdk/push/a/m:i	Ljava/net/Socket;
    //   195: iconst_1
    //   196: invokevirtual 197	java/net/Socket:setTcpNoDelay	(Z)V
    //   199: aload_0
    //   200: getfield 199	com/alipay/pushsdk/push/a/m:l	Lcom/alipay/pushsdk/push/a/f;
    //   203: ifnull +14 -> 217
    //   206: aload_0
    //   207: getfield 201	com/alipay/pushsdk/push/a/m:k	Lcom/alipay/pushsdk/push/a/j;
    //   210: astore 15
    //   212: aload 15
    //   214: ifnonnull +602 -> 816
    //   217: iconst_1
    //   218: istore 12
    //   220: aload_0
    //   221: new 203	java/io/DataInputStream
    //   224: dup
    //   225: aload_0
    //   226: getfield 181	com/alipay/pushsdk/push/a/m:i	Ljava/net/Socket;
    //   229: invokevirtual 207	java/net/Socket:getInputStream	()Ljava/io/InputStream;
    //   232: invokespecial 210	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   235: putfield 214	com/alipay/pushsdk/push/a/m:e	Ljava/io/DataInputStream;
    //   238: aload_0
    //   239: new 216	java/io/DataOutputStream
    //   242: dup
    //   243: aload_0
    //   244: getfield 181	com/alipay/pushsdk/push/a/m:i	Ljava/net/Socket;
    //   247: invokevirtual 220	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   250: invokespecial 223	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   253: putfield 227	com/alipay/pushsdk/push/a/m:f	Ljava/io/DataOutputStream;
    //   256: iconst_4
    //   257: getstatic 36	com/alipay/pushsdk/push/a/m:m	Ljava/lang/String;
    //   260: ldc 229
    //   262: invokestatic 151	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   265: iload 12
    //   267: ifeq +490 -> 757
    //   270: aload_0
    //   271: new 231	com/alipay/pushsdk/push/a/j
    //   274: dup
    //   275: aload_0
    //   276: invokespecial 232	com/alipay/pushsdk/push/a/j:<init>	(Lcom/alipay/pushsdk/push/a/m;)V
    //   279: putfield 201	com/alipay/pushsdk/push/a/m:k	Lcom/alipay/pushsdk/push/a/j;
    //   282: aload_0
    //   283: new 234	com/alipay/pushsdk/push/a/f
    //   286: dup
    //   287: aload_0
    //   288: invokespecial 235	com/alipay/pushsdk/push/a/f:<init>	(Lcom/alipay/pushsdk/push/a/m;)V
    //   291: putfield 199	com/alipay/pushsdk/push/a/m:l	Lcom/alipay/pushsdk/push/a/f;
    //   294: aload_0
    //   295: getfield 201	com/alipay/pushsdk/push/a/m:k	Lcom/alipay/pushsdk/push/a/j;
    //   298: invokevirtual 237	com/alipay/pushsdk/push/a/j:b	()V
    //   301: aload_0
    //   302: getfield 199	com/alipay/pushsdk/push/a/m:l	Lcom/alipay/pushsdk/push/a/f;
    //   305: invokevirtual 238	com/alipay/pushsdk/push/a/f:b	()V
    //   308: iconst_5
    //   309: getstatic 36	com/alipay/pushsdk/push/a/m:m	Ljava/lang/String;
    //   312: new 131	java/lang/StringBuilder
    //   315: dup
    //   316: ldc 240
    //   318: invokespecial 136	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   321: aload_0
    //   322: getfield 199	com/alipay/pushsdk/push/a/m:l	Lcom/alipay/pushsdk/push/a/f;
    //   325: invokevirtual 243	java/lang/Object:hashCode	()I
    //   328: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   331: ldc 245
    //   333: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   336: aload_0
    //   337: getfield 201	com/alipay/pushsdk/push/a/m:k	Lcom/alipay/pushsdk/push/a/j;
    //   340: invokevirtual 243	java/lang/Object:hashCode	()I
    //   343: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   346: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   349: invokestatic 151	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   352: iconst_3
    //   353: getstatic 36	com/alipay/pushsdk/push/a/m:m	Ljava/lang/String;
    //   356: ldc 247
    //   358: invokestatic 151	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   361: aload_1
    //   362: invokeinterface 251 1 0
    //   367: iconst_3
    //   368: getstatic 36	com/alipay/pushsdk/push/a/m:m	Ljava/lang/String;
    //   371: ldc 253
    //   373: invokestatic 151	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   376: return
    //   377: iconst_0
    //   378: istore 5
    //   380: goto -358 -> 22
    //   383: iload 5
    //   385: ifeq +329 -> 714
    //   388: iconst_3
    //   389: getstatic 36	com/alipay/pushsdk/push/a/m:m	Ljava/lang/String;
    //   392: ldc 255
    //   394: invokestatic 151	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   397: getstatic 260	com/alipay/pushsdk/push/a/a/d:c	Lcom/alipay/pushsdk/push/a/a/d;
    //   400: aload 8
    //   402: invokevirtual 265	com/alipay/pushsdk/push/a/a/c:a	()Lcom/alipay/pushsdk/push/a/a/d;
    //   405: if_acmpne +164 -> 569
    //   408: iconst_4
    //   409: getstatic 36	com/alipay/pushsdk/push/a/m:m	Ljava/lang/String;
    //   412: new 131	java/lang/StringBuilder
    //   415: dup
    //   416: ldc_w 267
    //   419: invokespecial 136	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   422: aload 8
    //   424: invokevirtual 269	com/alipay/pushsdk/push/a/a/c:b	()Ljava/lang/String;
    //   427: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   430: ldc_w 271
    //   433: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: aload 8
    //   438: invokevirtual 273	com/alipay/pushsdk/push/a/a/c:c	()I
    //   441: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   444: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   447: invokestatic 151	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   450: aload_3
    //   451: invokevirtual 174	com/alipay/pushsdk/push/a/c:g	()Ljavax/net/SocketFactory;
    //   454: aload 6
    //   456: iload 7
    //   458: invokevirtual 279	javax/net/SocketFactory:createSocket	(Ljava/lang/String;I)Ljava/net/Socket;
    //   461: astore 20
    //   463: invokestatic 284	javax/net/ssl/SSLSocketFactory:getDefault	()Ljavax/net/SocketFactory;
    //   466: checkcast 281	javax/net/ssl/SSLSocketFactory
    //   469: aload 20
    //   471: aload 8
    //   473: invokevirtual 269	com/alipay/pushsdk/push/a/a/c:b	()Ljava/lang/String;
    //   476: aload 8
    //   478: invokevirtual 273	com/alipay/pushsdk/push/a/a/c:c	()I
    //   481: iconst_1
    //   482: invokevirtual 287	javax/net/ssl/SSLSocketFactory:createSocket	(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    //   485: checkcast 289	javax/net/ssl/SSLSocket
    //   488: astore 21
    //   490: aload 21
    //   492: iconst_1
    //   493: invokevirtual 292	javax/net/ssl/SSLSocket:setUseClientMode	(Z)V
    //   496: aload 21
    //   498: invokevirtual 295	javax/net/ssl/SSLSocket:startHandshake	()V
    //   501: aload_0
    //   502: aload 21
    //   504: putfield 181	com/alipay/pushsdk/push/a/m:i	Ljava/net/Socket;
    //   507: goto -362 -> 145
    //   510: astore 10
    //   512: new 106	com/alipay/pushsdk/push/a/p
    //   515: dup
    //   516: new 131	java/lang/StringBuilder
    //   519: dup
    //   520: ldc_w 297
    //   523: invokespecial 136	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   526: aload 6
    //   528: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   531: ldc_w 299
    //   534: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   537: iload 7
    //   539: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   542: ldc_w 301
    //   545: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   548: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   551: aload 10
    //   553: invokespecial 304	com/alipay/pushsdk/push/a/p:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   556: athrow
    //   557: astore_2
    //   558: aload_1
    //   559: invokeinterface 305 1 0
    //   564: aload_2
    //   565: invokevirtual 308	com/alipay/pushsdk/push/a/p:printStackTrace	()V
    //   568: return
    //   569: invokestatic 311	android/net/SSLCertificateSocketFactory:getDefault	()Ljavax/net/SocketFactory;
    //   572: aload 6
    //   574: iload 7
    //   576: invokevirtual 279	javax/net/SocketFactory:createSocket	(Ljava/lang/String;I)Ljava/net/Socket;
    //   579: checkcast 289	javax/net/ssl/SSLSocket
    //   582: astore 18
    //   584: aload 18
    //   586: invokevirtual 315	javax/net/ssl/SSLSocket:getSession	()Ljavax/net/ssl/SSLSession;
    //   589: astore 19
    //   591: invokestatic 321	javax/net/ssl/HttpsURLConnection:getDefaultHostnameVerifier	()Ljavax/net/ssl/HostnameVerifier;
    //   594: ldc_w 323
    //   597: aload 19
    //   599: invokeinterface 329 3 0
    //   604: ifne +101 -> 705
    //   607: iconst_2
    //   608: getstatic 36	com/alipay/pushsdk/push/a/m:m	Ljava/lang/String;
    //   611: ldc_w 331
    //   614: invokestatic 151	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   617: new 106	com/alipay/pushsdk/push/a/p
    //   620: dup
    //   621: new 131	java/lang/StringBuilder
    //   624: dup
    //   625: ldc_w 333
    //   628: invokespecial 136	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   631: aload 19
    //   633: invokeinterface 339 1 0
    //   638: invokevirtual 342	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   641: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   644: new 110	java/lang/Exception
    //   647: dup
    //   648: ldc_w 344
    //   651: invokespecial 345	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   654: invokespecial 304	com/alipay/pushsdk/push/a/p:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   657: athrow
    //   658: astore 9
    //   660: new 106	com/alipay/pushsdk/push/a/p
    //   663: dup
    //   664: new 131	java/lang/StringBuilder
    //   667: dup
    //   668: ldc_w 347
    //   671: invokespecial 136	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   674: aload 6
    //   676: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   679: ldc_w 299
    //   682: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   685: iload 7
    //   687: invokevirtual 145	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   690: ldc_w 301
    //   693: invokevirtual 140	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   696: invokevirtual 148	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   699: aload 9
    //   701: invokespecial 304	com/alipay/pushsdk/push/a/p:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   704: athrow
    //   705: aload_0
    //   706: aload 18
    //   708: putfield 181	com/alipay/pushsdk/push/a/m:i	Ljava/net/Socket;
    //   711: goto -566 -> 145
    //   714: aload_0
    //   715: aload_3
    //   716: invokevirtual 174	com/alipay/pushsdk/push/a/c:g	()Ljavax/net/SocketFactory;
    //   719: aload 6
    //   721: iload 7
    //   723: invokevirtual 279	javax/net/SocketFactory:createSocket	(Ljava/lang/String;I)Ljava/net/Socket;
    //   726: putfield 181	com/alipay/pushsdk/push/a/m:i	Ljava/net/Socket;
    //   729: goto -584 -> 145
    //   732: astore 16
    //   734: aload 16
    //   736: invokevirtual 348	java/lang/Exception:printStackTrace	()V
    //   739: goto +71 -> 810
    //   742: astore 13
    //   744: new 106	com/alipay/pushsdk/push/a/p
    //   747: dup
    //   748: ldc_w 350
    //   751: aload 13
    //   753: invokespecial 304	com/alipay/pushsdk/push/a/p:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   756: athrow
    //   757: aload_0
    //   758: getfield 201	com/alipay/pushsdk/push/a/m:k	Lcom/alipay/pushsdk/push/a/j;
    //   761: invokevirtual 351	com/alipay/pushsdk/push/a/j:a	()V
    //   764: aload_0
    //   765: getfield 199	com/alipay/pushsdk/push/a/m:l	Lcom/alipay/pushsdk/push/a/f;
    //   768: invokevirtual 352	com/alipay/pushsdk/push/a/f:a	()V
    //   771: goto -477 -> 294
    //   774: astore 14
    //   776: aload 14
    //   778: athrow
    //   779: iconst_2
    //   780: getstatic 36	com/alipay/pushsdk/push/a/m:m	Ljava/lang/String;
    //   783: ldc_w 354
    //   786: invokestatic 151	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   789: new 106	com/alipay/pushsdk/push/a/p
    //   792: dup
    //   793: ldc_w 356
    //   796: new 110	java/lang/Exception
    //   799: dup
    //   800: ldc_w 358
    //   803: invokespecial 345	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   806: invokespecial 304	com/alipay/pushsdk/push/a/p:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   809: athrow
    //   810: iinc 11 1
    //   813: goto -649 -> 164
    //   816: iconst_0
    //   817: istore 12
    //   819: goto -599 -> 220
    //
    // Exception table:
    //   from	to	target	type
    //   123	145	510	java/net/UnknownHostException
    //   145	161	510	java/net/UnknownHostException
    //   171	186	510	java/net/UnknownHostException
    //   191	212	510	java/net/UnknownHostException
    //   220	256	510	java/net/UnknownHostException
    //   256	265	510	java/net/UnknownHostException
    //   270	294	510	java/net/UnknownHostException
    //   294	367	510	java/net/UnknownHostException
    //   388	507	510	java/net/UnknownHostException
    //   569	658	510	java/net/UnknownHostException
    //   705	711	510	java/net/UnknownHostException
    //   714	729	510	java/net/UnknownHostException
    //   734	739	510	java/net/UnknownHostException
    //   744	757	510	java/net/UnknownHostException
    //   757	771	510	java/net/UnknownHostException
    //   776	779	510	java/net/UnknownHostException
    //   779	810	510	java/net/UnknownHostException
    //   0	19	557	com/alipay/pushsdk/push/a/p
    //   22	123	557	com/alipay/pushsdk/push/a/p
    //   123	145	557	com/alipay/pushsdk/push/a/p
    //   145	161	557	com/alipay/pushsdk/push/a/p
    //   171	186	557	com/alipay/pushsdk/push/a/p
    //   191	212	557	com/alipay/pushsdk/push/a/p
    //   220	256	557	com/alipay/pushsdk/push/a/p
    //   256	265	557	com/alipay/pushsdk/push/a/p
    //   367	376	557	com/alipay/pushsdk/push/a/p
    //   388	507	557	com/alipay/pushsdk/push/a/p
    //   512	557	557	com/alipay/pushsdk/push/a/p
    //   569	658	557	com/alipay/pushsdk/push/a/p
    //   660	705	557	com/alipay/pushsdk/push/a/p
    //   705	711	557	com/alipay/pushsdk/push/a/p
    //   714	729	557	com/alipay/pushsdk/push/a/p
    //   734	739	557	com/alipay/pushsdk/push/a/p
    //   744	757	557	com/alipay/pushsdk/push/a/p
    //   776	779	557	com/alipay/pushsdk/push/a/p
    //   779	810	557	com/alipay/pushsdk/push/a/p
    //   123	145	658	java/lang/Exception
    //   145	161	658	java/lang/Exception
    //   191	212	658	java/lang/Exception
    //   220	256	658	java/lang/Exception
    //   256	265	658	java/lang/Exception
    //   270	294	658	java/lang/Exception
    //   294	367	658	java/lang/Exception
    //   388	507	658	java/lang/Exception
    //   569	658	658	java/lang/Exception
    //   705	711	658	java/lang/Exception
    //   714	729	658	java/lang/Exception
    //   734	739	658	java/lang/Exception
    //   744	757	658	java/lang/Exception
    //   757	771	658	java/lang/Exception
    //   776	779	658	java/lang/Exception
    //   779	810	658	java/lang/Exception
    //   171	186	732	java/lang/Exception
    //   220	256	742	java/io/IOException
    //   270	294	774	com/alipay/pushsdk/push/a/p
    //   294	367	774	com/alipay/pushsdk/push/a/p
    //   757	771	774	com/alipay/pushsdk/push/a/p
  }

  public final void setBundlePath(com.alipay.pushsdk.push.BundlesManagerImpl.AppBundle parama)
  {
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(4, m, "sendPacket()... isConnected=" + a());
    try
    {
      if (!a())
        throw new IllegalStateException("Have not connected to server.");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    if (parama == null)
      throw new NullPointerException("Packet is null.");
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(5, m, "sendPacket()... writer=" + this.f.hashCode() + ", reader=" + this.e.hashCode());
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(3, m, "sendPacket()... packet.id=" + parama.a());
    this.k.getBundle(parama);
  }

  public final boolean a()
  {
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(4, m, "isConnected()...called=" + this.o + ", connection=" + hashCode());
    return this.o;
  }

  public final void b(int paramInt)
  {
    this.q = paramInt;
  }

  public final void getBundleName()
  {
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(4, m, "setConnected()...isConnected=true");
    this.o = true;
  }

  public final int getInitLevel()
  {
    return this.p;
  }

  public final void getFullBundleName()
  {
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(3, m, "disconnect()... called!");
    ZLog.a(ZLog.v, ZLog.z, System.currentTimeMillis(), ZLog.E, 0L + System.currentTimeMillis(), "PushConnection_disconnect");
    if ((this.l == null) || (this.k == null))
      return;
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(2, m, "shutdown() called...");
    this.o = false;
    this.q = 0;
    g();
    if (this.l != null)
      this.l.getBundleName();
    if (this.k != null)
      this.k.getBundleName();
    try
    {
      Thread.sleep(150L);
      if (this.e == null);
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          this.e.close();
          label120: this.e = null;
          if (this.f != null);
          try
          {
            this.f.close();
            label139: this.f = null;
            try
            {
              this.i.close();
              label151: com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(3, m, "shutdown()... Done!");
              this.k.getInitLevel();
              this.k = null;
              this.l.getInitLevel();
              this.l = null;
              com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(3, m, "disconnect()... done!");
              return;
              localException1 = localException1;
            }
            catch (Exception localException2)
            {
              break label151;
            }
          }
          catch (Throwable localThrowable1)
          {
            break label139;
          }
        }
      }
      catch (Throwable localThrowable2)
      {
        break label120;
      }
    }
  }

  public final void getBundlePath()
  {
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(4, m, "resetConnection()...");
    if (this.r != null)
      g();
    if (this.k != null);
    try
    {
      this.k.getBundleName();
      label35: this.k = null;
      if (this.l != null);
      try
      {
        this.l.getBundleName();
        label54: this.l = null;
        if (this.e != null);
        try
        {
          this.e.close();
          label73: this.e = null;
          if (this.f != null);
          try
          {
            this.f.close();
            label92: this.f = null;
            if (this.i != null);
            try
            {
              this.i.close();
              label111: this.i = null;
              this.o = false;
              return;
            }
            catch (Exception localException)
            {
              break label111;
            }
          }
          catch (Throwable localThrowable1)
          {
            break label92;
          }
        }
        catch (Throwable localThrowable2)
        {
          break label73;
        }
      }
      catch (Throwable localThrowable3)
      {
        break label54;
      }
    }
    catch (Throwable localThrowable4)
    {
      break label35;
    }
  }

  protected final void g()
  {
    synchronized (this.u)
    {
      if (this.r != null)
      {
        this.r.cancel();
        this.r = null;
      }
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.m
 * JD-Core Version:    0.6.2
 */