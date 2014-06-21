package com.alipay.mobile.longlink.b.a;

import com.alipay.mobile.longlink.b.c.b;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.net.Socket;
import java.util.Timer;

public class k extends AppBundle
{
  private static final String m = com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.getBundle(k.class);
  protected Socket i;
  String j = null;
  i k;
  e l;
  private String n = null;
  private boolean o = false;
  private int p = BundlesManager.AppBundle;
  private int q = 0;
  private Timer r = null;
  private int s = -1;
  private Object t = new Object();

  public k(BundlesManagerImpl paramc)
  {
    super(paramc);
  }

  public final void setBundlePath(int paramInt)
  {
    this.p = paramInt;
  }

  // ERROR //
  public final void setBundlePath(com.alipay.mobile.longlink.BundlesManager.b.AppBundle parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 78	com/alipay/mobile/longlink/b/a/k:h	Lcom/alipay/mobile/longlink/b/a/c;
    //   4: astore_3
    //   5: aload_3
    //   6: invokevirtual 84	com/alipay/mobile/longlink/b/a/c:d	()Lcom/alipay/mobile/longlink/b/a/d;
    //   9: astore 4
    //   11: getstatic 89	com/alipay/mobile/longlink/b/a/d:a	Lcom/alipay/mobile/longlink/b/a/d;
    //   14: aload 4
    //   16: if_acmpne +308 -> 324
    //   19: iconst_1
    //   20: istore 5
    //   22: aload_3
    //   23: invokevirtual 91	com/alipay/mobile/longlink/b/a/c:a	()Ljava/lang/String;
    //   26: astore 6
    //   28: aload_3
    //   29: invokevirtual 95	com/alipay/mobile/longlink/b/a/c:b	()I
    //   32: istore 7
    //   34: iconst_3
    //   35: getstatic 34	com/alipay/mobile/longlink/b/a/k:m	Ljava/lang/String;
    //   38: new 97	java/lang/StringBuilder
    //   41: dup
    //   42: ldc 99
    //   44: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   47: aload 6
    //   49: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   52: ldc 108
    //   54: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: iload 7
    //   59: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   62: ldc 113
    //   64: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: iload 5
    //   69: invokevirtual 116	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   72: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: invokestatic 122	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   78: aload_3
    //   79: invokevirtual 126	com/alipay/mobile/longlink/b/a/c:c	()Lcom/alipay/mobile/longlink/b/a/a/c;
    //   82: astore 8
    //   84: aload_3
    //   85: invokevirtual 130	com/alipay/mobile/longlink/b/a/c:f	()Ljavax/net/SocketFactory;
    //   88: ifnonnull +242 -> 330
    //   91: aload_0
    //   92: new 132	java/net/Socket
    //   95: dup
    //   96: aload 6
    //   98: iload 7
    //   100: invokespecial 135	java/net/Socket:<init>	(Ljava/lang/String;I)V
    //   103: putfield 137	com/alipay/mobile/longlink/b/a/k:i	Ljava/net/Socket;
    //   106: aload_0
    //   107: getfield 137	com/alipay/mobile/longlink/b/a/k:i	Ljava/net/Socket;
    //   110: ifnull +621 -> 731
    //   113: iconst_4
    //   114: getstatic 34	com/alipay/mobile/longlink/b/a/k:m	Ljava/lang/String;
    //   117: ldc 139
    //   119: invokestatic 122	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   122: iconst_0
    //   123: istore 11
    //   125: iload 11
    //   127: bipush 20
    //   129: if_icmpge +17 -> 146
    //   132: aload_0
    //   133: getfield 137	com/alipay/mobile/longlink/b/a/k:i	Ljava/net/Socket;
    //   136: invokevirtual 143	java/net/Socket:isConnected	()Z
    //   139: istore 17
    //   141: iload 17
    //   143: ifeq +529 -> 672
    //   146: aload_0
    //   147: getfield 145	com/alipay/mobile/longlink/b/a/k:l	Lcom/alipay/mobile/longlink/b/a/e;
    //   150: ifnull +14 -> 164
    //   153: aload_0
    //   154: getfield 147	com/alipay/mobile/longlink/b/a/k:k	Lcom/alipay/mobile/longlink/b/a/i;
    //   157: astore 15
    //   159: aload 15
    //   161: ifnonnull +601 -> 762
    //   164: iconst_1
    //   165: istore 12
    //   167: aload_0
    //   168: new 149	java/io/DataInputStream
    //   171: dup
    //   172: aload_0
    //   173: getfield 137	com/alipay/mobile/longlink/b/a/k:i	Ljava/net/Socket;
    //   176: invokevirtual 153	java/net/Socket:getInputStream	()Ljava/io/InputStream;
    //   179: invokespecial 156	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   182: putfield 160	com/alipay/mobile/longlink/b/a/k:e	Ljava/io/DataInputStream;
    //   185: aload_0
    //   186: new 162	java/io/DataOutputStream
    //   189: dup
    //   190: aload_0
    //   191: getfield 137	com/alipay/mobile/longlink/b/a/k:i	Ljava/net/Socket;
    //   194: invokevirtual 166	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   197: invokespecial 169	java/io/DataOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   200: putfield 172	com/alipay/mobile/longlink/b/a/k:f	Ljava/io/DataOutputStream;
    //   203: iconst_4
    //   204: getstatic 34	com/alipay/mobile/longlink/b/a/k:m	Ljava/lang/String;
    //   207: ldc 174
    //   209: invokestatic 122	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   212: iload 12
    //   214: ifeq +495 -> 709
    //   217: aload_0
    //   218: new 176	com/alipay/mobile/longlink/b/a/i
    //   221: dup
    //   222: aload_0
    //   223: invokespecial 179	com/alipay/mobile/longlink/b/a/i:<init>	(Lcom/alipay/mobile/longlink/b/a/k;)V
    //   226: putfield 147	com/alipay/mobile/longlink/b/a/k:k	Lcom/alipay/mobile/longlink/b/a/i;
    //   229: aload_0
    //   230: new 181	com/alipay/mobile/longlink/b/a/e
    //   233: dup
    //   234: aload_0
    //   235: invokespecial 182	com/alipay/mobile/longlink/b/a/e:<init>	(Lcom/alipay/mobile/longlink/b/a/k;)V
    //   238: putfield 145	com/alipay/mobile/longlink/b/a/k:l	Lcom/alipay/mobile/longlink/b/a/e;
    //   241: aload_0
    //   242: getfield 147	com/alipay/mobile/longlink/b/a/k:k	Lcom/alipay/mobile/longlink/b/a/i;
    //   245: invokevirtual 184	com/alipay/mobile/longlink/b/a/i:b	()V
    //   248: aload_0
    //   249: getfield 145	com/alipay/mobile/longlink/b/a/k:l	Lcom/alipay/mobile/longlink/b/a/e;
    //   252: invokevirtual 185	com/alipay/mobile/longlink/b/a/e:b	()V
    //   255: iconst_5
    //   256: getstatic 34	com/alipay/mobile/longlink/b/a/k:m	Ljava/lang/String;
    //   259: new 97	java/lang/StringBuilder
    //   262: dup
    //   263: ldc 187
    //   265: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   268: aload_0
    //   269: getfield 145	com/alipay/mobile/longlink/b/a/k:l	Lcom/alipay/mobile/longlink/b/a/e;
    //   272: invokevirtual 190	java/lang/Object:hashCode	()I
    //   275: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   278: ldc 192
    //   280: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: aload_0
    //   284: getfield 147	com/alipay/mobile/longlink/b/a/k:k	Lcom/alipay/mobile/longlink/b/a/i;
    //   287: invokevirtual 190	java/lang/Object:hashCode	()I
    //   290: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   293: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   296: invokestatic 122	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   299: iconst_3
    //   300: getstatic 34	com/alipay/mobile/longlink/b/a/k:m	Ljava/lang/String;
    //   303: ldc 194
    //   305: invokestatic 122	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   308: aload_1
    //   309: invokeinterface 198 1 0
    //   314: iconst_3
    //   315: getstatic 34	com/alipay/mobile/longlink/b/a/k:m	Ljava/lang/String;
    //   318: ldc 200
    //   320: invokestatic 122	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   323: return
    //   324: iconst_0
    //   325: istore 5
    //   327: goto -305 -> 22
    //   330: iload 5
    //   332: ifeq +322 -> 654
    //   335: iconst_3
    //   336: getstatic 34	com/alipay/mobile/longlink/b/a/k:m	Ljava/lang/String;
    //   339: ldc 202
    //   341: invokestatic 122	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   344: getstatic 207	com/alipay/mobile/longlink/b/a/a/d:c	Lcom/alipay/mobile/longlink/b/a/a/d;
    //   347: aload 8
    //   349: invokevirtual 212	com/alipay/mobile/longlink/b/a/a/c:a	()Lcom/alipay/mobile/longlink/b/a/a/d;
    //   352: if_acmpne +159 -> 511
    //   355: iconst_4
    //   356: getstatic 34	com/alipay/mobile/longlink/b/a/k:m	Ljava/lang/String;
    //   359: new 97	java/lang/StringBuilder
    //   362: dup
    //   363: ldc 214
    //   365: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   368: aload 8
    //   370: invokevirtual 216	com/alipay/mobile/longlink/b/a/a/c:b	()Ljava/lang/String;
    //   373: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   376: ldc 218
    //   378: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: aload 8
    //   383: invokevirtual 220	com/alipay/mobile/longlink/b/a/a/c:c	()I
    //   386: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   389: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   392: invokestatic 122	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   395: aload_3
    //   396: invokevirtual 130	com/alipay/mobile/longlink/b/a/c:f	()Ljavax/net/SocketFactory;
    //   399: aload 6
    //   401: iload 7
    //   403: invokevirtual 226	javax/net/SocketFactory:createSocket	(Ljava/lang/String;I)Ljava/net/Socket;
    //   406: astore 20
    //   408: invokestatic 231	javax/net/ssl/SSLSocketFactory:getDefault	()Ljavax/net/SocketFactory;
    //   411: checkcast 228	javax/net/ssl/SSLSocketFactory
    //   414: aload 20
    //   416: aload 8
    //   418: invokevirtual 216	com/alipay/mobile/longlink/b/a/a/c:b	()Ljava/lang/String;
    //   421: aload 8
    //   423: invokevirtual 220	com/alipay/mobile/longlink/b/a/a/c:c	()I
    //   426: iconst_1
    //   427: invokevirtual 234	javax/net/ssl/SSLSocketFactory:createSocket	(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    //   430: checkcast 236	javax/net/ssl/SSLSocket
    //   433: astore 21
    //   435: aload 21
    //   437: iconst_1
    //   438: invokevirtual 240	javax/net/ssl/SSLSocket:setUseClientMode	(Z)V
    //   441: aload 21
    //   443: invokevirtual 243	javax/net/ssl/SSLSocket:startHandshake	()V
    //   446: aload_0
    //   447: aload 21
    //   449: putfield 137	com/alipay/mobile/longlink/b/a/k:i	Ljava/net/Socket;
    //   452: goto -346 -> 106
    //   455: astore 10
    //   457: new 69	com/alipay/mobile/longlink/b/a/n
    //   460: dup
    //   461: new 97	java/lang/StringBuilder
    //   464: dup
    //   465: ldc 245
    //   467: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   470: aload 6
    //   472: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   475: ldc 247
    //   477: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   480: iload 7
    //   482: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   485: ldc 249
    //   487: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   490: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   493: aload 10
    //   495: invokespecial 252	com/alipay/mobile/longlink/b/a/n:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   498: athrow
    //   499: astore_2
    //   500: aload_1
    //   501: invokeinterface 253 1 0
    //   506: aload_2
    //   507: invokevirtual 256	com/alipay/mobile/longlink/b/a/n:printStackTrace	()V
    //   510: return
    //   511: invokestatic 259	android/net/SSLCertificateSocketFactory:getDefault	()Ljavax/net/SocketFactory;
    //   514: aload 6
    //   516: iload 7
    //   518: invokevirtual 226	javax/net/SocketFactory:createSocket	(Ljava/lang/String;I)Ljava/net/Socket;
    //   521: checkcast 236	javax/net/ssl/SSLSocket
    //   524: astore 18
    //   526: aload 18
    //   528: invokevirtual 263	javax/net/ssl/SSLSocket:getSession	()Ljavax/net/ssl/SSLSession;
    //   531: astore 19
    //   533: invokestatic 269	javax/net/ssl/HttpsURLConnection:getDefaultHostnameVerifier	()Ljavax/net/ssl/HostnameVerifier;
    //   536: ldc_w 271
    //   539: aload 19
    //   541: invokeinterface 277 3 0
    //   546: ifne +99 -> 645
    //   549: iconst_2
    //   550: getstatic 34	com/alipay/mobile/longlink/b/a/k:m	Ljava/lang/String;
    //   553: ldc_w 279
    //   556: invokestatic 122	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   559: new 69	com/alipay/mobile/longlink/b/a/n
    //   562: dup
    //   563: new 97	java/lang/StringBuilder
    //   566: dup
    //   567: ldc_w 281
    //   570: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   573: aload 19
    //   575: invokeinterface 287 1 0
    //   580: invokevirtual 290	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   583: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   586: new 73	java/lang/Exception
    //   589: dup
    //   590: ldc_w 292
    //   593: invokespecial 293	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   596: invokespecial 252	com/alipay/mobile/longlink/b/a/n:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   599: athrow
    //   600: astore 9
    //   602: new 69	com/alipay/mobile/longlink/b/a/n
    //   605: dup
    //   606: new 97	java/lang/StringBuilder
    //   609: dup
    //   610: ldc_w 295
    //   613: invokespecial 102	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   616: aload 6
    //   618: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   621: ldc 247
    //   623: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   626: iload 7
    //   628: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   631: ldc 249
    //   633: invokevirtual 106	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   636: invokevirtual 119	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   639: aload 9
    //   641: invokespecial 252	com/alipay/mobile/longlink/b/a/n:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   644: athrow
    //   645: aload_0
    //   646: aload 18
    //   648: putfield 137	com/alipay/mobile/longlink/b/a/k:i	Ljava/net/Socket;
    //   651: goto -545 -> 106
    //   654: aload_0
    //   655: aload_3
    //   656: invokevirtual 130	com/alipay/mobile/longlink/b/a/c:f	()Ljavax/net/SocketFactory;
    //   659: aload 6
    //   661: iload 7
    //   663: invokevirtual 226	javax/net/SocketFactory:createSocket	(Ljava/lang/String;I)Ljava/net/Socket;
    //   666: putfield 137	com/alipay/mobile/longlink/b/a/k:i	Ljava/net/Socket;
    //   669: goto -563 -> 106
    //   672: ldc2_w 296
    //   675: invokestatic 303	java/lang/Thread:sleep	(J)V
    //   678: iinc 11 1
    //   681: goto -556 -> 125
    //   684: astore 16
    //   686: aload 16
    //   688: invokevirtual 304	java/lang/Exception:printStackTrace	()V
    //   691: goto -13 -> 678
    //   694: astore 13
    //   696: new 69	com/alipay/mobile/longlink/b/a/n
    //   699: dup
    //   700: ldc_w 306
    //   703: aload 13
    //   705: invokespecial 252	com/alipay/mobile/longlink/b/a/n:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   708: athrow
    //   709: aload_0
    //   710: getfield 147	com/alipay/mobile/longlink/b/a/k:k	Lcom/alipay/mobile/longlink/b/a/i;
    //   713: invokevirtual 307	com/alipay/mobile/longlink/b/a/i:a	()V
    //   716: aload_0
    //   717: getfield 145	com/alipay/mobile/longlink/b/a/k:l	Lcom/alipay/mobile/longlink/b/a/e;
    //   720: invokevirtual 308	com/alipay/mobile/longlink/b/a/e:a	()V
    //   723: goto -482 -> 241
    //   726: astore 14
    //   728: aload 14
    //   730: athrow
    //   731: iconst_2
    //   732: getstatic 34	com/alipay/mobile/longlink/b/a/k:m	Ljava/lang/String;
    //   735: ldc_w 310
    //   738: invokestatic 122	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   741: new 69	com/alipay/mobile/longlink/b/a/n
    //   744: dup
    //   745: ldc_w 312
    //   748: new 73	java/lang/Exception
    //   751: dup
    //   752: ldc_w 314
    //   755: invokespecial 293	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   758: invokespecial 252	com/alipay/mobile/longlink/b/a/n:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   761: athrow
    //   762: iconst_0
    //   763: istore 12
    //   765: goto -598 -> 167
    //
    // Exception table:
    //   from	to	target	type
    //   84	106	455	java/net/UnknownHostException
    //   106	122	455	java/net/UnknownHostException
    //   132	141	455	java/net/UnknownHostException
    //   146	159	455	java/net/UnknownHostException
    //   167	203	455	java/net/UnknownHostException
    //   203	212	455	java/net/UnknownHostException
    //   217	241	455	java/net/UnknownHostException
    //   241	314	455	java/net/UnknownHostException
    //   335	452	455	java/net/UnknownHostException
    //   511	600	455	java/net/UnknownHostException
    //   645	651	455	java/net/UnknownHostException
    //   654	669	455	java/net/UnknownHostException
    //   672	678	455	java/net/UnknownHostException
    //   686	691	455	java/net/UnknownHostException
    //   696	709	455	java/net/UnknownHostException
    //   709	723	455	java/net/UnknownHostException
    //   728	731	455	java/net/UnknownHostException
    //   731	762	455	java/net/UnknownHostException
    //   0	19	499	com/alipay/mobile/longlink/b/a/n
    //   22	84	499	com/alipay/mobile/longlink/b/a/n
    //   84	106	499	com/alipay/mobile/longlink/b/a/n
    //   106	122	499	com/alipay/mobile/longlink/b/a/n
    //   132	141	499	com/alipay/mobile/longlink/b/a/n
    //   146	159	499	com/alipay/mobile/longlink/b/a/n
    //   167	203	499	com/alipay/mobile/longlink/b/a/n
    //   203	212	499	com/alipay/mobile/longlink/b/a/n
    //   314	323	499	com/alipay/mobile/longlink/b/a/n
    //   335	452	499	com/alipay/mobile/longlink/b/a/n
    //   457	499	499	com/alipay/mobile/longlink/b/a/n
    //   511	600	499	com/alipay/mobile/longlink/b/a/n
    //   602	645	499	com/alipay/mobile/longlink/b/a/n
    //   645	651	499	com/alipay/mobile/longlink/b/a/n
    //   654	669	499	com/alipay/mobile/longlink/b/a/n
    //   672	678	499	com/alipay/mobile/longlink/b/a/n
    //   686	691	499	com/alipay/mobile/longlink/b/a/n
    //   696	709	499	com/alipay/mobile/longlink/b/a/n
    //   728	731	499	com/alipay/mobile/longlink/b/a/n
    //   731	762	499	com/alipay/mobile/longlink/b/a/n
    //   84	106	600	java/lang/Exception
    //   106	122	600	java/lang/Exception
    //   146	159	600	java/lang/Exception
    //   167	203	600	java/lang/Exception
    //   203	212	600	java/lang/Exception
    //   217	241	600	java/lang/Exception
    //   241	314	600	java/lang/Exception
    //   335	452	600	java/lang/Exception
    //   511	600	600	java/lang/Exception
    //   645	651	600	java/lang/Exception
    //   654	669	600	java/lang/Exception
    //   686	691	600	java/lang/Exception
    //   696	709	600	java/lang/Exception
    //   709	723	600	java/lang/Exception
    //   728	731	600	java/lang/Exception
    //   731	762	600	java/lang/Exception
    //   132	141	684	java/lang/Exception
    //   672	678	684	java/lang/Exception
    //   167	203	694	java/io/IOException
    //   217	241	726	com/alipay/mobile/longlink/b/a/n
    //   241	314	726	com/alipay/mobile/longlink/b/a/n
    //   709	723	726	com/alipay/mobile/longlink/b/a/n
  }

  public final void setBundlePath(com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.AppBundle parama)
  {
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(4, m, "sendPacket()... isConnected=" + a());
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
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(5, m, "sendPacket()... writer=" + this.f.hashCode() + ", reader=" + this.e.hashCode());
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(3, m, "sendPacket()... packet.id=" + parama.a());
    this.k.getBundle(parama);
  }

  public final boolean a()
  {
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(4, m, "isConnected()...called=" + this.o + ", connection=" + hashCode());
    return this.o;
  }

  protected final void b(int paramInt)
  {
    if (this.r != null)
      g();
    this.s = paramInt;
    synchronized (this.t)
    {
      this.r = new Timer(true);
      this.r.schedule(new l(this), m.b());
      return;
    }
  }

  public final void getBundleName()
  {
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(4, m, "setConnected()...isConnected=true");
    this.o = true;
  }

  public final int getInitLevel()
  {
    return this.p;
  }

  public final void getFullBundleName()
  {
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(3, m, "disconnect()... called!");
    if ((this.l == null) || (this.k == null))
      return;
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(2, m, "shutdown() called...");
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
          label97: this.e = null;
          if (this.f != null);
          try
          {
            this.f.close();
            label116: this.f = null;
            try
            {
              this.i.close();
              label128: com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(3, m, "shutdown()... Done!");
              this.k.getInitLevel();
              this.k = null;
              this.l.getInitLevel();
              this.l = null;
              com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(3, m, "disconnect()... done!");
              return;
              localException1 = localException1;
            }
            catch (Exception localException2)
            {
              break label128;
            }
          }
          catch (Throwable localThrowable1)
          {
            break label116;
          }
        }
      }
      catch (Throwable localThrowable2)
      {
        break label97;
      }
    }
  }

  public final void getBundlePath()
  {
    com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.a(4, m, "resetConnection()...");
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
    synchronized (this.t)
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
 * Qualified Name:     com.alipay.mobile.longlink.b.a.k
 * JD-Core Version:    0.6.2
 */