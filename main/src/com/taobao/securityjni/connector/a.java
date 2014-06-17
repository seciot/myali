package com.taobao.securityjni.connector;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.message.BasicNameValuePair;

public final class a
{
  private final int a = 5000;
  private final int b = 5000;
  private String c = "GET";
  private String d;
  private ConnectorHelper e;
  private HashMap f = new HashMap();

  private static List a(HashMap paramHashMap)
  {
    if (paramHashMap == null);
    Object[] arrayOfObject;
    do
    {
      return null;
      arrayOfObject = paramHashMap.entrySet().toArray();
    }
    while (arrayOfObject == null);
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < arrayOfObject.length; i++)
      localArrayList.add(new BasicNameValuePair((String)((Map.Entry)arrayOfObject[i]).getKey(), (String)((Map.Entry)arrayOfObject[i]).getValue()));
    return localArrayList;
  }

  // ERROR //
  public final Object a()
  {
    // Byte code:
    //   0: new 79	org/apache/http/params/BasicHttpParams
    //   3: dup
    //   4: invokespecial 80	org/apache/http/params/BasicHttpParams:<init>	()V
    //   7: astore_1
    //   8: aload_1
    //   9: sipush 5000
    //   12: invokestatic 86	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   15: aload_1
    //   16: sipush 5000
    //   19: invokestatic 89	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   22: new 91	org/apache/http/impl/client/DefaultHttpClient
    //   25: dup
    //   26: aload_1
    //   27: invokespecial 94	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   30: astore_2
    //   31: aload_0
    //   32: getfield 96	com/taobao/securityjni/connector/a:d	Ljava/lang/String;
    //   35: ifnonnull +23 -> 58
    //   38: aload_0
    //   39: getfield 98	com/taobao/securityjni/connector/a:e	Lcom/taobao/securityjni/connector/ConnectorHelper;
    //   42: ifnull +16 -> 58
    //   45: aload_0
    //   46: aload_0
    //   47: getfield 98	com/taobao/securityjni/connector/a:e	Lcom/taobao/securityjni/connector/ConnectorHelper;
    //   50: invokeinterface 104 1 0
    //   55: putfield 96	com/taobao/securityjni/connector/a:d	Ljava/lang/String;
    //   58: new 106	com/taobao/securityjni/connector/b
    //   61: dup
    //   62: invokespecial 107	com/taobao/securityjni/connector/b:<init>	()V
    //   65: astore_3
    //   66: aload_0
    //   67: getfield 26	com/taobao/securityjni/connector/a:c	Ljava/lang/String;
    //   70: ldc 24
    //   72: invokevirtual 110	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   75: ifeq +71 -> 146
    //   78: new 112	org/apache/http/client/methods/HttpGet
    //   81: dup
    //   82: aload_0
    //   83: getfield 96	com/taobao/securityjni/connector/a:d	Ljava/lang/String;
    //   86: invokespecial 115	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   89: astore 5
    //   91: aload_2
    //   92: aload 5
    //   94: invokeinterface 121 2 0
    //   99: astore 11
    //   101: sipush 200
    //   104: aload 11
    //   106: invokeinterface 127 1 0
    //   111: invokeinterface 133 1 0
    //   116: if_icmpne +401 -> 517
    //   119: aload 11
    //   121: invokeinterface 137 1 0
    //   126: astore 12
    //   128: aload 12
    //   130: ifnonnull +116 -> 246
    //   133: aload_3
    //   134: iconst_m1
    //   135: putfield 138	com/taobao/securityjni/connector/b:a	I
    //   138: aload_3
    //   139: ldc 140
    //   141: putfield 141	com/taobao/securityjni/connector/b:c	Ljava/lang/String;
    //   144: aload_3
    //   145: areturn
    //   146: aload_0
    //   147: getfield 26	com/taobao/securityjni/connector/a:c	Ljava/lang/String;
    //   150: ldc 143
    //   152: invokevirtual 110	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   155: ifeq +75 -> 230
    //   158: new 145	org/apache/http/client/methods/HttpPost
    //   161: dup
    //   162: aload_0
    //   163: getfield 96	com/taobao/securityjni/connector/a:d	Ljava/lang/String;
    //   166: invokespecial 146	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   169: astore 5
    //   171: aload_0
    //   172: getfield 31	com/taobao/securityjni/connector/a:f	Ljava/util/HashMap;
    //   175: ifnull -84 -> 91
    //   178: new 148	org/apache/http/client/entity/UrlEncodedFormEntity
    //   181: dup
    //   182: aload_0
    //   183: getfield 31	com/taobao/securityjni/connector/a:f	Ljava/util/HashMap;
    //   186: invokestatic 150	com/taobao/securityjni/connector/a:a	(Ljava/util/HashMap;)Ljava/util/List;
    //   189: ldc 152
    //   191: invokespecial 155	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;Ljava/lang/String;)V
    //   194: astore 21
    //   196: aload 5
    //   198: checkcast 145	org/apache/http/client/methods/HttpPost
    //   201: aload 21
    //   203: invokevirtual 159	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   206: goto -115 -> 91
    //   209: astore 4
    //   211: aload 4
    //   213: invokevirtual 162	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   216: aload_3
    //   217: bipush 254
    //   219: putfield 138	com/taobao/securityjni/connector/b:a	I
    //   222: aload_3
    //   223: ldc 164
    //   225: putfield 141	com/taobao/securityjni/connector/b:c	Ljava/lang/String;
    //   228: aload_3
    //   229: areturn
    //   230: new 112	org/apache/http/client/methods/HttpGet
    //   233: dup
    //   234: aload_0
    //   235: getfield 96	com/taobao/securityjni/connector/a:d	Ljava/lang/String;
    //   238: invokespecial 115	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   241: astore 5
    //   243: goto -152 -> 91
    //   246: aload 12
    //   248: invokeinterface 170 1 0
    //   253: astore 13
    //   255: ldc 172
    //   257: astore 14
    //   259: aload 13
    //   261: ifnull +37 -> 298
    //   264: aload 13
    //   266: invokeinterface 176 1 0
    //   271: ifnull +27 -> 298
    //   274: ldc 178
    //   276: aload 13
    //   278: invokeinterface 176 1 0
    //   283: invokevirtual 110	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   286: ifne +12 -> 298
    //   289: aload 13
    //   291: invokeinterface 176 1 0
    //   296: astore 14
    //   298: new 180	java/io/BufferedReader
    //   301: dup
    //   302: new 182	java/io/InputStreamReader
    //   305: dup
    //   306: aload 12
    //   308: invokeinterface 186 1 0
    //   313: aload 14
    //   315: invokespecial 189	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   318: sipush 1024
    //   321: invokespecial 192	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   324: astore 15
    //   326: new 194	java/lang/StringBuffer
    //   329: dup
    //   330: invokespecial 195	java/lang/StringBuffer:<init>	()V
    //   333: astore 16
    //   335: sipush 1024
    //   338: newarray char
    //   340: astore 17
    //   342: aload 15
    //   344: aload 17
    //   346: iconst_0
    //   347: sipush 1024
    //   350: invokevirtual 199	java/io/BufferedReader:read	([CII)I
    //   353: istore 18
    //   355: iload 18
    //   357: iconst_m1
    //   358: if_icmpeq +54 -> 412
    //   361: aload 16
    //   363: aload 17
    //   365: iconst_0
    //   366: iload 18
    //   368: invokevirtual 203	java/lang/StringBuffer:append	([CII)Ljava/lang/StringBuffer;
    //   371: pop
    //   372: goto -30 -> 342
    //   375: astore 10
    //   377: aload 10
    //   379: invokevirtual 204	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   382: aload_3
    //   383: bipush 252
    //   385: putfield 138	com/taobao/securityjni/connector/b:a	I
    //   388: aload_3
    //   389: new 206	java/lang/StringBuilder
    //   392: dup
    //   393: invokespecial 207	java/lang/StringBuilder:<init>	()V
    //   396: aload 10
    //   398: invokevirtual 210	org/apache/http/client/ClientProtocolException:toString	()Ljava/lang/String;
    //   401: invokevirtual 213	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   404: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   407: putfield 141	com/taobao/securityjni/connector/b:c	Ljava/lang/String;
    //   410: aload_3
    //   411: areturn
    //   412: aload 16
    //   414: invokevirtual 215	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   417: invokevirtual 218	java/lang/String:trim	()Ljava/lang/String;
    //   420: astore 20
    //   422: aload 20
    //   424: invokevirtual 221	java/lang/String:length	()I
    //   427: ifle +77 -> 504
    //   430: aload_0
    //   431: getfield 98	com/taobao/securityjni/connector/a:e	Lcom/taobao/securityjni/connector/ConnectorHelper;
    //   434: ifnull +16 -> 450
    //   437: aload_0
    //   438: getfield 98	com/taobao/securityjni/connector/a:e	Lcom/taobao/securityjni/connector/ConnectorHelper;
    //   441: aload 20
    //   443: invokeinterface 225 2 0
    //   448: astore 20
    //   450: aload_3
    //   451: iconst_0
    //   452: putfield 138	com/taobao/securityjni/connector/b:a	I
    //   455: aload_3
    //   456: aload 20
    //   458: putfield 228	com/taobao/securityjni/connector/b:d	Ljava/lang/Object;
    //   461: goto -51 -> 410
    //   464: astore 9
    //   466: aload 9
    //   468: invokevirtual 229	java/net/UnknownHostException:printStackTrace	()V
    //   471: aload_3
    //   472: bipush 251
    //   474: putfield 138	com/taobao/securityjni/connector/b:a	I
    //   477: aload_3
    //   478: new 206	java/lang/StringBuilder
    //   481: dup
    //   482: ldc 231
    //   484: invokespecial 232	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   487: aload 9
    //   489: invokevirtual 233	java/net/UnknownHostException:toString	()Ljava/lang/String;
    //   492: invokevirtual 213	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   495: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   498: putfield 141	com/taobao/securityjni/connector/b:c	Ljava/lang/String;
    //   501: goto -91 -> 410
    //   504: aload_3
    //   505: iconst_m1
    //   506: putfield 138	com/taobao/securityjni/connector/b:a	I
    //   509: aload_3
    //   510: ldc 235
    //   512: putfield 141	com/taobao/securityjni/connector/b:c	Ljava/lang/String;
    //   515: aload_3
    //   516: areturn
    //   517: aload_3
    //   518: bipush 253
    //   520: putfield 138	com/taobao/securityjni/connector/b:a	I
    //   523: aload_3
    //   524: aload 11
    //   526: invokeinterface 127 1 0
    //   531: invokeinterface 133 1 0
    //   536: putfield 236	com/taobao/securityjni/connector/b:b	I
    //   539: aload_3
    //   540: new 206	java/lang/StringBuilder
    //   543: dup
    //   544: ldc 238
    //   546: invokespecial 232	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   549: aload 11
    //   551: invokeinterface 127 1 0
    //   556: invokeinterface 241 1 0
    //   561: invokevirtual 213	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   564: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   567: putfield 141	com/taobao/securityjni/connector/b:c	Ljava/lang/String;
    //   570: aload_3
    //   571: areturn
    //   572: astore 7
    //   574: aload 7
    //   576: invokevirtual 242	java/net/SocketException:printStackTrace	()V
    //   579: aload 7
    //   581: invokevirtual 245	java/net/SocketException:getMessage	()Ljava/lang/String;
    //   584: astore 8
    //   586: aload 8
    //   588: ifnull +44 -> 632
    //   591: aload 8
    //   593: ldc 247
    //   595: invokevirtual 110	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   598: ifeq +34 -> 632
    //   601: aload_3
    //   602: bipush 249
    //   604: putfield 138	com/taobao/securityjni/connector/b:a	I
    //   607: aload_3
    //   608: new 206	java/lang/StringBuilder
    //   611: dup
    //   612: invokespecial 207	java/lang/StringBuilder:<init>	()V
    //   615: aload 7
    //   617: invokevirtual 248	java/net/SocketException:toString	()Ljava/lang/String;
    //   620: invokevirtual 213	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   623: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   626: putfield 141	com/taobao/securityjni/connector/b:c	Ljava/lang/String;
    //   629: goto -219 -> 410
    //   632: aload_3
    //   633: bipush 250
    //   635: putfield 138	com/taobao/securityjni/connector/b:a	I
    //   638: goto -31 -> 607
    //   641: astore 6
    //   643: aload 6
    //   645: invokevirtual 249	java/lang/Throwable:printStackTrace	()V
    //   648: aload_3
    //   649: bipush 250
    //   651: putfield 138	com/taobao/securityjni/connector/b:a	I
    //   654: aload_3
    //   655: new 206	java/lang/StringBuilder
    //   658: dup
    //   659: invokespecial 207	java/lang/StringBuilder:<init>	()V
    //   662: aload 6
    //   664: invokevirtual 250	java/lang/Throwable:toString	()Ljava/lang/String;
    //   667: invokevirtual 213	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   670: invokevirtual 214	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   673: putfield 141	com/taobao/securityjni/connector/b:c	Ljava/lang/String;
    //   676: goto -266 -> 410
    //
    // Exception table:
    //   from	to	target	type
    //   66	91	209	java/io/UnsupportedEncodingException
    //   146	206	209	java/io/UnsupportedEncodingException
    //   230	243	209	java/io/UnsupportedEncodingException
    //   91	128	375	org/apache/http/client/ClientProtocolException
    //   133	144	375	org/apache/http/client/ClientProtocolException
    //   246	255	375	org/apache/http/client/ClientProtocolException
    //   264	298	375	org/apache/http/client/ClientProtocolException
    //   298	342	375	org/apache/http/client/ClientProtocolException
    //   342	355	375	org/apache/http/client/ClientProtocolException
    //   361	372	375	org/apache/http/client/ClientProtocolException
    //   412	450	375	org/apache/http/client/ClientProtocolException
    //   450	461	375	org/apache/http/client/ClientProtocolException
    //   504	515	375	org/apache/http/client/ClientProtocolException
    //   517	570	375	org/apache/http/client/ClientProtocolException
    //   91	128	464	java/net/UnknownHostException
    //   133	144	464	java/net/UnknownHostException
    //   246	255	464	java/net/UnknownHostException
    //   264	298	464	java/net/UnknownHostException
    //   298	342	464	java/net/UnknownHostException
    //   342	355	464	java/net/UnknownHostException
    //   361	372	464	java/net/UnknownHostException
    //   412	450	464	java/net/UnknownHostException
    //   450	461	464	java/net/UnknownHostException
    //   504	515	464	java/net/UnknownHostException
    //   517	570	464	java/net/UnknownHostException
    //   91	128	572	java/net/SocketException
    //   133	144	572	java/net/SocketException
    //   246	255	572	java/net/SocketException
    //   264	298	572	java/net/SocketException
    //   298	342	572	java/net/SocketException
    //   342	355	572	java/net/SocketException
    //   361	372	572	java/net/SocketException
    //   412	450	572	java/net/SocketException
    //   450	461	572	java/net/SocketException
    //   504	515	572	java/net/SocketException
    //   517	570	572	java/net/SocketException
    //   91	128	641	java/lang/Throwable
    //   133	144	641	java/lang/Throwable
    //   246	255	641	java/lang/Throwable
    //   264	298	641	java/lang/Throwable
    //   298	342	641	java/lang/Throwable
    //   342	355	641	java/lang/Throwable
    //   361	372	641	java/lang/Throwable
    //   412	450	641	java/lang/Throwable
    //   450	461	641	java/lang/Throwable
    //   504	515	641	java/lang/Throwable
    //   517	570	641	java/lang/Throwable
  }

  public final void a(ConnectorHelper paramConnectorHelper)
  {
    this.e = paramConnectorHelper;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.connector.a
 * JD-Core Version:    0.6.2
 */