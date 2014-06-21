package com.alipay.pushsdk.b.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.net.URL;
import javax.net.ssl.HttpsURLConnection;

public class c
{
  public static AppBundle f = null;
  private String a;
  Context e;

  public c(String paramString, Context paramContext)
  {
    this.a = paramString;
    this.e = paramContext;
    HttpsURLConnection.setDefaultHostnameVerifier(new ZLog(this));
  }

  private NetworkInfo stop()
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)this.e.getSystemService("connectivity")).getActiveNetworkInfo();
      return localNetworkInfo;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  public final URL a()
  {
    try
    {
      URL localURL = new URL(this.a);
      return localURL;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }

  // ERROR //
  public final org.apache.http.HttpResponse a(java.util.ArrayList paramArrayList1, java.util.ArrayList paramArrayList2)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 64	com/alipay/pushsdk/b/a/c:a	()Ljava/net/URL;
    //   4: astore_3
    //   5: getstatic 14	com/alipay/pushsdk/b/a/c:f	Lcom/alipay/pushsdk/b/a/a;
    //   8: ifnonnull +16 -> 24
    //   11: aload_0
    //   12: getfield 22	com/alipay/pushsdk/b/a/c:e	Landroid/content/Context;
    //   15: pop
    //   16: ldc 66
    //   18: invokestatic 71	com/alipay/pushsdk/b/a/a:a	(Ljava/lang/String;)Lcom/alipay/pushsdk/b/a/a;
    //   21: putstatic 14	com/alipay/pushsdk/b/a/c:f	Lcom/alipay/pushsdk/b/a/a;
    //   24: getstatic 14	com/alipay/pushsdk/b/a/c:f	Lcom/alipay/pushsdk/b/a/a;
    //   27: invokevirtual 75	com/alipay/pushsdk/b/a/a:getParams	()Lorg/apache/http/params/HttpParams;
    //   30: astore 10
    //   32: aload 10
    //   34: sipush 20000
    //   37: invokestatic 81	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   40: aload 10
    //   42: sipush 30000
    //   45: invokestatic 84	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   48: aload_0
    //   49: invokespecial 86	com/alipay/pushsdk/b/a/c:b	()Landroid/net/NetworkInfo;
    //   52: astore 11
    //   54: aload 11
    //   56: ifnull +323 -> 379
    //   59: aload 11
    //   61: invokevirtual 92	android/net/NetworkInfo:isAvailable	()Z
    //   64: ifeq +315 -> 379
    //   67: aload 11
    //   69: invokevirtual 96	android/net/NetworkInfo:getType	()I
    //   72: ifne +307 -> 379
    //   75: invokestatic 102	android/net/Proxy:getDefaultHost	()Ljava/lang/String;
    //   78: astore 21
    //   80: invokestatic 105	android/net/Proxy:getDefaultPort	()I
    //   83: istore 22
    //   85: aload 21
    //   87: ifnull +292 -> 379
    //   90: new 107	org/apache/http/HttpHost
    //   93: dup
    //   94: aload 21
    //   96: iload 22
    //   98: invokespecial 110	org/apache/http/HttpHost:<init>	(Ljava/lang/String;I)V
    //   101: astore 12
    //   103: aload 10
    //   105: ldc 112
    //   107: aload 12
    //   109: invokeinterface 118 3 0
    //   114: pop
    //   115: aload_3
    //   116: invokevirtual 121	java/net/URL:getProtocol	()Ljava/lang/String;
    //   119: astore 14
    //   121: bipush 80
    //   123: istore 15
    //   125: aload 14
    //   127: ldc 123
    //   129: invokevirtual 129	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   132: ifeq +8 -> 140
    //   135: sipush 443
    //   138: istore 15
    //   140: new 107	org/apache/http/HttpHost
    //   143: dup
    //   144: aload_3
    //   145: invokevirtual 132	java/net/URL:getHost	()Ljava/lang/String;
    //   148: iload 15
    //   150: aload 14
    //   152: invokespecial 135	org/apache/http/HttpHost:<init>	(Ljava/lang/String;ILjava/lang/String;)V
    //   155: astore 16
    //   157: aload_1
    //   158: ifnull +109 -> 267
    //   161: new 137	org/apache/http/client/methods/HttpPost
    //   164: dup
    //   165: aload_0
    //   166: getfield 20	com/alipay/pushsdk/b/a/c:a	Ljava/lang/String;
    //   169: invokespecial 138	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   172: astore 17
    //   174: new 140	org/apache/http/client/entity/UrlEncodedFormEntity
    //   177: dup
    //   178: aload_1
    //   179: ldc 142
    //   181: invokespecial 145	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;Ljava/lang/String;)V
    //   184: astore 20
    //   186: aload 17
    //   188: checkcast 137	org/apache/http/client/methods/HttpPost
    //   191: aload 20
    //   193: invokevirtual 149	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   196: aload 17
    //   198: ldc 151
    //   200: ldc 153
    //   202: invokeinterface 159 3 0
    //   207: aload 17
    //   209: ldc 161
    //   211: ldc 163
    //   213: invokeinterface 159 3 0
    //   218: aload_2
    //   219: ifnull +96 -> 315
    //   222: aload_2
    //   223: invokevirtual 169	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   226: astore 18
    //   228: aload 18
    //   230: invokeinterface 174 1 0
    //   235: ifeq +80 -> 315
    //   238: aload 17
    //   240: aload 18
    //   242: invokeinterface 178 1 0
    //   247: checkcast 180	org/apache/http/message/BasicHeader
    //   250: invokeinterface 183 2 0
    //   255: goto -27 -> 228
    //   258: astore 9
    //   260: aload 9
    //   262: invokevirtual 184	java/io/UnsupportedEncodingException:printStackTrace	()V
    //   265: aconst_null
    //   266: areturn
    //   267: new 186	org/apache/http/client/methods/HttpGet
    //   270: dup
    //   271: aload_0
    //   272: getfield 20	com/alipay/pushsdk/b/a/c:a	Ljava/lang/String;
    //   275: invokespecial 187	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   278: astore 17
    //   280: goto -84 -> 196
    //   283: astore 4
    //   285: aload 16
    //   287: astore 5
    //   289: aconst_null
    //   290: astore 6
    //   292: aload 4
    //   294: instanceof 189
    //   297: ifeq +33 -> 330
    //   300: getstatic 14	com/alipay/pushsdk/b/a/c:f	Lcom/alipay/pushsdk/b/a/a;
    //   303: aload 5
    //   305: aload 6
    //   307: invokevirtual 193	com/alipay/pushsdk/b/a/a:execute	(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    //   310: astore 8
    //   312: aload 8
    //   314: areturn
    //   315: getstatic 14	com/alipay/pushsdk/b/a/c:f	Lcom/alipay/pushsdk/b/a/a;
    //   318: aload 16
    //   320: aload 17
    //   322: invokevirtual 193	com/alipay/pushsdk/b/a/a:execute	(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    //   325: astore 19
    //   327: aload 19
    //   329: areturn
    //   330: aload 4
    //   332: athrow
    //   333: astore 7
    //   335: aload 7
    //   337: invokevirtual 53	java/lang/Exception:printStackTrace	()V
    //   340: aconst_null
    //   341: areturn
    //   342: astore 4
    //   344: aconst_null
    //   345: astore 5
    //   347: aconst_null
    //   348: astore 6
    //   350: goto -58 -> 292
    //   353: astore 4
    //   355: aload 17
    //   357: astore 6
    //   359: aload 16
    //   361: astore 5
    //   363: goto -71 -> 292
    //   366: astore 4
    //   368: aload 17
    //   370: astore 6
    //   372: aload 16
    //   374: astore 5
    //   376: goto -84 -> 292
    //   379: aconst_null
    //   380: astore 12
    //   382: goto -279 -> 103
    //
    // Exception table:
    //   from	to	target	type
    //   5	24	258	java/io/UnsupportedEncodingException
    //   24	54	258	java/io/UnsupportedEncodingException
    //   59	85	258	java/io/UnsupportedEncodingException
    //   90	103	258	java/io/UnsupportedEncodingException
    //   103	121	258	java/io/UnsupportedEncodingException
    //   125	135	258	java/io/UnsupportedEncodingException
    //   140	157	258	java/io/UnsupportedEncodingException
    //   161	174	258	java/io/UnsupportedEncodingException
    //   174	196	258	java/io/UnsupportedEncodingException
    //   196	218	258	java/io/UnsupportedEncodingException
    //   222	228	258	java/io/UnsupportedEncodingException
    //   228	255	258	java/io/UnsupportedEncodingException
    //   267	280	258	java/io/UnsupportedEncodingException
    //   315	327	258	java/io/UnsupportedEncodingException
    //   161	174	283	java/lang/Exception
    //   267	280	283	java/lang/Exception
    //   292	312	333	java/lang/Exception
    //   330	333	333	java/lang/Exception
    //   5	24	342	java/lang/Exception
    //   24	54	342	java/lang/Exception
    //   59	85	342	java/lang/Exception
    //   90	103	342	java/lang/Exception
    //   103	121	342	java/lang/Exception
    //   125	135	342	java/lang/Exception
    //   140	157	342	java/lang/Exception
    //   174	196	353	java/lang/Exception
    //   196	218	366	java/lang/Exception
    //   222	228	366	java/lang/Exception
    //   228	255	366	java/lang/Exception
    //   315	327	366	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.b.a.c
 * JD-Core Version:    0.6.2
 */