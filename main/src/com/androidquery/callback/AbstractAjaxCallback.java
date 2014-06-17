package com.androidquery.callback;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Build.VERSION;
import android.view.View;
import com.androidquery.auth.AccountHandle;
import com.androidquery.auth.GoogleHandle;
import com.androidquery.net.http.EasySSLSocketFactory;
import com.androidquery.util.AQUtility;
import com.androidquery.util.Common;
import com.androidquery.util.Progress;
import com.androidquery.util.XmlDom;
import java.io.ByteArrayInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.security.KeyStore;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpHost;
import org.apache.http.HttpResponse;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.client.params.HttpClientParams;
import org.apache.http.conn.params.ConnManagerParams;
import org.apache.http.conn.params.ConnPerRouteBean;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.protocol.HttpContext;
import org.xmlpull.v1.XmlPullParser;

public abstract class AbstractAjaxCallback<T, K>
  implements Runnable
{
  private static Transformer D;
  private static final Class<?>[] F = { String.class, Object.class, AjaxStatus.class };
  private static ExecutorService J;
  private static SocketFactory K;
  private static DefaultHttpClient L;
  private static int M = 200;
  private static int a = 30000;
  private static String b = null;
  private static int c = 4;
  private static boolean d = true;
  private static boolean e = true;
  private HttpUriRequest A;
  private boolean B = true;
  private int C = 0;
  private HttpHost E;
  private boolean G;
  private boolean H;
  private boolean I;
  private boolean N;
  private Class<T> f;
  protected boolean fileCache;
  private Reference<Object> g;
  private Object h;
  private String i;
  private WeakReference<Object> j;
  private String k;
  private String l;
  private Map<String, Object> m;
  protected boolean memCache;
  private Map<String, String> n;
  private Map<String, String> o;
  private Transformer p;
  private int q = 0;
  private File r;
  protected T result;
  private File s;
  protected AjaxStatus status;
  private AccountHandle t;
  private boolean u;
  private int v = 0;
  private long w;
  private String x = "UTF-8";
  private WeakReference<Activity> y;
  private int z = 4;

  private void afterWork()
  {
    if ((this.k != null) && (this.memCache))
      memPut(this.k, this.result);
    callback();
    clear();
  }

  private void backgroundWork()
  {
    if ((!this.u) && (this.fileCache))
      fileWork();
    if (this.result == null)
      datastoreWork();
    if (this.result == null)
      networkWork();
  }

  public static void cancel()
  {
    if (J != null)
    {
      J.shutdownNow();
      J = null;
    }
    BitmapAjaxCallback.clearTasks();
  }

  private void clear()
  {
    this.g = null;
    this.h = null;
    this.j = null;
    this.A = null;
    this.p = null;
    this.t = null;
    this.y = null;
  }

  private void copy(InputStream paramInputStream, OutputStream paramOutputStream, int paramInt)
  {
    if (this.j != null);
    for (Object localObject = this.j.get(); ; localObject = null)
    {
      Progress localProgress = null;
      if (localObject != null)
        localProgress = new Progress(localObject);
      AQUtility.copy(paramInputStream, paramOutputStream, paramInt, localProgress);
      return;
    }
  }

  private String correctEncoding(byte[] paramArrayOfByte, String paramString, AjaxStatus paramAjaxStatus)
  {
    String str3;
    while (true)
    {
      Object localObject2;
      try
      {
        if (!"utf-8".equalsIgnoreCase(paramString))
          return new String(paramArrayOfByte, paramString);
        String str1 = parseCharset(paramAjaxStatus.getHeader("Content-Type"));
        AQUtility.debug("parsing header", str1);
        if (str1 != null)
        {
          String str2 = new String(paramArrayOfByte, str1);
          return str2;
        }
      }
      catch (Exception localException1)
      {
        Exception localException2 = localException1;
        localObject2 = null;
        AQUtility.report(localException2);
        return localObject2;
      }
      str3 = new String(paramArrayOfByte, "utf-8");
      try
      {
        String str4 = getCharset(str3);
        AQUtility.debug("parsing needed", str4);
        if ((str4 == null) || ("utf-8".equalsIgnoreCase(str4)))
          break;
        AQUtility.debug("correction needed", str4);
        localObject2 = new String(paramArrayOfByte, str4);
        try
        {
          paramAjaxStatus.data(((String)localObject2).getBytes("utf-8"));
          return localObject2;
        }
        catch (Exception localException3)
        {
        }
      }
      catch (Exception localException4)
      {
        localObject2 = str3;
        Object localObject1 = localException4;
      }
    }
    return str3;
  }

  private void datastoreWork()
  {
    this.result = datastoreGet(this.k);
    if (this.result != null)
      this.status.source(2).done();
  }

  private HttpResponse execute(HttpUriRequest paramHttpUriRequest, DefaultHttpClient paramDefaultHttpClient, HttpContext paramHttpContext)
  {
    if (paramHttpUriRequest.getURI().getAuthority().contains("_"))
    {
      URL localURL = paramHttpUriRequest.getURI().toURL();
      if (localURL.getPort() == -1);
      for (HttpHost localHttpHost = new HttpHost(localURL.getHost(), 80, localURL.getProtocol()); ; localHttpHost = new HttpHost(localURL.getHost(), localURL.getPort(), localURL.getProtocol()))
        return paramDefaultHttpClient.execute(localHttpHost, paramHttpUriRequest, paramHttpContext);
    }
    return paramDefaultHttpClient.execute(paramHttpUriRequest, paramHttpContext);
  }

  public static void execute(Runnable paramRunnable)
  {
    if (J == null)
      J = Executors.newFixedThreadPool(c);
    J.execute(paramRunnable);
  }

  private static Map<String, Object> extractParams(Uri paramUri)
  {
    HashMap localHashMap = new HashMap();
    String[] arrayOfString1 = paramUri.getQuery().split("&");
    int i1 = arrayOfString1.length;
    int i2 = 0;
    if (i2 >= i1)
      return localHashMap;
    String[] arrayOfString2 = arrayOfString1[i2].split("=");
    if (arrayOfString2.length >= 2)
      localHashMap.put(arrayOfString2[0], arrayOfString2[1]);
    while (true)
    {
      i2++;
      break;
      if (arrayOfString2.length == 1)
        localHashMap.put(arrayOfString2[0], "");
    }
  }

  private static String extractUrl(Uri paramUri)
  {
    String str1 = paramUri.getScheme() + "://" + paramUri.getAuthority() + paramUri.getPath();
    String str2 = paramUri.getFragment();
    if (str2 != null)
      str1 = str1 + "#" + str2;
    return str1;
  }

  private void filePut()
  {
    byte[] arrayOfByte;
    if ((this.result != null) && (this.fileCache))
    {
      arrayOfByte = this.status.getData();
      if (arrayOfByte == null);
    }
    try
    {
      File localFile;
      if (this.status.getSource() == 1)
      {
        localFile = getCacheFile();
        if (this.status.getInvalid())
          break label78;
        filePut(this.k, this.result, localFile, arrayOfByte);
      }
      while (true)
      {
        this.status.data(null);
        return;
        label78: if (localFile.exists())
          localFile.delete();
      }
    }
    catch (Exception localException)
    {
      while (true)
        AQUtility.debug(localException);
    }
  }

  private void fileWork()
  {
    File localFile = accessFile(this.r, getCacheUrl());
    if (localFile != null)
    {
      this.status.source(3);
      this.result = fileGet(this.k, localFile, this.status);
      if (this.result != null)
        this.status.time(new Date(localFile.lastModified())).done();
    }
  }

  public static int getActiveCount()
  {
    boolean bool = J instanceof ThreadPoolExecutor;
    int i1 = 0;
    if (bool)
      i1 = ((ThreadPoolExecutor)J).getActiveCount();
    return i1;
  }

  private String getCacheUrl()
  {
    if (this.t != null)
      return this.t.getCacheUrl(this.k);
    return this.k;
  }

  private String getCharset(String paramString)
  {
    Matcher localMatcher = Pattern.compile("<meta [^>]*http-equiv[^>]*\"Content-Type\"[^>]*>", 2).matcher(paramString);
    if (!localMatcher.find())
      return null;
    return parseCharset(localMatcher.group());
  }

  private static DefaultHttpClient getClient()
  {
    BasicHttpParams localBasicHttpParams;
    SchemeRegistry localSchemeRegistry;
    if ((L == null) || (!e))
    {
      AQUtility.debug("creating http client");
      localBasicHttpParams = new BasicHttpParams();
      HttpConnectionParams.setConnectionTimeout(localBasicHttpParams, a);
      HttpConnectionParams.setSoTimeout(localBasicHttpParams, a);
      HttpClientParams.setRedirecting(localBasicHttpParams, false);
      HttpProtocolParams.setUserAgent(localBasicHttpParams, "alipay");
      ConnManagerParams.setMaxConnectionsPerRoute(localBasicHttpParams, new ConnPerRouteBean(25));
      HttpConnectionParams.setSocketBufferSize(localBasicHttpParams, 8192);
      localSchemeRegistry = new SchemeRegistry();
      localSchemeRegistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
    }
    try
    {
      KeyStore localKeyStore = KeyStore.getInstance(KeyStore.getDefaultType());
      localKeyStore.load(null, null);
      EasySSLSocketFactory localEasySSLSocketFactory = new EasySSLSocketFactory(localKeyStore);
      localEasySSLSocketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
      localSchemeRegistry.register(new Scheme("https", localEasySSLSocketFactory, 443));
      L = new DefaultHttpClient(new ThreadSafeClientConnManager(localBasicHttpParams, localSchemeRegistry), localBasicHttpParams);
      return L;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private String getEncoding(HttpEntity paramHttpEntity)
  {
    if (paramHttpEntity == null);
    Header localHeader;
    do
    {
      return null;
      localHeader = paramHttpEntity.getContentEncoding();
    }
    while (localHeader == null);
    return localHeader.getValue();
  }

  protected static int getLastStatus()
  {
    return M;
  }

  private String getNetworkUrl(String paramString)
  {
    if (this.l != null)
      paramString = this.l;
    if (this.t != null)
      paramString = this.t.getNetworkUrl(paramString);
    return paramString;
  }

  private File getPreFile()
  {
    if (isStreamingContent())
      if (this.s == null);
    for (File localFile1 = this.s; ; localFile1 = null)
      while (true)
      {
        if ((localFile1 != null) && (!localFile1.exists()));
        try
        {
          localFile1.getParentFile().mkdirs();
          localFile1.createNewFile();
          return localFile1;
          if (this.fileCache)
          {
            localFile1 = getCacheFile();
          }
          else
          {
            File localFile2 = AQUtility.getTempDir();
            if (localFile2 == null)
              localFile2 = this.r;
            localFile1 = AQUtility.getCacheFile(localFile2, this.k);
          }
        }
        catch (Exception localException)
        {
          AQUtility.report(localException);
          return null;
        }
      }
  }

  private void httpDelete(String paramString, Map<String, String> paramMap, AjaxStatus paramAjaxStatus)
  {
    AQUtility.debug("get", paramString);
    String str = patchUrl(paramString);
    httpDo(new HttpDelete(str), str, paramMap, paramAjaxStatus);
  }

  // ERROR //
  private void httpDo(HttpUriRequest paramHttpUriRequest, String paramString, Map<String, String> paramMap, AjaxStatus paramAjaxStatus)
  {
    // Byte code:
    //   0: getstatic 82	com/androidquery/callback/AbstractAjaxCallback:b	Ljava/lang/String;
    //   3: ifnull +15 -> 18
    //   6: aload_1
    //   7: ldc_w 620
    //   10: getstatic 82	com/androidquery/callback/AbstractAjaxCallback:b	Ljava/lang/String;
    //   13: invokeinterface 624 3 0
    //   18: aload_3
    //   19: ifnull +26 -> 45
    //   22: aload_3
    //   23: invokeinterface 628 1 0
    //   28: invokeinterface 634 1 0
    //   33: astore 54
    //   35: aload 54
    //   37: invokeinterface 639 1 0
    //   42: ifne +202 -> 244
    //   45: getstatic 86	com/androidquery/callback/AbstractAjaxCallback:d	Z
    //   48: ifeq +31 -> 79
    //   51: aload_3
    //   52: ifnull +15 -> 67
    //   55: aload_3
    //   56: ldc_w 641
    //   59: invokeinterface 645 2 0
    //   64: ifne +15 -> 79
    //   67: aload_1
    //   68: ldc_w 641
    //   71: ldc_w 647
    //   74: invokeinterface 624 3 0
    //   79: aload_0
    //   80: invokespecial 650	com/androidquery/callback/AbstractAjaxCallback:makeCookie	()Ljava/lang/String;
    //   83: astore 5
    //   85: aload 5
    //   87: ifnull +14 -> 101
    //   90: aload_1
    //   91: ldc_w 652
    //   94: aload 5
    //   96: invokeinterface 624 3 0
    //   101: aload_0
    //   102: getfield 174	com/androidquery/callback/AbstractAjaxCallback:t	Lcom/androidquery/auth/AccountHandle;
    //   105: ifnull +12 -> 117
    //   108: aload_0
    //   109: getfield 174	com/androidquery/callback/AbstractAjaxCallback:t	Lcom/androidquery/auth/AccountHandle;
    //   112: aload_0
    //   113: aload_1
    //   114: invokevirtual 656	com/androidquery/auth/AccountHandle:applyToken	(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;)V
    //   117: invokestatic 658	com/androidquery/callback/AbstractAjaxCallback:getClient	()Lorg/apache/http/impl/client/DefaultHttpClient;
    //   120: astore 6
    //   122: aload_1
    //   123: invokeinterface 662 1 0
    //   128: astore 7
    //   130: aload_0
    //   131: getfield 664	com/androidquery/callback/AbstractAjaxCallback:E	Lorg/apache/http/HttpHost;
    //   134: ifnull +18 -> 152
    //   137: aload 7
    //   139: ldc_w 666
    //   142: aload_0
    //   143: getfield 664	com/androidquery/callback/AbstractAjaxCallback:E	Lorg/apache/http/HttpHost;
    //   146: invokeinterface 672 3 0
    //   151: pop
    //   152: aload_0
    //   153: getfield 105	com/androidquery/callback/AbstractAjaxCallback:v	I
    //   156: ifle +39 -> 195
    //   159: aload 7
    //   161: ldc_w 674
    //   164: aload_0
    //   165: getfield 105	com/androidquery/callback/AbstractAjaxCallback:v	I
    //   168: invokestatic 679	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   171: invokeinterface 672 3 0
    //   176: pop
    //   177: aload 7
    //   179: ldc_w 681
    //   182: aload_0
    //   183: getfield 105	com/androidquery/callback/AbstractAjaxCallback:v	I
    //   186: invokestatic 679	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   189: invokeinterface 672 3 0
    //   194: pop
    //   195: new 683	org/apache/http/protocol/BasicHttpContext
    //   198: dup
    //   199: invokespecial 684	org/apache/http/protocol/BasicHttpContext:<init>	()V
    //   202: astore 8
    //   204: aload 8
    //   206: ldc_w 686
    //   209: new 688	org/apache/http/impl/client/BasicCookieStore
    //   212: dup
    //   213: invokespecial 689	org/apache/http/impl/client/BasicCookieStore:<init>	()V
    //   216: invokeinterface 694 3 0
    //   221: aload_0
    //   222: aload_1
    //   223: putfield 170	com/androidquery/callback/AbstractAjaxCallback:A	Lorg/apache/http/client/methods/HttpUriRequest;
    //   226: aload_0
    //   227: getfield 696	com/androidquery/callback/AbstractAjaxCallback:N	Z
    //   230: ifeq +48 -> 278
    //   233: new 698	java/io/IOException
    //   236: dup
    //   237: ldc_w 700
    //   240: invokespecial 701	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   243: athrow
    //   244: aload 54
    //   246: invokeinterface 704 1 0
    //   251: checkcast 92	java/lang/String
    //   254: astore 55
    //   256: aload_1
    //   257: aload 55
    //   259: aload_3
    //   260: aload 55
    //   262: invokeinterface 707 2 0
    //   267: checkcast 92	java/lang/String
    //   270: invokeinterface 624 3 0
    //   275: goto -240 -> 35
    //   278: aload_0
    //   279: aload_1
    //   280: aload 6
    //   282: aload 8
    //   284: invokespecial 709	com/androidquery/callback/AbstractAjaxCallback:execute	(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   287: astore 50
    //   289: aload 50
    //   291: astore 11
    //   293: aconst_null
    //   294: astore 12
    //   296: aload 11
    //   298: invokeinterface 715 1 0
    //   303: invokeinterface 720 1 0
    //   308: istore 13
    //   310: aload 11
    //   312: invokeinterface 715 1 0
    //   317: invokeinterface 723 1 0
    //   322: astore 14
    //   324: aconst_null
    //   325: astore 15
    //   327: aload 11
    //   329: invokeinterface 727 1 0
    //   334: astore 16
    //   336: iload 13
    //   338: sipush 200
    //   341: if_icmplt +11 -> 352
    //   344: iload 13
    //   346: sipush 300
    //   349: if_icmplt +249 -> 598
    //   352: aload 16
    //   354: ifnull +644 -> 998
    //   357: aload 16
    //   359: invokeinterface 731 1 0
    //   364: astore 27
    //   366: aload 27
    //   368: astore 17
    //   370: new 92	java/lang/String
    //   373: dup
    //   374: aload_0
    //   375: aload_0
    //   376: aload 16
    //   378: invokespecial 733	com/androidquery/callback/AbstractAjaxCallback:getEncoding	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   381: aload 17
    //   383: invokespecial 737	com/androidquery/callback/AbstractAjaxCallback:toData	(Ljava/lang/String;Ljava/io/InputStream;)[B
    //   386: ldc 107
    //   388: invokespecial 207	java/lang/String:<init>	([BLjava/lang/String;)V
    //   391: astore 18
    //   393: ldc_w 739
    //   396: aload 18
    //   398: invokestatic 222	com/androidquery/util/AQUtility:debug	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   401: aload 17
    //   403: invokestatic 743	com/androidquery/util/AQUtility:close	(Ljava/io/Closeable;)V
    //   406: aconst_null
    //   407: astore 19
    //   409: aload 18
    //   411: astore 15
    //   413: aload_2
    //   414: astore 20
    //   416: ldc_w 745
    //   419: iload 13
    //   421: invokestatic 679	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   424: invokestatic 222	com/androidquery/util/AQUtility:debug	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   427: aload 12
    //   429: ifnull +13 -> 442
    //   432: aload 12
    //   434: arraylength
    //   435: invokestatic 679	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   438: aload_2
    //   439: invokestatic 222	com/androidquery/util/AQUtility:debug	(Ljava/lang/Object;Ljava/lang/Object;)V
    //   442: aload 4
    //   444: iload 13
    //   446: invokevirtual 748	com/androidquery/callback/AjaxStatus:code	(I)Lcom/androidquery/callback/AjaxStatus;
    //   449: aload 14
    //   451: invokevirtual 752	com/androidquery/callback/AjaxStatus:message	(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    //   454: aload 15
    //   456: invokevirtual 754	com/androidquery/callback/AjaxStatus:error	(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    //   459: aload 20
    //   461: invokevirtual 757	com/androidquery/callback/AjaxStatus:redirect	(Ljava/lang/String;)Lcom/androidquery/callback/AjaxStatus;
    //   464: new 415	java/util/Date
    //   467: dup
    //   468: invokespecial 758	java/util/Date:<init>	()V
    //   471: invokevirtual 426	com/androidquery/callback/AjaxStatus:time	(Ljava/util/Date;)Lcom/androidquery/callback/AjaxStatus;
    //   474: aload 12
    //   476: invokevirtual 241	com/androidquery/callback/AjaxStatus:data	([B)Lcom/androidquery/callback/AjaxStatus;
    //   479: aload 19
    //   481: invokevirtual 762	com/androidquery/callback/AjaxStatus:file	(Ljava/io/File;)Lcom/androidquery/callback/AjaxStatus;
    //   484: aload 6
    //   486: invokevirtual 766	com/androidquery/callback/AjaxStatus:client	(Lorg/apache/http/impl/client/DefaultHttpClient;)Lcom/androidquery/callback/AjaxStatus;
    //   489: aload 8
    //   491: invokevirtual 770	com/androidquery/callback/AjaxStatus:context	(Lorg/apache/http/protocol/HttpContext;)Lcom/androidquery/callback/AjaxStatus;
    //   494: aload 11
    //   496: invokeinterface 774 1 0
    //   501: invokevirtual 778	com/androidquery/callback/AjaxStatus:headers	([Lorg/apache/http/Header;)Lcom/androidquery/callback/AjaxStatus;
    //   504: pop
    //   505: return
    //   506: astore 9
    //   508: aload_0
    //   509: getfield 664	com/androidquery/callback/AbstractAjaxCallback:E	Lorg/apache/http/HttpHost;
    //   512: ifnull +35 -> 547
    //   515: ldc_w 780
    //   518: invokestatic 463	com/androidquery/util/AQUtility:debug	(Ljava/lang/Object;)V
    //   521: aload 7
    //   523: ldc_w 666
    //   526: aconst_null
    //   527: invokeinterface 672 3 0
    //   532: pop
    //   533: aload_0
    //   534: aload_1
    //   535: aload 6
    //   537: aload 8
    //   539: invokespecial 709	com/androidquery/callback/AbstractAjaxCallback:execute	(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   542: astore 11
    //   544: goto -251 -> 293
    //   547: aload 9
    //   549: athrow
    //   550: astore 25
    //   552: aconst_null
    //   553: astore 23
    //   555: aload 25
    //   557: astore 26
    //   559: aload 26
    //   561: invokestatic 400	com/androidquery/util/AQUtility:debug	(Ljava/lang/Throwable;)V
    //   564: aload 23
    //   566: invokestatic 743	com/androidquery/util/AQUtility:close	(Ljava/io/Closeable;)V
    //   569: aload_2
    //   570: astore 20
    //   572: aconst_null
    //   573: astore 19
    //   575: aconst_null
    //   576: astore 12
    //   578: goto -162 -> 416
    //   581: astore 22
    //   583: aconst_null
    //   584: astore 23
    //   586: aload 22
    //   588: astore 24
    //   590: aload 23
    //   592: invokestatic 743	com/androidquery/util/AQUtility:close	(Ljava/io/Closeable;)V
    //   595: aload 24
    //   597: athrow
    //   598: aload 8
    //   600: ldc_w 782
    //   603: invokeinterface 785 2 0
    //   608: checkcast 287	org/apache/http/HttpHost
    //   611: astore 31
    //   613: aload 8
    //   615: ldc_w 787
    //   618: invokeinterface 785 2 0
    //   623: checkcast 259	org/apache/http/client/methods/HttpUriRequest
    //   626: astore 32
    //   628: new 343	java/lang/StringBuilder
    //   631: dup
    //   632: aload 31
    //   634: invokevirtual 790	org/apache/http/HttpHost:toURI	()Ljava/lang/String;
    //   637: invokestatic 350	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   640: invokespecial 353	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   643: aload 32
    //   645: invokeinterface 263 1 0
    //   650: invokevirtual 793	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   653: invokevirtual 366	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   656: astore 33
    //   658: bipush 32
    //   660: ldc_w 794
    //   663: aload 16
    //   665: invokeinterface 797 1 0
    //   670: l2i
    //   671: invokestatic 803	java/lang/Math:min	(II)I
    //   674: invokestatic 806	java/lang/Math:max	(II)I
    //   677: istore 34
    //   679: aload_0
    //   680: invokespecial 808	com/androidquery/callback/AbstractAjaxCallback:getPreFile	()Ljava/io/File;
    //   683: astore 38
    //   685: aload 38
    //   687: ifnonnull +129 -> 816
    //   690: new 810	com/androidquery/util/PredefinedBAOS
    //   693: dup
    //   694: iload 34
    //   696: invokespecial 811	com/androidquery/util/PredefinedBAOS:<init>	(I)V
    //   699: astore 39
    //   701: aload 39
    //   703: astore 40
    //   705: aload 16
    //   707: invokeinterface 731 1 0
    //   712: astore 41
    //   714: aload 41
    //   716: astore 42
    //   718: ldc_w 647
    //   721: aload_0
    //   722: aload 16
    //   724: invokespecial 733	com/androidquery/callback/AbstractAjaxCallback:getEncoding	(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    //   727: invokevirtual 204	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   730: ifeq +18 -> 748
    //   733: new 813	java/util/zip/GZIPInputStream
    //   736: dup
    //   737: aload 42
    //   739: invokespecial 816	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   742: astore 43
    //   744: aload 43
    //   746: astore 42
    //   748: aload_0
    //   749: aload 42
    //   751: aload 40
    //   753: aload 16
    //   755: invokeinterface 797 1 0
    //   760: l2i
    //   761: invokespecial 818	com/androidquery/callback/AbstractAjaxCallback:copy	(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    //   764: aload 40
    //   766: invokevirtual 823	java/io/OutputStream:flush	()V
    //   769: aload 38
    //   771: ifnonnull +76 -> 847
    //   774: aload 40
    //   776: checkcast 810	com/androidquery/util/PredefinedBAOS
    //   779: invokevirtual 826	com/androidquery/util/PredefinedBAOS:toByteArray	()[B
    //   782: astore 44
    //   784: aload 44
    //   786: astore 45
    //   788: aload 38
    //   790: astore 19
    //   792: aload 42
    //   794: invokestatic 743	com/androidquery/util/AQUtility:close	(Ljava/io/Closeable;)V
    //   797: aload 40
    //   799: invokestatic 743	com/androidquery/util/AQUtility:close	(Ljava/io/Closeable;)V
    //   802: aload 45
    //   804: astore 12
    //   806: aload 33
    //   808: astore 20
    //   810: aconst_null
    //   811: astore 15
    //   813: goto -397 -> 416
    //   816: aload 38
    //   818: invokevirtual 598	java/io/File:createNewFile	()Z
    //   821: pop
    //   822: new 828	java/io/BufferedOutputStream
    //   825: dup
    //   826: new 830	java/io/FileOutputStream
    //   829: dup
    //   830: aload 38
    //   832: invokespecial 833	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   835: invokespecial 836	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   838: astore 49
    //   840: aload 49
    //   842: astore 40
    //   844: goto -139 -> 705
    //   847: aload 38
    //   849: invokevirtual 395	java/io/File:exists	()Z
    //   852: ifeq +17 -> 869
    //   855: aload 38
    //   857: invokevirtual 839	java/io/File:length	()J
    //   860: lstore 46
    //   862: lload 46
    //   864: lconst_0
    //   865: lcmp
    //   866: ifne +122 -> 988
    //   869: aconst_null
    //   870: astore 19
    //   872: aconst_null
    //   873: astore 45
    //   875: goto -83 -> 792
    //   878: astore 35
    //   880: aconst_null
    //   881: astore 36
    //   883: aconst_null
    //   884: astore 37
    //   886: aload 37
    //   888: invokestatic 743	com/androidquery/util/AQUtility:close	(Ljava/io/Closeable;)V
    //   891: aload 36
    //   893: invokestatic 743	com/androidquery/util/AQUtility:close	(Ljava/io/Closeable;)V
    //   896: aload 35
    //   898: athrow
    //   899: astore 35
    //   901: aload 40
    //   903: astore 36
    //   905: aconst_null
    //   906: astore 37
    //   908: goto -22 -> 886
    //   911: astore 35
    //   913: aload 40
    //   915: astore 36
    //   917: aload 42
    //   919: astore 37
    //   921: goto -35 -> 886
    //   924: astore 35
    //   926: aload 40
    //   928: astore 36
    //   930: aload 42
    //   932: astore 37
    //   934: goto -48 -> 886
    //   937: astore 29
    //   939: aload 17
    //   941: astore 23
    //   943: aload 29
    //   945: astore 24
    //   947: goto -357 -> 590
    //   950: astore 24
    //   952: goto -362 -> 590
    //   955: astore 30
    //   957: aload 17
    //   959: astore 23
    //   961: aload 30
    //   963: astore 26
    //   965: aconst_null
    //   966: astore 15
    //   968: goto -409 -> 559
    //   971: astore 28
    //   973: aload 18
    //   975: astore 15
    //   977: aload 17
    //   979: astore 23
    //   981: aload 28
    //   983: astore 26
    //   985: goto -426 -> 559
    //   988: aload 38
    //   990: astore 19
    //   992: aconst_null
    //   993: astore 45
    //   995: goto -203 -> 792
    //   998: aconst_null
    //   999: astore 17
    //   1001: aconst_null
    //   1002: astore 18
    //   1004: goto -603 -> 401
    //
    // Exception table:
    //   from	to	target	type
    //   278	289	506	org/apache/http/conn/HttpHostConnectException
    //   357	366	550	java/lang/Exception
    //   357	366	581	finally
    //   679	685	878	finally
    //   690	701	878	finally
    //   816	840	878	finally
    //   705	714	899	finally
    //   718	744	911	finally
    //   748	769	924	finally
    //   774	784	924	finally
    //   847	862	924	finally
    //   370	393	937	finally
    //   393	401	937	finally
    //   559	564	950	finally
    //   370	393	955	java/lang/Exception
    //   393	401	971	java/lang/Exception
  }

  private void httpEntity(String paramString, HttpEntityEnclosingRequestBase paramHttpEntityEnclosingRequestBase, Map<String, String> paramMap, Map<String, Object> paramMap1, AjaxStatus paramAjaxStatus)
  {
    paramHttpEntityEnclosingRequestBase.getParams().setBooleanParameter("http.protocol.expect-continue", false);
    Object localObject1 = paramMap1.get("%entity");
    Object localObject2;
    if ((localObject1 instanceof HttpEntity))
    {
      localObject2 = (HttpEntity)localObject1;
      if ((paramMap != null) && (!paramMap.containsKey("Content-Type")))
        paramMap.put("Content-Type", "application/x-www-form-urlencoded;charset=UTF-8");
      paramHttpEntityEnclosingRequestBase.setEntity((HttpEntity)localObject2);
      httpDo(paramHttpEntityEnclosingRequestBase, paramString, paramMap, paramAjaxStatus);
      return;
    }
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramMap1.entrySet().iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localObject2 = new UrlEncodedFormEntity(localArrayList, "UTF-8");
        break;
      }
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      Object localObject3 = localEntry.getValue();
      if (localObject3 != null)
        localArrayList.add(new BasicNameValuePair((String)localEntry.getKey(), localObject3.toString()));
    }
  }

  private void httpGet(String paramString, Map<String, String> paramMap, AjaxStatus paramAjaxStatus)
  {
    AQUtility.debug("get", paramString);
    String str = patchUrl(paramString);
    httpDo(new HttpGet(str), str, paramMap, paramAjaxStatus);
  }

  private void httpMulti(String paramString, Map<String, String> paramMap, Map<String, Object> paramMap1, AjaxStatus paramAjaxStatus)
  {
    AQUtility.debug("multipart", paramString);
    HttpURLConnection localHttpURLConnection = (HttpURLConnection)new URL(paramString).openConnection();
    localHttpURLConnection.setInstanceFollowRedirects(false);
    localHttpURLConnection.setConnectTimeout(4 * a);
    localHttpURLConnection.setDoInput(true);
    localHttpURLConnection.setDoOutput(true);
    localHttpURLConnection.setUseCaches(false);
    localHttpURLConnection.setRequestMethod("POST");
    localHttpURLConnection.setRequestProperty("Connection", "Keep-Alive");
    localHttpURLConnection.setRequestProperty("Content-Type", "multipart/form-data;charset=utf-8;boundary=*****");
    Iterator localIterator2;
    DataOutputStream localDataOutputStream;
    Iterator localIterator1;
    label178: int i1;
    String str2;
    String str3;
    String str5;
    byte[] arrayOfByte;
    if (paramMap != null)
    {
      localIterator2 = paramMap.keySet().iterator();
      if (localIterator2.hasNext());
    }
    else
    {
      String str1 = makeCookie();
      if (str1 != null)
        localHttpURLConnection.setRequestProperty("Cookie", str1);
      if (this.t != null)
        this.t.applyToken(this, localHttpURLConnection);
      localDataOutputStream = new DataOutputStream(localHttpURLConnection.getOutputStream());
      localIterator1 = paramMap1.entrySet().iterator();
      if (localIterator1.hasNext())
        break label386;
      localDataOutputStream.writeBytes("--*****--\r\n");
      localDataOutputStream.flush();
      localDataOutputStream.close();
      localHttpURLConnection.connect();
      i1 = localHttpURLConnection.getResponseCode();
      str2 = localHttpURLConnection.getResponseMessage();
      str3 = localHttpURLConnection.getContentEncoding();
      if ((i1 >= 200) && (i1 < 300))
        break label423;
      String str4 = new String(toData(str3, localHttpURLConnection.getErrorStream()), "UTF-8");
      AQUtility.debug("error", str4);
      str5 = str4;
      arrayOfByte = null;
    }
    while (true)
    {
      AQUtility.debug("response", Integer.valueOf(i1));
      if (arrayOfByte != null)
        AQUtility.debug(Integer.valueOf(arrayOfByte.length), paramString);
      paramAjaxStatus.code(i1).message(str2).redirect(paramString).time(new Date()).data(arrayOfByte).error(str5).client(null);
      return;
      String str6 = (String)localIterator2.next();
      localHttpURLConnection.setRequestProperty(str6, (String)paramMap.get(str6));
      break;
      label386: Map.Entry localEntry = (Map.Entry)localIterator1.next();
      writeObject(localDataOutputStream, (String)localEntry.getKey(), localEntry.getValue());
      break label178;
      label423: arrayOfByte = toData(str3, localHttpURLConnection.getInputStream());
      str5 = null;
    }
  }

  private void httpPost(String paramString, Map<String, String> paramMap, Map<String, Object> paramMap1, AjaxStatus paramAjaxStatus)
  {
    AQUtility.debug("post", paramString);
    httpEntity(paramString, new HttpPost(paramString), paramMap, paramMap1, paramAjaxStatus);
  }

  private void httpPut(String paramString, Map<String, String> paramMap, Map<String, Object> paramMap1, AjaxStatus paramAjaxStatus)
  {
    AQUtility.debug("put", paramString);
    httpEntity(paramString, new HttpPut(paramString), paramMap, paramMap1, paramAjaxStatus);
  }

  private boolean isActive()
  {
    if (this.y == null)
      return true;
    Activity localActivity = (Activity)this.y.get();
    return (localActivity != null) && (!localActivity.isFinishing());
  }

  private static boolean isMultiPart(Map<String, Object> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    Object localObject;
    do
    {
      if (!localIterator.hasNext())
        return false;
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localObject = localEntry.getValue();
      AQUtility.debug(localEntry.getKey(), localObject);
    }
    while ((!(localObject instanceof File)) && (!(localObject instanceof byte[])) && (!(localObject instanceof InputStream)));
    return true;
  }

  private String makeCookie()
  {
    if ((this.o == null) || (this.o.size() == 0))
      return null;
    Iterator localIterator = this.o.keySet().iterator();
    StringBuilder localStringBuilder = new StringBuilder();
    while (true)
    {
      if (!localIterator.hasNext())
        return localStringBuilder.toString();
      String str1 = (String)localIterator.next();
      String str2 = (String)this.o.get(str1);
      localStringBuilder.append(str1);
      localStringBuilder.append("=");
      localStringBuilder.append(str2);
      if (localIterator.hasNext())
        localStringBuilder.append("; ");
    }
  }

  private void network()
  {
    String str1 = this.k;
    Object localObject = this.m;
    if ((localObject == null) && (str1.length() > 2000))
    {
      Uri localUri = Uri.parse(str1);
      str1 = extractUrl(localUri);
      localObject = extractParams(localUri);
    }
    String str2 = getNetworkUrl(str1);
    if (2 == this.z)
    {
      httpDelete(str2, this.n, this.status);
      return;
    }
    if (3 == this.z)
    {
      httpPut(str2, this.n, (Map)localObject, this.status);
      return;
    }
    if ((1 == this.z) && (localObject == null))
      localObject = new HashMap();
    if (localObject == null)
    {
      httpGet(str2, this.n, this.status);
      return;
    }
    if (isMultiPart((Map)localObject))
    {
      httpMulti(str2, this.n, (Map)localObject, this.status);
      return;
    }
    httpPost(str2, this.n, (Map)localObject, this.status);
  }

  private void network(int paramInt)
  {
    if (paramInt <= 1)
      network();
    while (true)
    {
      return;
      int i1 = 0;
      while (i1 < paramInt)
        try
        {
          network();
          return;
        }
        catch (IOException localIOException)
        {
          if (i1 == paramInt - 1)
            throw localIOException;
          i1++;
        }
    }
  }

  private void networkWork()
  {
    if (this.k == null)
    {
      this.status.code(-101).done();
      return;
    }
    try
    {
      network(1 + this.C);
      if ((this.t != null) && (this.t.expired(this, this.status)) && (!this.I))
      {
        AQUtility.debug("reauth needed", this.status.getMessage());
        this.I = true;
        if (this.t.reauth(this))
          network();
      }
      else
      {
        byte[] arrayOfByte2 = this.status.getData();
        arrayOfByte1 = arrayOfByte2;
      }
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          this.result = transform(this.k, arrayOfByte1, this.status);
          if ((this.result == null) && (arrayOfByte1 != null))
            this.status.code(-103).message("transform error");
          M = this.status.getCode();
          this.status.done();
          return;
          this.status.reauth(true);
          return;
          localException1 = localException1;
          AQUtility.debug(localException1);
          this.status.code(-101).message("network error");
          byte[] arrayOfByte1 = null;
        }
      }
      catch (Exception localException2)
      {
        while (true)
          AQUtility.debug(localException2);
      }
    }
  }

  private String parseCharset(String paramString)
  {
    if (paramString == null);
    int i1;
    do
    {
      return null;
      i1 = paramString.indexOf("charset");
    }
    while (i1 == -1);
    int i2 = paramString.indexOf(";", i1);
    if (i2 == -1)
      i2 = paramString.length();
    return paramString.substring(i1 + 7, i2).replaceAll("[^\\w-]", "");
  }

  private static String patchUrl(String paramString)
  {
    return paramString.replaceAll(" ", "%20").replaceAll("\\|", "%7C");
  }

  private K self()
  {
    return this;
  }

  public static void setAgent(String paramString)
  {
    b = paramString;
  }

  public static void setGZip(boolean paramBoolean)
  {
    d = paramBoolean;
  }

  public static void setNetworkLimit(int paramInt)
  {
    c = Math.max(1, Math.min(25, paramInt));
    J = null;
    AQUtility.debug("setting network limit", Integer.valueOf(c));
  }

  public static void setReuseHttpClient(boolean paramBoolean)
  {
    e = paramBoolean;
    L = null;
  }

  public static void setSSF(SocketFactory paramSocketFactory)
  {
    K = paramSocketFactory;
    L = null;
  }

  public static void setTimeout(int paramInt)
  {
    a = paramInt;
  }

  public static void setTransformer(Transformer paramTransformer)
  {
    D = paramTransformer;
  }

  private byte[] toData(String paramString, InputStream paramInputStream)
  {
    if ("gzip".equalsIgnoreCase(paramString))
      paramInputStream = new GZIPInputStream(paramInputStream);
    return AQUtility.toBytes(paramInputStream);
  }

  // ERROR //
  private void wake()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 1116	com/androidquery/callback/AbstractAjaxCallback:H	Z
    //   4: ifne +4 -> 8
    //   7: return
    //   8: aload_0
    //   9: monitorenter
    //   10: aload_0
    //   11: invokevirtual 1119	java/lang/Object:notifyAll	()V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: astore_2
    //   18: aload_0
    //   19: monitorexit
    //   20: aload_2
    //   21: athrow
    //   22: astore_1
    //   23: goto -9 -> 14
    //
    // Exception table:
    //   from	to	target	type
    //   10	14	17	finally
    //   14	16	17	finally
    //   10	14	22	java/lang/Exception
  }

  private void work(Context paramContext)
  {
    Object localObject = memGet(this.k);
    if (localObject != null)
    {
      this.result = localObject;
      this.status.source(4).done();
      callback();
      return;
    }
    this.r = AQUtility.getCacheDir(paramContext, this.q);
    execute(this);
  }

  private static void writeData(DataOutputStream paramDataOutputStream, String paramString1, String paramString2, InputStream paramInputStream)
  {
    paramDataOutputStream.writeBytes("--*****\r\n");
    paramDataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + paramString1 + "\"; filename=\"" + paramString2 + "\"\r\n");
    paramDataOutputStream.writeBytes("Content-Type: application/octet-stream");
    paramDataOutputStream.writeBytes("\r\n");
    paramDataOutputStream.writeBytes("Content-Transfer-Encoding: binary");
    paramDataOutputStream.writeBytes("\r\n");
    paramDataOutputStream.writeBytes("\r\n");
    AQUtility.copy(paramInputStream, paramDataOutputStream);
    paramDataOutputStream.writeBytes("\r\n");
  }

  private static void writeField(DataOutputStream paramDataOutputStream, String paramString1, String paramString2)
  {
    paramDataOutputStream.writeBytes("--*****\r\n");
    paramDataOutputStream.writeBytes("Content-Disposition: form-data; name=\"" + paramString1 + "\"");
    paramDataOutputStream.writeBytes("\r\n");
    paramDataOutputStream.writeBytes("\r\n");
    paramDataOutputStream.write(paramString2.getBytes("UTF-8"));
    paramDataOutputStream.writeBytes("\r\n");
  }

  private static void writeObject(DataOutputStream paramDataOutputStream, String paramString, Object paramObject)
  {
    if (paramObject == null)
      return;
    if ((paramObject instanceof File))
    {
      File localFile = (File)paramObject;
      writeData(paramDataOutputStream, paramString, localFile.getName(), new FileInputStream(localFile));
      return;
    }
    if ((paramObject instanceof byte[]))
    {
      writeData(paramDataOutputStream, paramString, paramString, new ByteArrayInputStream((byte[])paramObject));
      return;
    }
    if ((paramObject instanceof InputStream))
    {
      writeData(paramDataOutputStream, paramString, paramString, (InputStream)paramObject);
      return;
    }
    writeField(paramDataOutputStream, paramString, paramObject.toString());
  }

  public void abort()
  {
    this.N = true;
    if ((this.A != null) && (!this.A.isAborted()))
      this.A.abort();
  }

  protected File accessFile(File paramFile, String paramString)
  {
    if (this.w < 0L);
    File localFile;
    do
    {
      return null;
      localFile = AQUtility.getExistedCacheByUrl(paramFile, paramString);
    }
    while ((localFile != null) && (this.w != 0L) && (System.currentTimeMillis() - localFile.lastModified() > this.w));
    return localFile;
  }

  public void async(Activity paramActivity)
  {
    if (paramActivity.isFinishing())
      AQUtility.warn("Warning", "Possible memory leak. Calling ajax with a terminated activity.");
    if (this.f == null)
    {
      AQUtility.warn("Warning", "type() is not called with response type.");
      return;
    }
    this.y = new WeakReference(paramActivity);
    async(paramActivity);
  }

  public void async(Context paramContext)
  {
    if (this.status == null)
    {
      this.status = new AjaxStatus();
      this.status.redirect(this.k).refresh(this.u);
    }
    while (true)
    {
      showProgress(true);
      if ((this.t == null) || (this.t.authenticated()))
        break;
      AQUtility.debug("auth needed", this.k);
      this.t.auth(this);
      return;
      if (this.status.getDone())
      {
        this.status.reset();
        this.result = null;
      }
    }
    work(paramContext);
  }

  public K auth(Activity paramActivity, String paramString1, String paramString2)
  {
    if ((Build.VERSION.SDK_INT >= 5) && (paramString1.startsWith("g.")))
      this.t = new GoogleHandle(paramActivity, paramString1, paramString2);
    return self();
  }

  public K auth(AccountHandle paramAccountHandle)
  {
    this.t = paramAccountHandle;
    return self();
  }

  public void block()
  {
    if (AQUtility.isUIThread())
      throw new IllegalStateException("Cannot block UI thread.");
    if (this.G)
      return;
    try
    {
      try
      {
        this.H = true;
        wait(5000 + a);
        return;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }
    catch (Exception localException)
    {
    }
  }

  protected boolean cacheAvailable(Context paramContext)
  {
    return (this.fileCache) && (AQUtility.getExistedCacheByUrl(AQUtility.getCacheDir(paramContext, this.q), this.k) != null);
  }

  void callback()
  {
    showProgress(false);
    this.G = true;
    if (isActive())
      if (this.i != null)
      {
        Object localObject = getHandler();
        Class[] arrayOfClass1 = new Class[3];
        arrayOfClass1[0] = String.class;
        arrayOfClass1[1] = this.f;
        arrayOfClass1[2] = AjaxStatus.class;
        String str = this.i;
        Class[] arrayOfClass2 = F;
        Object[] arrayOfObject = new Object[3];
        arrayOfObject[0] = this.k;
        arrayOfObject[1] = this.result;
        arrayOfObject[2] = this.status;
        AQUtility.invokeHandler(localObject, str, true, true, arrayOfClass1, arrayOfClass2, arrayOfObject);
      }
    while (true)
    {
      filePut();
      if (!this.H)
        this.status.close();
      wake();
      AQUtility.debugNotify();
      return;
      try
      {
        callback(this.k, this.result, this.status);
      }
      catch (Exception localException)
      {
        AQUtility.report(localException);
      }
      continue;
      skip(this.k, this.result, this.status);
    }
  }

  public void callback(String paramString, T paramT, AjaxStatus paramAjaxStatus)
  {
  }

  public K cookie(String paramString1, String paramString2)
  {
    if (this.o == null)
      this.o = new HashMap();
    this.o.put(paramString1, paramString2);
    return self();
  }

  protected T datastoreGet(String paramString)
  {
    return null;
  }

  public K encoding(String paramString)
  {
    this.x = paramString;
    return self();
  }

  public K expire(long paramLong)
  {
    this.w = paramLong;
    return self();
  }

  public void failure(int paramInt, String paramString)
  {
    if (this.status != null)
    {
      this.status.code(paramInt).message(paramString);
      callback();
    }
  }

  public K fileCache(boolean paramBoolean)
  {
    this.fileCache = paramBoolean;
    return self();
  }

  protected T fileGet(String paramString, File paramFile, AjaxStatus paramAjaxStatus)
  {
    try
    {
      if (isStreamingContent())
        paramAjaxStatus.file(paramFile);
      byte[] arrayOfByte;
      for (Object localObject = null; ; localObject = arrayOfByte)
      {
        return transform(paramString, (byte[])localObject, paramAjaxStatus);
        arrayOfByte = AQUtility.toBytes(new FileInputStream(paramFile));
      }
    }
    catch (Exception localException)
    {
      AQUtility.debug(localException);
    }
    return null;
  }

  protected void filePut(String paramString, T paramT, File paramFile, byte[] paramArrayOfByte)
  {
    if ((paramFile == null) || (paramArrayOfByte == null))
      return;
    AQUtility.storeAsync(paramFile, paramArrayOfByte, 0L);
  }

  protected File getCacheFile()
  {
    return AQUtility.getCacheFile(this.r, getCacheUrl());
  }

  public String getCallback()
  {
    return this.i;
  }

  public String getEncoding()
  {
    return this.x;
  }

  public Object getHandler()
  {
    if (this.h != null)
      return this.h;
    if (this.g == null)
      return null;
    return this.g.get();
  }

  public T getResult()
  {
    return this.result;
  }

  public AjaxStatus getStatus()
  {
    return this.status;
  }

  public Class<T> getType()
  {
    return this.f;
  }

  public String getUrl()
  {
    return this.k;
  }

  public K handler(Object paramObject, String paramString)
  {
    this.h = paramObject;
    this.i = paramString;
    this.g = null;
    return self();
  }

  public K header(String paramString1, String paramString2)
  {
    if (this.n == null)
      this.n = new HashMap();
    this.n.put(paramString1, paramString2);
    return self();
  }

  protected boolean isStreamingContent()
  {
    return (File.class.equals(this.f)) || (XmlPullParser.class.equals(this.f)) || (InputStream.class.equals(this.f)) || (XmlDom.class.equals(this.f));
  }

  public K memCache(boolean paramBoolean)
  {
    this.memCache = paramBoolean;
    return self();
  }

  protected T memGet(String paramString)
  {
    return null;
  }

  protected void memPut(String paramString, T paramT)
  {
  }

  public K method(int paramInt)
  {
    this.z = paramInt;
    return self();
  }

  public K networkUrl(String paramString)
  {
    this.l = paramString;
    return self();
  }

  public K param(String paramString, Object paramObject)
  {
    if (this.m == null)
      this.m = new HashMap();
    this.m.put(paramString, paramObject);
    return self();
  }

  public K params(Map<String, ?> paramMap)
  {
    this.m = paramMap;
    return self();
  }

  public K policy(int paramInt)
  {
    this.q = paramInt;
    return self();
  }

  public K progress(Dialog paramDialog)
  {
    return progress(paramDialog);
  }

  public K progress(View paramView)
  {
    return progress(paramView);
  }

  public K progress(Object paramObject)
  {
    if (paramObject != null)
      this.j = new WeakReference(paramObject);
    return self();
  }

  public K proxy(String paramString, int paramInt)
  {
    this.E = new HttpHost(paramString, paramInt);
    return self();
  }

  public K refresh(boolean paramBoolean)
  {
    this.u = paramBoolean;
    return self();
  }

  public K retry(int paramInt)
  {
    this.C = paramInt;
    return self();
  }

  public void run()
  {
    if (!this.status.getDone())
      try
      {
        backgroundWork();
        if (!this.status.getReauth())
        {
          if (this.B)
            AQUtility.post(this);
        }
        else
          return;
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          AQUtility.debug(localThrowable);
          this.status.code(-101).done();
        }
        afterWork();
        return;
      }
    afterWork();
  }

  protected void showProgress(boolean paramBoolean)
  {
    if (this.j == null);
    for (Object localObject = null; ; localObject = this.j.get())
    {
      if (localObject != null)
      {
        if (!AQUtility.isUIThread())
          break;
        Common.showProgress(localObject, this.k, paramBoolean);
      }
      return;
    }
    AQUtility.post(new AbstractAjaxCallback.1(this, localObject, paramBoolean));
  }

  protected void skip(String paramString, T paramT, AjaxStatus paramAjaxStatus)
  {
  }

  public K targetFile(File paramFile)
  {
    this.s = paramFile;
    return self();
  }

  public K timeout(int paramInt)
  {
    this.v = paramInt;
    return self();
  }

  // ERROR //
  protected T transform(String paramString, byte[] paramArrayOfByte, AjaxStatus paramAjaxStatus)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   4: ifnonnull +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_3
    //   10: invokevirtual 1364	com/androidquery/callback/AjaxStatus:getFile	()Ljava/io/File;
    //   13: astore 4
    //   15: aload_2
    //   16: ifnull +286 -> 302
    //   19: aload_0
    //   20: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   23: ldc_w 1366
    //   26: invokevirtual 1313	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   29: ifeq +11 -> 40
    //   32: aload_2
    //   33: iconst_0
    //   34: aload_2
    //   35: arraylength
    //   36: invokestatic 1372	android/graphics/BitmapFactory:decodeByteArray	([BII)Landroid/graphics/Bitmap;
    //   39: areturn
    //   40: aload_0
    //   41: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   44: ldc_w 1374
    //   47: invokevirtual 1313	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   50: ifeq +58 -> 108
    //   53: new 92	java/lang/String
    //   56: dup
    //   57: aload_2
    //   58: aload_0
    //   59: getfield 109	com/androidquery/callback/AbstractAjaxCallback:x	Ljava/lang/String;
    //   62: invokespecial 207	java/lang/String:<init>	([BLjava/lang/String;)V
    //   65: astore 17
    //   67: new 1376	org/json/JSONTokener
    //   70: dup
    //   71: aload 17
    //   73: invokespecial 1377	org/json/JSONTokener:<init>	(Ljava/lang/String;)V
    //   76: invokevirtual 1380	org/json/JSONTokener:nextValue	()Ljava/lang/Object;
    //   79: checkcast 1374	org/json/JSONObject
    //   82: astore 19
    //   84: aload 19
    //   86: areturn
    //   87: astore 18
    //   89: aconst_null
    //   90: astore 17
    //   92: aload 18
    //   94: invokestatic 400	com/androidquery/util/AQUtility:debug	(Ljava/lang/Throwable;)V
    //   97: aload 17
    //   99: invokestatic 463	com/androidquery/util/AQUtility:debug	(Ljava/lang/Object;)V
    //   102: aconst_null
    //   103: astore 19
    //   105: goto -21 -> 84
    //   108: aload_0
    //   109: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   112: ldc_w 1382
    //   115: invokevirtual 1313	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   118: ifeq +46 -> 164
    //   121: new 1376	org/json/JSONTokener
    //   124: dup
    //   125: new 92	java/lang/String
    //   128: dup
    //   129: aload_2
    //   130: aload_0
    //   131: getfield 109	com/androidquery/callback/AbstractAjaxCallback:x	Ljava/lang/String;
    //   134: invokespecial 207	java/lang/String:<init>	([BLjava/lang/String;)V
    //   137: invokespecial 1377	org/json/JSONTokener:<init>	(Ljava/lang/String;)V
    //   140: invokevirtual 1380	org/json/JSONTokener:nextValue	()Ljava/lang/Object;
    //   143: checkcast 1382	org/json/JSONArray
    //   146: astore 16
    //   148: aload 16
    //   150: areturn
    //   151: astore 15
    //   153: aload 15
    //   155: invokestatic 400	com/androidquery/util/AQUtility:debug	(Ljava/lang/Throwable;)V
    //   158: aconst_null
    //   159: astore 16
    //   161: goto -13 -> 148
    //   164: aload_0
    //   165: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   168: ldc 92
    //   170: invokevirtual 1313	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   173: ifeq +60 -> 233
    //   176: aload_3
    //   177: invokevirtual 379	com/androidquery/callback/AjaxStatus:getSource	()I
    //   180: iconst_1
    //   181: if_icmpne +20 -> 201
    //   184: ldc_w 1383
    //   187: invokestatic 463	com/androidquery/util/AQUtility:debug	(Ljava/lang/Object;)V
    //   190: aload_0
    //   191: aload_2
    //   192: aload_0
    //   193: getfield 109	com/androidquery/callback/AbstractAjaxCallback:x	Ljava/lang/String;
    //   196: aload_3
    //   197: invokespecial 1385	com/androidquery/callback/AbstractAjaxCallback:correctEncoding	([BLjava/lang/String;Lcom/androidquery/callback/AjaxStatus;)Ljava/lang/String;
    //   200: areturn
    //   201: ldc_w 1386
    //   204: invokestatic 463	com/androidquery/util/AQUtility:debug	(Ljava/lang/Object;)V
    //   207: new 92	java/lang/String
    //   210: dup
    //   211: aload_2
    //   212: aload_0
    //   213: getfield 109	com/androidquery/callback/AbstractAjaxCallback:x	Ljava/lang/String;
    //   216: invokespecial 207	java/lang/String:<init>	([BLjava/lang/String;)V
    //   219: astore 13
    //   221: aload 13
    //   223: areturn
    //   224: astore 14
    //   226: aload 14
    //   228: invokestatic 400	com/androidquery/util/AQUtility:debug	(Ljava/lang/Throwable;)V
    //   231: aconst_null
    //   232: areturn
    //   233: aload_0
    //   234: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   237: ldc_w 993
    //   240: invokevirtual 1313	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   243: ifeq +5 -> 248
    //   246: aload_2
    //   247: areturn
    //   248: aload_0
    //   249: getfield 172	com/androidquery/callback/AbstractAjaxCallback:p	Lcom/androidquery/callback/Transformer;
    //   252: ifnull +24 -> 276
    //   255: aload_0
    //   256: getfield 172	com/androidquery/callback/AbstractAjaxCallback:p	Lcom/androidquery/callback/Transformer;
    //   259: aload_1
    //   260: aload_0
    //   261: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   264: aload_0
    //   265: getfield 109	com/androidquery/callback/AbstractAjaxCallback:x	Ljava/lang/String;
    //   268: aload_2
    //   269: aload_3
    //   270: invokeinterface 1391 6 0
    //   275: areturn
    //   276: getstatic 1109	com/androidquery/callback/AbstractAjaxCallback:D	Lcom/androidquery/callback/Transformer;
    //   279: ifnull -272 -> 7
    //   282: getstatic 1109	com/androidquery/callback/AbstractAjaxCallback:D	Lcom/androidquery/callback/Transformer;
    //   285: aload_1
    //   286: aload_0
    //   287: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   290: aload_0
    //   291: getfield 109	com/androidquery/callback/AbstractAjaxCallback:x	Ljava/lang/String;
    //   294: aload_2
    //   295: aload_3
    //   296: invokeinterface 1391 6 0
    //   301: areturn
    //   302: aload 4
    //   304: ifnull -297 -> 7
    //   307: aload_0
    //   308: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   311: ldc_w 392
    //   314: invokevirtual 1313	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   317: ifeq +6 -> 323
    //   320: aload 4
    //   322: areturn
    //   323: aload_0
    //   324: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   327: ldc_w 1317
    //   330: invokevirtual 1313	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   333: ifeq +43 -> 376
    //   336: new 1161	java/io/FileInputStream
    //   339: dup
    //   340: aload 4
    //   342: invokespecial 1162	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   345: astore 10
    //   347: new 1317	com/androidquery/util/XmlDom
    //   350: dup
    //   351: aload 10
    //   353: invokespecial 1392	com/androidquery/util/XmlDom:<init>	(Ljava/io/InputStream;)V
    //   356: astore 11
    //   358: aload_3
    //   359: aload 10
    //   361: invokevirtual 1395	com/androidquery/callback/AjaxStatus:closeLater	(Ljava/io/Closeable;)V
    //   364: aload 11
    //   366: areturn
    //   367: astore 12
    //   369: aload 12
    //   371: invokestatic 226	com/androidquery/util/AQUtility:report	(Ljava/lang/Throwable;)V
    //   374: aconst_null
    //   375: areturn
    //   376: aload_0
    //   377: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   380: ldc_w 1315
    //   383: invokevirtual 1313	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   386: ifeq +50 -> 436
    //   389: invokestatic 1401	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   392: astore 7
    //   394: new 1161	java/io/FileInputStream
    //   397: dup
    //   398: aload 4
    //   400: invokespecial 1162	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   403: astore 8
    //   405: aload 7
    //   407: aload 8
    //   409: aload_0
    //   410: getfield 109	com/androidquery/callback/AbstractAjaxCallback:x	Ljava/lang/String;
    //   413: invokeinterface 1405 3 0
    //   418: aload_3
    //   419: aload 8
    //   421: invokevirtual 1395	com/androidquery/callback/AjaxStatus:closeLater	(Ljava/io/Closeable;)V
    //   424: aload 7
    //   426: areturn
    //   427: astore 9
    //   429: aload 9
    //   431: invokestatic 226	com/androidquery/util/AQUtility:report	(Ljava/lang/Throwable;)V
    //   434: aconst_null
    //   435: areturn
    //   436: aload_0
    //   437: getfield 1197	com/androidquery/callback/AbstractAjaxCallback:f	Ljava/lang/Class;
    //   440: ldc_w 995
    //   443: invokevirtual 1313	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   446: ifeq -439 -> 7
    //   449: new 1161	java/io/FileInputStream
    //   452: dup
    //   453: aload 4
    //   455: invokespecial 1162	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   458: astore 5
    //   460: aload_3
    //   461: aload 5
    //   463: invokevirtual 1395	com/androidquery/callback/AjaxStatus:closeLater	(Ljava/io/Closeable;)V
    //   466: aload 5
    //   468: areturn
    //   469: astore 6
    //   471: aload 6
    //   473: invokestatic 226	com/androidquery/util/AQUtility:report	(Ljava/lang/Throwable;)V
    //   476: aconst_null
    //   477: areturn
    //   478: astore 18
    //   480: goto -388 -> 92
    //
    // Exception table:
    //   from	to	target	type
    //   53	67	87	java/lang/Exception
    //   121	148	151	java/lang/Exception
    //   207	221	224	java/lang/Exception
    //   336	364	367	java/lang/Exception
    //   394	424	427	java/lang/Exception
    //   449	466	469	java/lang/Exception
    //   67	84	478	java/lang/Exception
  }

  public K transformer(Transformer paramTransformer)
  {
    this.p = paramTransformer;
    return self();
  }

  public K type(Class<T> paramClass)
  {
    this.f = paramClass;
    return self();
  }

  public K uiCallback(boolean paramBoolean)
  {
    this.B = paramBoolean;
    return self();
  }

  public K url(String paramString)
  {
    this.k = paramString;
    return self();
  }

  public K weakHandler(Object paramObject, String paramString)
  {
    this.g = new WeakReference(paramObject);
    this.i = paramString;
    this.h = null;
    return self();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.callback.AbstractAjaxCallback
 * JD-Core Version:    0.6.2
 */