package com.alipay.mobile.longlink.b.a.a;

import com.alipay.mobile.longlink.c.a;
import java.net.InetAddress;
import java.net.Socket;
import javax.net.SocketFactory;

public class e extends SocketFactory
{
  private static final String a = AppBundle.getBundle(HostClassLoader.class);
  private BundlesManagerImpl b;

  public e(BundlesManagerImpl paramc)
  {
    this.b = paramc;
  }

  // ERROR //
  private Socket put(String paramString, int paramInt)
  {
    // Byte code:
    //   0: iconst_4
    //   1: getstatic 17	com/alipay/mobile/longlink/b/a/a/e:a	Ljava/lang/String;
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
    //   29: invokestatic 51	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   32: aload_0
    //   33: getfield 23	com/alipay/mobile/longlink/b/a/a/e:b	Lcom/alipay/mobile/longlink/b/a/a/c;
    //   36: invokevirtual 55	com/alipay/mobile/longlink/b/a/a/c:b	()Ljava/lang/String;
    //   39: astore_3
    //   40: aload_0
    //   41: getfield 23	com/alipay/mobile/longlink/b/a/a/e:b	Lcom/alipay/mobile/longlink/b/a/a/c;
    //   44: invokevirtual 59	com/alipay/mobile/longlink/b/a/a/c:c	()I
    //   47: istore 4
    //   49: iconst_4
    //   50: getstatic 17	com/alipay/mobile/longlink/b/a/a/e:a	Ljava/lang/String;
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
    //   79: invokestatic 51	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   82: invokestatic 69	java/lang/System:currentTimeMillis	()J
    //   85: lstore 5
    //   87: iconst_4
    //   88: getstatic 17	com/alipay/mobile/longlink/b/a/a/e:a	Ljava/lang/String;
    //   91: ldc 71
    //   93: invokestatic 51	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   96: new 73	java/net/Socket
    //   99: dup
    //   100: aload_3
    //   101: iload 4
    //   103: invokespecial 76	java/net/Socket:<init>	(Ljava/lang/String;I)V
    //   106: astore 8
    //   108: aload 8
    //   110: iconst_1
    //   111: invokevirtual 80	java/net/Socket:setKeepAlive	(Z)V
    //   114: aload 8
    //   116: iconst_1
    //   117: invokevirtual 83	java/net/Socket:setTcpNoDelay	(Z)V
    //   120: iconst_3
    //   121: getstatic 17	com/alipay/mobile/longlink/b/a/a/e:a	Ljava/lang/String;
    //   124: ldc 85
    //   126: invokestatic 51	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   129: new 87	java/io/BufferedReader
    //   132: dup
    //   133: new 89	java/io/InputStreamReader
    //   136: dup
    //   137: aload 8
    //   139: invokevirtual 93	java/net/Socket:getInputStream	()Ljava/io/InputStream;
    //   142: invokespecial 96	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   145: invokespecial 99	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   148: astore 11
    //   150: new 101	java/io/BufferedWriter
    //   153: dup
    //   154: new 103	java/io/OutputStreamWriter
    //   157: dup
    //   158: aload 8
    //   160: invokevirtual 107	java/net/Socket:getOutputStream	()Ljava/io/OutputStream;
    //   163: invokespecial 110	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   166: invokespecial 113	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   169: astore 12
    //   171: new 30	java/lang/StringBuilder
    //   174: dup
    //   175: ldc 115
    //   177: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   180: aload_1
    //   181: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: ldc 117
    //   186: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: iload_2
    //   190: invokevirtual 44	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   193: ldc 119
    //   195: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   198: aload_1
    //   199: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: ldc 117
    //   204: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: iload_2
    //   208: invokevirtual 44	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   211: ldc 121
    //   213: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   219: astore 13
    //   221: iconst_3
    //   222: getstatic 17	com/alipay/mobile/longlink/b/a/a/e:a	Ljava/lang/String;
    //   225: new 30	java/lang/StringBuilder
    //   228: dup
    //   229: ldc 123
    //   231: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   234: aload 13
    //   236: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   239: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   242: invokestatic 51	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   245: aload 12
    //   247: aload 13
    //   249: invokevirtual 126	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   252: aload 12
    //   254: invokevirtual 129	java/io/BufferedWriter:flush	()V
    //   257: aload 11
    //   259: invokevirtual 132	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   262: astore 14
    //   264: iconst_3
    //   265: getstatic 17	com/alipay/mobile/longlink/b/a/a/e:a	Ljava/lang/String;
    //   268: new 30	java/lang/StringBuilder
    //   271: dup
    //   272: ldc 134
    //   274: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   277: aload 14
    //   279: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   282: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   285: invokestatic 51	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   288: aload 11
    //   290: invokevirtual 132	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   293: astore 15
    //   295: aload 15
    //   297: ifnull +62 -> 359
    //   300: aload 15
    //   302: invokevirtual 139	java/lang/String:trim	()Ljava/lang/String;
    //   305: ldc 141
    //   307: invokevirtual 145	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   310: ifne +49 -> 359
    //   313: iconst_5
    //   314: getstatic 17	com/alipay/mobile/longlink/b/a/a/e:a	Ljava/lang/String;
    //   317: new 30	java/lang/StringBuilder
    //   320: dup
    //   321: ldc 147
    //   323: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   326: aload 15
    //   328: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   331: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   334: invokestatic 51	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   337: goto -49 -> 288
    //   340: astore 10
    //   342: iconst_5
    //   343: getstatic 17	com/alipay/mobile/longlink/b/a/a/e:a	Ljava/lang/String;
    //   346: ldc 149
    //   348: invokestatic 51	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   351: aload 10
    //   353: invokevirtual 152	java/lang/RuntimeException:printStackTrace	()V
    //   356: aload 10
    //   358: athrow
    //   359: aload 14
    //   361: ifnull +53 -> 414
    //   364: aload 14
    //   366: ldc 154
    //   368: invokevirtual 158	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   371: ifeq +43 -> 414
    //   374: iconst_4
    //   375: getstatic 17	com/alipay/mobile/longlink/b/a/a/e:a	Ljava/lang/String;
    //   378: new 30	java/lang/StringBuilder
    //   381: dup
    //   382: ldc 160
    //   384: invokespecial 35	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   387: invokestatic 69	java/lang/System:currentTimeMillis	()J
    //   390: lload 5
    //   392: lsub
    //   393: ldc2_w 161
    //   396: ldiv
    //   397: invokevirtual 165	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   400: ldc 167
    //   402: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   405: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   408: invokestatic 51	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   411: aload 8
    //   413: areturn
    //   414: iconst_2
    //   415: getstatic 17	com/alipay/mobile/longlink/b/a/a/e:a	Ljava/lang/String;
    //   418: ldc 169
    //   420: invokestatic 51	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   423: aload 8
    //   425: invokevirtual 172	java/net/Socket:close	()V
    //   428: new 174	com/alipay/mobile/longlink/b/a/a/b
    //   431: dup
    //   432: getstatic 179	com/alipay/mobile/longlink/b/a/a/d:c	Lcom/alipay/mobile/longlink/b/a/a/d;
    //   435: ldc 169
    //   437: invokevirtual 180	java/lang/String:toString	()Ljava/lang/String;
    //   440: invokespecial 183	com/alipay/mobile/longlink/b/a/a/b:<init>	(Lcom/alipay/mobile/longlink/b/a/a/d;Ljava/lang/String;)V
    //   443: athrow
    //   444: astore 7
    //   446: aconst_null
    //   447: astore 8
    //   449: iconst_5
    //   450: getstatic 17	com/alipay/mobile/longlink/b/a/a/e:a	Ljava/lang/String;
    //   453: ldc 185
    //   455: invokestatic 51	com/alipay/mobile/longlink/c/a:a	(ILjava/lang/String;Ljava/lang/String;)V
    //   458: aload 7
    //   460: invokevirtual 186	java/lang/Exception:printStackTrace	()V
    //   463: aload 8
    //   465: ifnull +8 -> 473
    //   468: aload 8
    //   470: invokevirtual 172	java/net/Socket:close	()V
    //   473: new 174	com/alipay/mobile/longlink/b/a/a/b
    //   476: dup
    //   477: getstatic 179	com/alipay/mobile/longlink/b/a/a/d:c	Lcom/alipay/mobile/longlink/b/a/a/d;
    //   480: aload 7
    //   482: invokevirtual 187	java/lang/Exception:toString	()Ljava/lang/String;
    //   485: invokespecial 183	com/alipay/mobile/longlink/b/a/a/b:<init>	(Lcom/alipay/mobile/longlink/b/a/a/d;Ljava/lang/String;)V
    //   488: athrow
    //   489: astore 9
    //   491: aload 9
    //   493: invokevirtual 186	java/lang/Exception:printStackTrace	()V
    //   496: goto -23 -> 473
    //   499: astore 7
    //   501: goto -52 -> 449
    //
    // Exception table:
    //   from	to	target	type
    //   87	108	340	java/lang/RuntimeException
    //   108	288	340	java/lang/RuntimeException
    //   288	295	340	java/lang/RuntimeException
    //   300	337	340	java/lang/RuntimeException
    //   364	411	340	java/lang/RuntimeException
    //   414	428	340	java/lang/RuntimeException
    //   428	444	340	java/lang/RuntimeException
    //   87	108	444	java/lang/Exception
    //   428	444	444	java/lang/Exception
    //   468	473	489	java/lang/Exception
    //   108	288	499	java/lang/Exception
    //   288	295	499	java/lang/Exception
    //   300	337	499	java/lang/Exception
    //   364	411	499	java/lang/Exception
    //   414	428	499	java/lang/Exception
  }

  public Socket createSocket(String paramString, int paramInt)
  {
    return v(paramString, paramInt);
  }

  public Socket createSocket(String paramString, int paramInt1, InetAddress paramInetAddress, int paramInt2)
  {
    return v(paramString, paramInt1);
  }

  public Socket createSocket(InetAddress paramInetAddress, int paramInt)
  {
    return v(paramInetAddress.getHostAddress(), paramInt);
  }

  public Socket createSocket(InetAddress paramInetAddress1, int paramInt1, InetAddress paramInetAddress2, int paramInt2)
  {
    return v(paramInetAddress1.getHostAddress(), paramInt1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.a.a.e
 * JD-Core Version:    0.6.2
 */