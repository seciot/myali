package com.alipay.pushsdk.push.a.a;

import java.net.InetAddress;
import java.net.Socket;
import javax.net.SocketFactory;

public class e extends SocketFactory
{
  private static final String a = com.alipay.pushsdk.c.a.c.a(e.class);
  private c b;

  public e(c paramc)
  {
    this.b = paramc;
  }

  // ERROR //
  private Socket a(String paramString, int paramInt)
  {
    // Byte code:
    //   0: iconst_4
    //   1: getstatic 17	com/alipay/pushsdk/push/a/a/e:a	Ljava/lang/String;
    //   4: new 30	java/lang/StringBuilder
    //   7: dup
    //   8: ldc 32
    //   10: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   13: aload_1
    //   14: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   17: ldc 41
    //   19: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   22: iload_2
    //   23: invokevirtual 44	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   26: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   29: invokestatic 51	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   32: aload_0
    //   33: getfield 23	com/alipay/pushsdk/push/a/a/e:b	Lcom/alipay/pushsdk/push/a/a/c;
    //   36: invokevirtual 55	com/alipay/pushsdk/push/a/a/c:b	()Ljava/lang/String;
    //   39: astore_3
    //   40: aload_0
    //   41: getfield 23	com/alipay/pushsdk/push/a/a/e:b	Lcom/alipay/pushsdk/push/a/a/c;
    //   44: invokevirtual 59	com/alipay/pushsdk/push/a/a/c:c	()I
    //   47: istore 4
    //   49: iconst_4
    //   50: getstatic 17	com/alipay/pushsdk/push/a/a/e:a	Ljava/lang/String;
    //   53: new 30	java/lang/StringBuilder
    //   56: dup
    //   57: ldc 61
    //   59: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   62: aload_3
    //   63: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: ldc 63
    //   68: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: iload 4
    //   73: invokevirtual 44	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   76: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokestatic 51	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   82: invokestatic 69	java/lang/System:currentTimeMillis	()J
    //   85: lstore 5
    //   87: new 71	java/net/Socket
    //   90: dup
    //   91: aload_3
    //   92: iload 4
    //   94: invokespecial 74	java/net/Socket:<init>	(Ljava/lang/String;I)V
    //   97: astore 7
    //   99: aload 7
    //   101: iconst_1
    //   102: invokevirtual 78	java/net/Socket:setKeepAlive	(Z)V
    //   105: aload 7
    //   107: iconst_1
    //   108: invokevirtual 81	java/net/Socket:setTcpNoDelay	(Z)V
    //   111: new 83	java/io/BufferedReader
    //   114: dup
    //   115: new 85	java/io/InputStreamReader
    //   118: dup
    //   119: aload 7
    //   121: invokevirtual 89	java/net/Socket:getInputStream	()Ljava/io/InputStream;
    //   124: invokespecial 92	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   127: invokespecial 95	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   130: astore 11
    //   132: new 97	java/io/BufferedWriter
    //   135: dup
    //   136: new 99	java/io/OutputStreamWriter
    //   139: dup
    //   140: aload 7
    //   142: invokevirtual 103	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   145: invokespecial 106	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   148: invokespecial 109	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   151: astore 12
    //   153: new 30	java/lang/StringBuilder
    //   156: dup
    //   157: ldc 111
    //   159: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   162: aload_1
    //   163: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   166: ldc 113
    //   168: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   171: iload_2
    //   172: invokevirtual 44	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   175: ldc 115
    //   177: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: aload_1
    //   181: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: ldc 113
    //   186: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: iload_2
    //   190: invokevirtual 44	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   193: ldc 117
    //   195: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: astore 13
    //   203: iconst_3
    //   204: getstatic 17	com/alipay/pushsdk/push/a/a/e:a	Ljava/lang/String;
    //   207: new 30	java/lang/StringBuilder
    //   210: dup
    //   211: ldc 119
    //   213: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   216: aload 13
    //   218: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   221: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   224: invokestatic 51	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   227: aload 12
    //   229: aload 13
    //   231: invokevirtual 122	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   234: aload 12
    //   236: invokevirtual 125	java/io/BufferedWriter:flush	()V
    //   239: aload 11
    //   241: invokevirtual 128	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   244: astore 14
    //   246: iconst_3
    //   247: getstatic 17	com/alipay/pushsdk/push/a/a/e:a	Ljava/lang/String;
    //   250: new 30	java/lang/StringBuilder
    //   253: dup
    //   254: ldc 130
    //   256: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   259: aload 14
    //   261: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   267: invokestatic 51	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   270: aload 11
    //   272: invokevirtual 128	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   275: astore 15
    //   277: aload 15
    //   279: ifnull +48 -> 327
    //   282: aload 15
    //   284: invokevirtual 135	java/lang/String:trim	()Ljava/lang/String;
    //   287: ldc 137
    //   289: invokevirtual 141	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   292: ifne +35 -> 327
    //   295: iconst_5
    //   296: getstatic 17	com/alipay/pushsdk/push/a/a/e:a	Ljava/lang/String;
    //   299: new 30	java/lang/StringBuilder
    //   302: dup
    //   303: ldc 143
    //   305: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   308: aload 15
    //   310: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   313: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   316: invokestatic 51	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   319: goto -49 -> 270
    //   322: astore 10
    //   324: aload 10
    //   326: athrow
    //   327: aload 14
    //   329: ifnull +53 -> 382
    //   332: aload 14
    //   334: ldc 145
    //   336: invokevirtual 149	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   339: ifeq +43 -> 382
    //   342: iconst_4
    //   343: getstatic 17	com/alipay/pushsdk/push/a/a/e:a	Ljava/lang/String;
    //   346: new 30	java/lang/StringBuilder
    //   349: dup
    //   350: ldc 151
    //   352: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   355: invokestatic 69	java/lang/System:currentTimeMillis	()J
    //   358: lload 5
    //   360: lsub
    //   361: ldc2_w 152
    //   364: ldiv
    //   365: invokevirtual 156	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   368: ldc 158
    //   370: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   376: invokestatic 51	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   379: aload 7
    //   381: areturn
    //   382: iconst_2
    //   383: getstatic 17	com/alipay/pushsdk/push/a/a/e:a	Ljava/lang/String;
    //   386: ldc 160
    //   388: invokestatic 51	com/alipay/pushsdk/c/a/c:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   391: aload 7
    //   393: invokevirtual 163	java/net/Socket:close	()V
    //   396: new 165	com/alipay/pushsdk/push/a/a/b
    //   399: dup
    //   400: getstatic 170	com/alipay/pushsdk/push/a/a/d:c	Lcom/alipay/pushsdk/push/a/a/d;
    //   403: ldc 160
    //   405: invokevirtual 171	java/lang/String:toString	()Ljava/lang/String;
    //   408: invokespecial 174	com/alipay/pushsdk/push/a/a/b:<init>	(Lcom/alipay/pushsdk/push/a/a/d;Ljava/lang/String;)V
    //   411: athrow
    //   412: astore 8
    //   414: aconst_null
    //   415: astore 7
    //   417: aload 7
    //   419: ifnull +8 -> 427
    //   422: aload 7
    //   424: invokevirtual 163	java/net/Socket:close	()V
    //   427: new 165	com/alipay/pushsdk/push/a/a/b
    //   430: dup
    //   431: getstatic 170	com/alipay/pushsdk/push/a/a/d:c	Lcom/alipay/pushsdk/push/a/a/d;
    //   434: aload 8
    //   436: invokevirtual 175	java/lang/Exception:toString	()Ljava/lang/String;
    //   439: invokespecial 174	com/alipay/pushsdk/push/a/a/b:<init>	(Lcom/alipay/pushsdk/push/a/a/d;Ljava/lang/String;)V
    //   442: athrow
    //   443: astore 9
    //   445: goto -18 -> 427
    //   448: astore 8
    //   450: goto -33 -> 417
    //
    // Exception table:
    //   from	to	target	type
    //   87	99	322	java/lang/RuntimeException
    //   99	270	322	java/lang/RuntimeException
    //   270	277	322	java/lang/RuntimeException
    //   282	319	322	java/lang/RuntimeException
    //   332	379	322	java/lang/RuntimeException
    //   382	396	322	java/lang/RuntimeException
    //   396	412	322	java/lang/RuntimeException
    //   87	99	412	java/lang/Exception
    //   396	412	412	java/lang/Exception
    //   422	427	443	java/lang/Exception
    //   99	270	448	java/lang/Exception
    //   270	277	448	java/lang/Exception
    //   282	319	448	java/lang/Exception
    //   332	379	448	java/lang/Exception
    //   382	396	448	java/lang/Exception
  }

  public Socket createSocket(String paramString, int paramInt)
  {
    return a(paramString, paramInt);
  }

  public Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    return a(paramString, paramInt1);
  }

  public Socket createSocket(InetAddress paramInetAddress, int paramInt)
  {
    return a(paramInetAddress.getHostAddress(), paramInt);
  }

  public Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
  {
    return a(paramInetAddress1.getHostAddress(), paramInt1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.a.a.e
 * JD-Core Version:    0.6.2
 */