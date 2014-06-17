package com.alipay.mobile.common.transport.http;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.mobile.common.cache.disk.CacheException;
import com.alipay.mobile.common.cache.disk.lru.LruDiskCache;
import com.alipay.mobile.common.logagent.SystemExceptionHandler;
import com.alipay.mobile.common.security.Des;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;
import com.alipay.mobile.common.transport.spdy.mwallet.SpdyStrategy;
import com.alipay.mobile.common.utils.IOUtil;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Callable;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpRequestRetryHandler;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicNameValuePair;

public class HttpWorker
  implements Callable
{
  private static final HttpRequestRetryHandler a = new ZHttpRequestRetryHandler();
  private Context b;
  private HttpUrlRequest c;
  private int d = 0;
  private HttpContextExtend e = HttpContextExtend.getInstance();
  private boolean f = false;
  private boolean g = false;
  private String h = null;
  protected HttpManager mHttpManager;
  int mRedirects;
  String mUrl;

  public HttpWorker(HttpManager paramHttpManager, HttpUrlRequest paramHttpUrlRequest)
  {
    this.mHttpManager = paramHttpManager;
    this.b = this.mHttpManager.mContext;
    this.c = paramHttpUrlRequest;
  }

  private static HttpUrlHeader a(HttpResponse paramHttpResponse)
  {
    HttpUrlHeader localHttpUrlHeader = new HttpUrlHeader();
    for (Header localHeader : paramHttpResponse.getAllHeaders())
      localHttpUrlHeader.setHead(localHeader.getName(), localHeader.getValue());
    return localHttpUrlHeader;
  }

  private Object a(String paramString)
  {
    Serializable localSerializable1;
    try
    {
      Serializable localSerializable2 = this.e.getDiskCache().getSerializable(null, paramString);
      localSerializable1 = localSerializable2;
      try
      {
        if ((localSerializable1 instanceof CachedResponseWrapper))
        {
          CachedResponseWrapper localCachedResponseWrapper = (CachedResponseWrapper)localSerializable1;
          byte[] arrayOfByte = Des.decrypt(localCachedResponseWrapper.getValue(), HttpWorker.DesKey.get());
          if (arrayOfByte == null)
          {
            b(paramString);
            return null;
          }
          localCachedResponseWrapper.setValue(arrayOfByte);
          return localSerializable1;
        }
      }
      catch (CacheException localCacheException1)
      {
        localCacheException1.printStackTrace();
        return localSerializable1;
      }
    }
    catch (CacheException localCacheException2)
    {
      while (true)
        localSerializable1 = null;
    }
    return localSerializable1;
  }

  private static void a(Exception paramException)
  {
    SystemExceptionHandler.getInstance().saveConnInfoToFile(paramException, "MonitorPoint_ConnectErr");
  }

  private boolean a(NetCallGrapher paramNetCallGrapher)
  {
    try
    {
      ArrayList localArrayList = this.c.getReqData();
      BasicNameValuePair localBasicNameValuePair;
      if (localArrayList != null)
      {
        Iterator localIterator = localArrayList.iterator();
        do
        {
          if (!localIterator.hasNext())
            break;
          localBasicNameValuePair = (BasicNameValuePair)localIterator.next();
        }
        while (!TextUtils.equals(localBasicNameValuePair.getName(), "operationType"));
      }
      for (String str = localBasicNameValuePair.getValue(); !TextUtils.isEmpty(str); str = null)
      {
        paramNetCallGrapher.setApi(str);
        boolean bool = SpdyStrategy.getInstance().isUseSpdy(this.b, str, paramNetCallGrapher, this.c.getUrl());
        return bool;
      }
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private void b(String paramString)
  {
    if ((this.f == true) && (!this.g))
    {
      this.e.getDiskCache().remove(paramString);
      new StringBuilder("removeEtagFromCache，完成,").append(Thread.currentThread().getId()).toString();
    }
  }

  // ERROR //
  public Response call()
  {
    // Byte code:
    //   0: invokestatic 254	com/alipay/mobile/common/logging/PerformanceLog:getInstance	()Lcom/alipay/mobile/common/logging/PerformanceLog;
    //   3: new 200	java/lang/StringBuilder
    //   6: dup
    //   7: ldc_w 256
    //   10: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   13: aload_0
    //   14: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   17: invokevirtual 191	com/alipay/mobile/common/transport/http/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   20: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   23: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   26: invokevirtual 262	com/alipay/mobile/common/logging/PerformanceLog:log	(Ljava/lang/String;)V
    //   29: aload_0
    //   30: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   33: invokevirtual 266	com/alipay/mobile/common/transport/http/HttpUrlRequest:getCallback	()Lcom/alipay/mobile/common/transport/TransportCallback;
    //   36: astore_1
    //   37: aload_0
    //   38: getfield 54	com/alipay/mobile/common/transport/http/HttpWorker:mHttpManager	Lcom/alipay/mobile/common/transport/http/HttpManager;
    //   41: invokevirtual 270	com/alipay/mobile/common/transport/http/HttpManager:getHttpClient	()Lcom/alipay/mobile/common/transport/http/AndroidHttpClient;
    //   44: astore_2
    //   45: aconst_null
    //   46: astore_3
    //   47: new 180	com/alipay/mobile/common/transport/http/NetCallGrapher
    //   50: dup
    //   51: invokestatic 275	com/alipay/mobile/common/info/AppInfo:getInstance	()Lcom/alipay/mobile/common/info/AppInfo;
    //   54: invokevirtual 278	com/alipay/mobile/common/info/AppInfo:getmProductVersion	()Ljava/lang/String;
    //   57: ldc_w 280
    //   60: new 200	java/lang/StringBuilder
    //   63: dup
    //   64: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   67: getstatic 286	android/os/Build$VERSION:SDK_INT	I
    //   70: invokevirtual 289	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   73: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokespecial 292	com/alipay/mobile/common/transport/http/NetCallGrapher:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   79: astore 4
    //   81: aload_0
    //   82: getfield 61	com/alipay/mobile/common/transport/http/HttpWorker:b	Landroid/content/Context;
    //   85: invokestatic 298	com/alipay/mobile/common/transport/utils/NetworkUtils:isNetworkAvailable	(Landroid/content/Context;)Z
    //   88: istore 35
    //   90: aconst_null
    //   91: astore_3
    //   92: iload 35
    //   94: ifne +135 -> 229
    //   97: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   100: dup
    //   101: iconst_1
    //   102: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   105: ldc_w 306
    //   108: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   111: athrow
    //   112: astore 33
    //   114: aload 33
    //   116: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   119: aload 4
    //   121: ldc_w 313
    //   124: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   127: aload_3
    //   128: ifnull +9 -> 137
    //   131: aload_3
    //   132: invokeinterface 321 1 0
    //   137: aload_1
    //   138: ifnull +23 -> 161
    //   141: aload_1
    //   142: aload_0
    //   143: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   146: aload 33
    //   148: invokevirtual 325	com/alipay/mobile/common/transport/http/HttpException:getCode	()I
    //   151: aload 33
    //   153: invokevirtual 328	com/alipay/mobile/common/transport/http/HttpException:getMsg	()Ljava/lang/String;
    //   156: invokeinterface 334 4 0
    //   161: new 200	java/lang/StringBuilder
    //   164: dup
    //   165: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   168: aload 33
    //   170: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   173: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   176: pop
    //   177: aload 33
    //   179: athrow
    //   180: astore 7
    //   182: aload 4
    //   184: aload_0
    //   185: getfield 61	com/alipay/mobile/common/transport/http/HttpWorker:b	Landroid/content/Context;
    //   188: invokevirtual 341	com/alipay/mobile/common/transport/http/NetCallGrapher:upGrapher2Server	(Landroid/content/Context;)V
    //   191: aload 4
    //   193: invokevirtual 342	com/alipay/mobile/common/transport/http/NetCallGrapher:toString	()Ljava/lang/String;
    //   196: pop
    //   197: invokestatic 254	com/alipay/mobile/common/logging/PerformanceLog:getInstance	()Lcom/alipay/mobile/common/logging/PerformanceLog;
    //   200: new 200	java/lang/StringBuilder
    //   203: dup
    //   204: ldc_w 344
    //   207: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   210: aload_0
    //   211: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   214: invokevirtual 191	com/alipay/mobile/common/transport/http/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   217: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   220: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   223: invokevirtual 262	com/alipay/mobile/common/logging/PerformanceLog:log	(Ljava/lang/String;)V
    //   226: aload 7
    //   228: athrow
    //   229: aload 4
    //   231: aload_0
    //   232: getfield 61	com/alipay/mobile/common/transport/http/HttpWorker:b	Landroid/content/Context;
    //   235: invokestatic 350	com/alipay/mobile/common/utils/ConnectionUtil:getConnType	(Landroid/content/Context;)I
    //   238: aload_0
    //   239: getfield 61	com/alipay/mobile/common/transport/http/HttpWorker:b	Landroid/content/Context;
    //   242: ldc_w 352
    //   245: invokevirtual 357	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   248: checkcast 359	android/telephony/TelephonyManager
    //   251: invokevirtual 362	android/telephony/TelephonyManager:getNetworkType	()I
    //   254: invokevirtual 366	com/alipay/mobile/common/transport/http/NetCallGrapher:setNetInfo	(II)V
    //   257: aconst_null
    //   258: astore_3
    //   259: aload_1
    //   260: ifnull +13 -> 273
    //   263: aload_1
    //   264: aload_0
    //   265: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   268: invokeinterface 370 2 0
    //   273: aload_2
    //   274: invokevirtual 376	com/alipay/mobile/common/transport/http/AndroidHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   277: astore 36
    //   279: aload_0
    //   280: getfield 61	com/alipay/mobile/common/transport/http/HttpWorker:b	Landroid/content/Context;
    //   283: invokestatic 380	com/alipay/mobile/common/transport/utils/NetworkUtils:getProxy	(Landroid/content/Context;)Lorg/apache/http/HttpHost;
    //   286: astore 37
    //   288: aload 36
    //   290: ldc_w 382
    //   293: aload 37
    //   295: invokeinterface 388 3 0
    //   300: pop
    //   301: new 390	java/net/URL
    //   304: dup
    //   305: aload_0
    //   306: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   309: invokevirtual 191	com/alipay/mobile/common/transport/http/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   312: invokespecial 391	java/net/URL:<init>	(Ljava/lang/String;)V
    //   315: astore 39
    //   317: aload 39
    //   319: invokevirtual 394	java/net/URL:getPort	()I
    //   322: istore 40
    //   324: aconst_null
    //   325: astore_3
    //   326: iload 40
    //   328: iconst_m1
    //   329: if_icmpne +206 -> 535
    //   332: aload 39
    //   334: invokevirtual 397	java/net/URL:getDefaultPort	()I
    //   337: istore 41
    //   339: new 399	org/apache/http/HttpHost
    //   342: dup
    //   343: aload 39
    //   345: invokevirtual 402	java/net/URL:getHost	()Ljava/lang/String;
    //   348: iload 41
    //   350: aload 39
    //   352: invokevirtual 405	java/net/URL:getProtocol	()Ljava/lang/String;
    //   355: invokespecial 408	org/apache/http/HttpHost:<init>	(Ljava/lang/String;ILjava/lang/String;)V
    //   358: astore 42
    //   360: aload_0
    //   361: invokevirtual 412	com/alipay/mobile/common/transport/http/HttpWorker:getPostData	()Lorg/apache/http/entity/StringEntity;
    //   364: astore 43
    //   366: aconst_null
    //   367: astore_3
    //   368: aload 43
    //   370: ifnull +175 -> 545
    //   373: new 414	org/apache/http/client/methods/HttpPost
    //   376: dup
    //   377: aload_0
    //   378: invokevirtual 418	com/alipay/mobile/common/transport/http/HttpWorker:getUri	()Ljava/net/URI;
    //   381: invokespecial 421	org/apache/http/client/methods/HttpPost:<init>	(Ljava/net/URI;)V
    //   384: astore 44
    //   386: aload 44
    //   388: aload 43
    //   390: invokevirtual 425	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   393: aload 44
    //   395: astore_3
    //   396: aload_0
    //   397: aload_0
    //   398: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   401: invokevirtual 428	com/alipay/mobile/common/transport/http/HttpUrlRequest:hashCode	()I
    //   404: invokestatic 433	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   407: putfield 52	com/alipay/mobile/common/transport/http/HttpWorker:h	Ljava/lang/String;
    //   410: aload_0
    //   411: aload_0
    //   412: getfield 52	com/alipay/mobile/common/transport/http/HttpWorker:h	Ljava/lang/String;
    //   415: invokespecial 435	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/String;)Ljava/lang/Object;
    //   418: astore 45
    //   420: aload 45
    //   422: ifnull +138 -> 560
    //   425: aload 45
    //   427: instanceof 89
    //   430: ifne +130 -> 560
    //   433: aload_3
    //   434: new 437	org/apache/http/message/BasicHeader
    //   437: dup
    //   438: ldc_w 439
    //   441: aload 45
    //   443: checkcast 101	com/alipay/mobile/common/transport/http/CachedResponseWrapper
    //   446: invokevirtual 442	com/alipay/mobile/common/transport/http/CachedResponseWrapper:getEtag	()Ljava/lang/String;
    //   449: invokespecial 444	org/apache/http/message/BasicHeader:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   452: invokeinterface 448 2 0
    //   457: aload_0
    //   458: iconst_1
    //   459: putfield 48	com/alipay/mobile/common/transport/http/HttpWorker:f	Z
    //   462: aload_0
    //   463: invokevirtual 451	com/alipay/mobile/common/transport/http/HttpWorker:getHeaders	()Ljava/util/ArrayList;
    //   466: astore 46
    //   468: aload 46
    //   470: ifnull +192 -> 662
    //   473: aload 46
    //   475: invokevirtual 152	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   478: astore 47
    //   480: aload 47
    //   482: invokeinterface 158 1 0
    //   487: ifeq +175 -> 662
    //   490: aload_3
    //   491: aload 47
    //   493: invokeinterface 162 1 0
    //   498: checkcast 75	org/apache/http/Header
    //   501: invokeinterface 448 2 0
    //   506: goto -26 -> 480
    //   509: astore 32
    //   511: aload 4
    //   513: ldc_w 453
    //   516: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   519: new 455	java/lang/RuntimeException
    //   522: dup
    //   523: ldc_w 457
    //   526: aload 32
    //   528: invokevirtual 461	java/net/URISyntaxException:getCause	()Ljava/lang/Throwable;
    //   531: invokespecial 464	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   534: athrow
    //   535: aload 39
    //   537: invokevirtual 394	java/net/URL:getPort	()I
    //   540: istore 41
    //   542: goto -203 -> 339
    //   545: new 466	org/apache/http/client/methods/HttpGet
    //   548: dup
    //   549: aload_0
    //   550: invokevirtual 418	com/alipay/mobile/common/transport/http/HttpWorker:getUri	()Ljava/net/URI;
    //   553: invokespecial 467	org/apache/http/client/methods/HttpGet:<init>	(Ljava/net/URI;)V
    //   556: astore_3
    //   557: goto -161 -> 396
    //   560: aload_0
    //   561: iconst_0
    //   562: putfield 48	com/alipay/mobile/common/transport/http/HttpWorker:f	Z
    //   565: goto -103 -> 462
    //   568: astore 30
    //   570: aload 30
    //   572: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   575: aload 4
    //   577: ldc_w 469
    //   580: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   583: aload_3
    //   584: invokeinterface 321 1 0
    //   589: aload_1
    //   590: ifnull +29 -> 619
    //   593: aload_1
    //   594: aload_0
    //   595: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   598: iconst_2
    //   599: new 200	java/lang/StringBuilder
    //   602: dup
    //   603: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   606: aload 30
    //   608: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   611: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   614: invokeinterface 334 4 0
    //   619: new 200	java/lang/StringBuilder
    //   622: dup
    //   623: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   626: aload 30
    //   628: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   631: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   634: pop
    //   635: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   638: dup
    //   639: iconst_2
    //   640: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   643: new 200	java/lang/StringBuilder
    //   646: dup
    //   647: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   650: aload 30
    //   652: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   655: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   658: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   661: athrow
    //   662: aload_3
    //   663: invokestatic 473	com/alipay/mobile/common/transport/http/AndroidHttpClient:modifyRequestToAcceptGzipResponse	(Lorg/apache/http/HttpRequest;)V
    //   666: aload_3
    //   667: invokestatic 476	com/alipay/mobile/common/transport/http/AndroidHttpClient:modifyRequestToKeepAlive	(Lorg/apache/http/HttpRequest;)V
    //   670: new 478	org/apache/http/protocol/BasicHttpContext
    //   673: dup
    //   674: invokespecial 479	org/apache/http/protocol/BasicHttpContext:<init>	()V
    //   677: astore 48
    //   679: aload_3
    //   680: ldc_w 481
    //   683: invokestatic 486	android/webkit/CookieManager:getInstance	()Landroid/webkit/CookieManager;
    //   686: aload_3
    //   687: invokeinterface 489 1 0
    //   692: invokevirtual 492	java/net/URI:getHost	()Ljava/lang/String;
    //   695: invokevirtual 496	android/webkit/CookieManager:getCookie	(Ljava/lang/String;)Ljava/lang/String;
    //   698: invokeinterface 498 3 0
    //   703: new 500	org/apache/http/impl/client/BasicCookieStore
    //   706: dup
    //   707: invokespecial 501	org/apache/http/impl/client/BasicCookieStore:<init>	()V
    //   710: astore 49
    //   712: aload 48
    //   714: ldc_w 503
    //   717: aload 49
    //   719: invokeinterface 509 3 0
    //   724: invokestatic 254	com/alipay/mobile/common/logging/PerformanceLog:getInstance	()Lcom/alipay/mobile/common/logging/PerformanceLog;
    //   727: new 200	java/lang/StringBuilder
    //   730: dup
    //   731: ldc_w 511
    //   734: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   737: aload_0
    //   738: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   741: invokevirtual 191	com/alipay/mobile/common/transport/http/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   744: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   747: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   750: invokevirtual 262	com/alipay/mobile/common/logging/PerformanceLog:log	(Ljava/lang/String;)V
    //   753: aload_2
    //   754: getstatic 34	com/alipay/mobile/common/transport/http/HttpWorker:a	Lorg/apache/http/client/HttpRequestRetryHandler;
    //   757: invokevirtual 515	com/alipay/mobile/common/transport/http/AndroidHttpClient:setHttpRequestRetryHandler	(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    //   760: invokestatic 520	java/lang/System:currentTimeMillis	()J
    //   763: lstore 50
    //   765: aload 4
    //   767: lload 50
    //   769: invokevirtual 524	com/alipay/mobile/common/transport/http/NetCallGrapher:setStartTime	(J)V
    //   772: aload_0
    //   773: aload 4
    //   775: invokespecial 526	com/alipay/mobile/common/transport/http/HttpWorker:a	(Lcom/alipay/mobile/common/transport/http/NetCallGrapher;)Z
    //   778: ifeq +378 -> 1156
    //   781: aload_0
    //   782: getfield 54	com/alipay/mobile/common/transport/http/HttpWorker:mHttpManager	Lcom/alipay/mobile/common/transport/http/HttpManager;
    //   785: invokevirtual 530	com/alipay/mobile/common/transport/http/HttpManager:getsHttpClient	()Lcom/alipay/mobile/common/transport/http/AndroidSpdyHttpClient;
    //   788: astore 62
    //   790: aload 4
    //   792: invokevirtual 533	com/alipay/mobile/common/transport/http/NetCallGrapher:setSpdyCall	()V
    //   795: aload 62
    //   797: invokevirtual 539	com/alipay/mobile/common/transport/http/AndroidSpdyHttpClient:getClient	()Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    //   800: getstatic 542	com/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy:DEFAULT_CONNECTION_TIMEOUT	I
    //   803: i2l
    //   804: getstatic 548	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   807: invokevirtual 554	com/alipay/mobile/common/transport/spdy/OkHttpClient:setConnectTimeout	(JLjava/util/concurrent/TimeUnit;)V
    //   810: aload 62
    //   812: invokevirtual 539	com/alipay/mobile/common/transport/http/AndroidSpdyHttpClient:getClient	()Lcom/alipay/mobile/common/transport/spdy/OkHttpClient;
    //   815: getstatic 557	com/alipay/mobile/common/transport/spdy/mwallet/SpdyStrategy:DEFAULT_READ_TIMEOUT	I
    //   818: i2l
    //   819: getstatic 548	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   822: invokevirtual 560	com/alipay/mobile/common/transport/spdy/OkHttpClient:setReadTimeout	(JLjava/util/concurrent/TimeUnit;)V
    //   825: aload 62
    //   827: invokevirtual 561	com/alipay/mobile/common/transport/http/AndroidSpdyHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   830: ldc_w 382
    //   833: aload 37
    //   835: invokeinterface 388 3 0
    //   840: pop
    //   841: aload 48
    //   843: ldc_w 563
    //   846: aload 4
    //   848: invokeinterface 509 3 0
    //   853: aload 62
    //   855: aload 42
    //   857: aload_3
    //   858: aload 48
    //   860: invokevirtual 567	com/alipay/mobile/common/transport/http/AndroidSpdyHttpClient:execute	(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   863: astore 52
    //   865: invokestatic 520	java/lang/System:currentTimeMillis	()J
    //   868: lstore 53
    //   870: aload_0
    //   871: getfield 54	com/alipay/mobile/common/transport/http/HttpWorker:mHttpManager	Lcom/alipay/mobile/common/transport/http/HttpManager;
    //   874: lload 53
    //   876: lload 50
    //   878: lsub
    //   879: invokevirtual 570	com/alipay/mobile/common/transport/http/HttpManager:addConnectTime	(J)V
    //   882: aload 4
    //   884: lload 53
    //   886: invokevirtual 573	com/alipay/mobile/common/transport/http/NetCallGrapher:setEndTime	(J)V
    //   889: invokestatic 254	com/alipay/mobile/common/logging/PerformanceLog:getInstance	()Lcom/alipay/mobile/common/logging/PerformanceLog;
    //   892: new 200	java/lang/StringBuilder
    //   895: dup
    //   896: ldc_w 575
    //   899: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   902: aload_0
    //   903: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   906: invokevirtual 191	com/alipay/mobile/common/transport/http/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   909: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   912: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   915: invokevirtual 262	com/alipay/mobile/common/logging/PerformanceLog:log	(Ljava/lang/String;)V
    //   918: aload 49
    //   920: invokeinterface 581 1 0
    //   925: astore 55
    //   927: aload 55
    //   929: invokeinterface 585 1 0
    //   934: ifne +241 -> 1175
    //   937: invokestatic 486	android/webkit/CookieManager:getInstance	()Landroid/webkit/CookieManager;
    //   940: astore 58
    //   942: aload 55
    //   944: invokeinterface 586 1 0
    //   949: astore 59
    //   951: aload 59
    //   953: invokeinterface 158 1 0
    //   958: ifeq +217 -> 1175
    //   961: aload 59
    //   963: invokeinterface 162 1 0
    //   968: checkcast 588	org/apache/http/cookie/Cookie
    //   971: astore 60
    //   973: aload 60
    //   975: invokeinterface 591 1 0
    //   980: ifnull -29 -> 951
    //   983: new 200	java/lang/StringBuilder
    //   986: dup
    //   987: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   990: aload 60
    //   992: invokeinterface 592 1 0
    //   997: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1000: ldc_w 594
    //   1003: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1006: aload 60
    //   1008: invokeinterface 595 1 0
    //   1013: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1016: ldc_w 597
    //   1019: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1022: aload 60
    //   1024: invokeinterface 591 1 0
    //   1029: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1032: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1035: astore 61
    //   1037: aload 58
    //   1039: aload_3
    //   1040: invokeinterface 489 1 0
    //   1045: invokevirtual 492	java/net/URI:getHost	()Ljava/lang/String;
    //   1048: aload 61
    //   1050: invokevirtual 600	android/webkit/CookieManager:setCookie	(Ljava/lang/String;Ljava/lang/String;)V
    //   1053: invokestatic 605	android/webkit/CookieSyncManager:getInstance	()Landroid/webkit/CookieSyncManager;
    //   1056: invokevirtual 608	android/webkit/CookieSyncManager:sync	()V
    //   1059: goto -108 -> 951
    //   1062: astore 28
    //   1064: aload 28
    //   1066: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   1069: aload 4
    //   1071: ldc_w 610
    //   1074: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   1077: aload_3
    //   1078: invokeinterface 321 1 0
    //   1083: aload_1
    //   1084: ifnull +29 -> 1113
    //   1087: aload_1
    //   1088: aload_0
    //   1089: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   1092: iconst_2
    //   1093: new 200	java/lang/StringBuilder
    //   1096: dup
    //   1097: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1100: aload 28
    //   1102: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1105: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1108: invokeinterface 334 4 0
    //   1113: new 200	java/lang/StringBuilder
    //   1116: dup
    //   1117: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1120: aload 28
    //   1122: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1125: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1128: pop
    //   1129: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   1132: dup
    //   1133: iconst_2
    //   1134: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1137: new 200	java/lang/StringBuilder
    //   1140: dup
    //   1141: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1144: aload 28
    //   1146: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1149: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1152: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   1155: athrow
    //   1156: aload 4
    //   1158: invokevirtual 613	com/alipay/mobile/common/transport/http/NetCallGrapher:setHttpsCall	()V
    //   1161: aload_2
    //   1162: aload 42
    //   1164: aload_3
    //   1165: aload 48
    //   1167: invokevirtual 614	com/alipay/mobile/common/transport/http/AndroidHttpClient:execute	(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   1170: astore 52
    //   1172: goto -307 -> 865
    //   1175: aload_0
    //   1176: aload 52
    //   1178: aload_0
    //   1179: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   1182: aload_1
    //   1183: invokevirtual 618	com/alipay/mobile/common/transport/http/HttpWorker:processResponse	(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;Lcom/alipay/mobile/common/transport/TransportCallback;)Lcom/alipay/mobile/common/transport/Response;
    //   1186: astore 56
    //   1188: aload 4
    //   1190: aload_0
    //   1191: getfield 61	com/alipay/mobile/common/transport/http/HttpWorker:b	Landroid/content/Context;
    //   1194: invokevirtual 341	com/alipay/mobile/common/transport/http/NetCallGrapher:upGrapher2Server	(Landroid/content/Context;)V
    //   1197: aload 4
    //   1199: invokevirtual 342	com/alipay/mobile/common/transport/http/NetCallGrapher:toString	()Ljava/lang/String;
    //   1202: pop
    //   1203: invokestatic 254	com/alipay/mobile/common/logging/PerformanceLog:getInstance	()Lcom/alipay/mobile/common/logging/PerformanceLog;
    //   1206: new 200	java/lang/StringBuilder
    //   1209: dup
    //   1210: ldc_w 344
    //   1213: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1216: aload_0
    //   1217: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   1220: invokevirtual 191	com/alipay/mobile/common/transport/http/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   1223: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1226: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1229: invokevirtual 262	com/alipay/mobile/common/logging/PerformanceLog:log	(Ljava/lang/String;)V
    //   1232: aload 56
    //   1234: areturn
    //   1235: astore 26
    //   1237: aload 26
    //   1239: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   1242: aload 4
    //   1244: ldc_w 620
    //   1247: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   1250: aload_3
    //   1251: invokeinterface 321 1 0
    //   1256: aload_1
    //   1257: ifnull +30 -> 1287
    //   1260: aload_1
    //   1261: aload_0
    //   1262: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   1265: bipush 6
    //   1267: new 200	java/lang/StringBuilder
    //   1270: dup
    //   1271: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1274: aload 26
    //   1276: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1279: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1282: invokeinterface 334 4 0
    //   1287: new 200	java/lang/StringBuilder
    //   1290: dup
    //   1291: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1294: aload 26
    //   1296: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1299: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1302: pop
    //   1303: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   1306: dup
    //   1307: bipush 6
    //   1309: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1312: new 200	java/lang/StringBuilder
    //   1315: dup
    //   1316: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1319: aload 26
    //   1321: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1324: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1327: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   1330: athrow
    //   1331: astore 24
    //   1333: aload 24
    //   1335: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   1338: aload 4
    //   1340: ldc_w 622
    //   1343: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   1346: aload_3
    //   1347: invokeinterface 321 1 0
    //   1352: aload_1
    //   1353: ifnull +29 -> 1382
    //   1356: aload_1
    //   1357: aload_0
    //   1358: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   1361: iconst_3
    //   1362: new 200	java/lang/StringBuilder
    //   1365: dup
    //   1366: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1369: aload 24
    //   1371: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1374: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1377: invokeinterface 334 4 0
    //   1382: new 200	java/lang/StringBuilder
    //   1385: dup
    //   1386: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1389: aload 24
    //   1391: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1394: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1397: pop
    //   1398: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   1401: dup
    //   1402: iconst_3
    //   1403: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1406: new 200	java/lang/StringBuilder
    //   1409: dup
    //   1410: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1413: aload 24
    //   1415: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1418: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1421: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   1424: athrow
    //   1425: astore 22
    //   1427: aload_3
    //   1428: invokeinterface 321 1 0
    //   1433: aload 4
    //   1435: ldc_w 624
    //   1438: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   1441: aload_1
    //   1442: ifnull +29 -> 1471
    //   1445: aload_1
    //   1446: aload_0
    //   1447: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   1450: iconst_3
    //   1451: new 200	java/lang/StringBuilder
    //   1454: dup
    //   1455: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1458: aload 22
    //   1460: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1463: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1466: invokeinterface 334 4 0
    //   1471: new 200	java/lang/StringBuilder
    //   1474: dup
    //   1475: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1478: aload 22
    //   1480: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1483: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1486: pop
    //   1487: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   1490: dup
    //   1491: iconst_3
    //   1492: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1495: new 200	java/lang/StringBuilder
    //   1498: dup
    //   1499: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1502: aload 22
    //   1504: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1507: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1510: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   1513: athrow
    //   1514: astore 20
    //   1516: aload 20
    //   1518: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   1521: aload 4
    //   1523: ldc_w 626
    //   1526: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   1529: aload_3
    //   1530: invokeinterface 321 1 0
    //   1535: aload_1
    //   1536: ifnull +29 -> 1565
    //   1539: aload_1
    //   1540: aload_0
    //   1541: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   1544: iconst_4
    //   1545: new 200	java/lang/StringBuilder
    //   1548: dup
    //   1549: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1552: aload 20
    //   1554: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1557: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1560: invokeinterface 334 4 0
    //   1565: new 200	java/lang/StringBuilder
    //   1568: dup
    //   1569: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1572: aload 20
    //   1574: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1577: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1580: pop
    //   1581: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   1584: dup
    //   1585: iconst_4
    //   1586: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1589: new 200	java/lang/StringBuilder
    //   1592: dup
    //   1593: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1596: aload 20
    //   1598: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1601: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1604: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   1607: athrow
    //   1608: astore 18
    //   1610: aload 18
    //   1612: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   1615: aload 4
    //   1617: ldc_w 628
    //   1620: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   1623: aload_3
    //   1624: invokeinterface 321 1 0
    //   1629: aload_1
    //   1630: ifnull +29 -> 1659
    //   1633: aload_1
    //   1634: aload_0
    //   1635: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   1638: iconst_5
    //   1639: new 200	java/lang/StringBuilder
    //   1642: dup
    //   1643: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1646: aload 18
    //   1648: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1651: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1654: invokeinterface 334 4 0
    //   1659: new 200	java/lang/StringBuilder
    //   1662: dup
    //   1663: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1666: aload 18
    //   1668: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1671: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1674: pop
    //   1675: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   1678: dup
    //   1679: iconst_5
    //   1680: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1683: new 200	java/lang/StringBuilder
    //   1686: dup
    //   1687: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1690: aload 18
    //   1692: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1695: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1698: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   1701: athrow
    //   1702: astore 17
    //   1704: aload 17
    //   1706: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   1709: aload 4
    //   1711: ldc_w 630
    //   1714: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   1717: aload_3
    //   1718: invokeinterface 321 1 0
    //   1723: aload_1
    //   1724: ifnull +29 -> 1753
    //   1727: aload_1
    //   1728: aload_0
    //   1729: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   1732: iconst_1
    //   1733: new 200	java/lang/StringBuilder
    //   1736: dup
    //   1737: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1740: aload 17
    //   1742: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1745: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1748: invokeinterface 334 4 0
    //   1753: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   1756: dup
    //   1757: iconst_1
    //   1758: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1761: new 200	java/lang/StringBuilder
    //   1764: dup
    //   1765: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1768: aload 17
    //   1770: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1773: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1776: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   1779: athrow
    //   1780: astore 15
    //   1782: aload 15
    //   1784: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   1787: aload 4
    //   1789: ldc_w 632
    //   1792: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   1795: aload_3
    //   1796: invokeinterface 321 1 0
    //   1801: aload_1
    //   1802: ifnull +29 -> 1831
    //   1805: aload_1
    //   1806: aload_0
    //   1807: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   1810: iconst_1
    //   1811: new 200	java/lang/StringBuilder
    //   1814: dup
    //   1815: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1818: aload 15
    //   1820: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1823: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1826: invokeinterface 334 4 0
    //   1831: new 200	java/lang/StringBuilder
    //   1834: dup
    //   1835: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1838: aload 15
    //   1840: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1843: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1846: pop
    //   1847: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   1850: dup
    //   1851: iconst_1
    //   1852: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1855: new 200	java/lang/StringBuilder
    //   1858: dup
    //   1859: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1862: aload 15
    //   1864: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1867: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1870: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   1873: athrow
    //   1874: astore 13
    //   1876: aload 13
    //   1878: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   1881: aload 4
    //   1883: ldc_w 634
    //   1886: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   1889: aload_3
    //   1890: invokeinterface 321 1 0
    //   1895: aload_1
    //   1896: ifnull +30 -> 1926
    //   1899: aload_1
    //   1900: aload_0
    //   1901: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   1904: bipush 6
    //   1906: new 200	java/lang/StringBuilder
    //   1909: dup
    //   1910: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1913: aload 13
    //   1915: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1918: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1921: invokeinterface 334 4 0
    //   1926: new 200	java/lang/StringBuilder
    //   1929: dup
    //   1930: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1933: aload 13
    //   1935: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1938: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1941: pop
    //   1942: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   1945: dup
    //   1946: bipush 6
    //   1948: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1951: new 200	java/lang/StringBuilder
    //   1954: dup
    //   1955: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   1958: aload 13
    //   1960: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1963: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1966: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   1969: athrow
    //   1970: astore 9
    //   1972: aload 9
    //   1974: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   1977: aload 4
    //   1979: ldc_w 636
    //   1982: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   1985: aload_3
    //   1986: invokeinterface 321 1 0
    //   1991: aload_0
    //   1992: getfield 38	com/alipay/mobile/common/transport/http/HttpWorker:d	I
    //   1995: ifgt +66 -> 2061
    //   1998: aload_0
    //   1999: iconst_1
    //   2000: aload_0
    //   2001: getfield 38	com/alipay/mobile/common/transport/http/HttpWorker:d	I
    //   2004: iadd
    //   2005: putfield 38	com/alipay/mobile/common/transport/http/HttpWorker:d	I
    //   2008: aload_0
    //   2009: invokevirtual 638	com/alipay/mobile/common/transport/http/HttpWorker:call	()Lcom/alipay/mobile/common/transport/Response;
    //   2012: astore 11
    //   2014: aload 4
    //   2016: aload_0
    //   2017: getfield 61	com/alipay/mobile/common/transport/http/HttpWorker:b	Landroid/content/Context;
    //   2020: invokevirtual 341	com/alipay/mobile/common/transport/http/NetCallGrapher:upGrapher2Server	(Landroid/content/Context;)V
    //   2023: aload 4
    //   2025: invokevirtual 342	com/alipay/mobile/common/transport/http/NetCallGrapher:toString	()Ljava/lang/String;
    //   2028: pop
    //   2029: invokestatic 254	com/alipay/mobile/common/logging/PerformanceLog:getInstance	()Lcom/alipay/mobile/common/logging/PerformanceLog;
    //   2032: new 200	java/lang/StringBuilder
    //   2035: dup
    //   2036: ldc_w 344
    //   2039: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   2042: aload_0
    //   2043: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   2046: invokevirtual 191	com/alipay/mobile/common/transport/http/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   2049: invokevirtual 259	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   2052: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2055: invokevirtual 262	com/alipay/mobile/common/logging/PerformanceLog:log	(Ljava/lang/String;)V
    //   2058: aload 11
    //   2060: areturn
    //   2061: new 200	java/lang/StringBuilder
    //   2064: dup
    //   2065: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   2068: aload 9
    //   2070: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   2073: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2076: pop
    //   2077: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   2080: dup
    //   2081: iconst_0
    //   2082: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2085: new 200	java/lang/StringBuilder
    //   2088: dup
    //   2089: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   2092: aload 9
    //   2094: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   2097: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2100: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   2103: athrow
    //   2104: astore 5
    //   2106: aload 5
    //   2108: invokestatic 311	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/Exception;)V
    //   2111: aload 4
    //   2113: ldc_w 640
    //   2116: invokevirtual 316	com/alipay/mobile/common/transport/http/NetCallGrapher:setErrorCode	(Ljava/lang/String;)V
    //   2119: aload_3
    //   2120: invokeinterface 321 1 0
    //   2125: aload_1
    //   2126: ifnull +29 -> 2155
    //   2129: aload_1
    //   2130: aload_0
    //   2131: getfield 63	com/alipay/mobile/common/transport/http/HttpWorker:c	Lcom/alipay/mobile/common/transport/http/HttpUrlRequest;
    //   2134: iconst_0
    //   2135: new 200	java/lang/StringBuilder
    //   2138: dup
    //   2139: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   2142: aload 5
    //   2144: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   2147: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2150: invokeinterface 334 4 0
    //   2155: new 200	java/lang/StringBuilder
    //   2158: dup
    //   2159: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   2162: aload 5
    //   2164: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   2167: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2170: pop
    //   2171: new 225	com/alipay/mobile/common/transport/http/HttpException
    //   2174: dup
    //   2175: iconst_0
    //   2176: invokestatic 304	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   2179: new 200	java/lang/StringBuilder
    //   2182: dup
    //   2183: invokespecial 281	java/lang/StringBuilder:<init>	()V
    //   2186: aload 5
    //   2188: invokevirtual 337	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   2191: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   2194: invokespecial 309	com/alipay/mobile/common/transport/http/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   2197: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   81	90	112	com/alipay/mobile/common/transport/http/HttpException
    //   97	112	112	com/alipay/mobile/common/transport/http/HttpException
    //   229	257	112	com/alipay/mobile/common/transport/http/HttpException
    //   263	273	112	com/alipay/mobile/common/transport/http/HttpException
    //   273	324	112	com/alipay/mobile/common/transport/http/HttpException
    //   332	339	112	com/alipay/mobile/common/transport/http/HttpException
    //   339	366	112	com/alipay/mobile/common/transport/http/HttpException
    //   373	393	112	com/alipay/mobile/common/transport/http/HttpException
    //   396	420	112	com/alipay/mobile/common/transport/http/HttpException
    //   425	462	112	com/alipay/mobile/common/transport/http/HttpException
    //   462	468	112	com/alipay/mobile/common/transport/http/HttpException
    //   473	480	112	com/alipay/mobile/common/transport/http/HttpException
    //   480	506	112	com/alipay/mobile/common/transport/http/HttpException
    //   535	542	112	com/alipay/mobile/common/transport/http/HttpException
    //   545	557	112	com/alipay/mobile/common/transport/http/HttpException
    //   560	565	112	com/alipay/mobile/common/transport/http/HttpException
    //   662	865	112	com/alipay/mobile/common/transport/http/HttpException
    //   865	951	112	com/alipay/mobile/common/transport/http/HttpException
    //   951	1059	112	com/alipay/mobile/common/transport/http/HttpException
    //   1156	1172	112	com/alipay/mobile/common/transport/http/HttpException
    //   1175	1188	112	com/alipay/mobile/common/transport/http/HttpException
    //   81	90	180	finally
    //   97	112	180	finally
    //   114	127	180	finally
    //   131	137	180	finally
    //   141	161	180	finally
    //   161	180	180	finally
    //   229	257	180	finally
    //   263	273	180	finally
    //   273	324	180	finally
    //   332	339	180	finally
    //   339	366	180	finally
    //   373	393	180	finally
    //   396	420	180	finally
    //   425	462	180	finally
    //   462	468	180	finally
    //   473	480	180	finally
    //   480	506	180	finally
    //   511	535	180	finally
    //   535	542	180	finally
    //   545	557	180	finally
    //   560	565	180	finally
    //   570	589	180	finally
    //   593	619	180	finally
    //   619	662	180	finally
    //   662	865	180	finally
    //   865	951	180	finally
    //   951	1059	180	finally
    //   1064	1083	180	finally
    //   1087	1113	180	finally
    //   1113	1156	180	finally
    //   1156	1172	180	finally
    //   1175	1188	180	finally
    //   1237	1256	180	finally
    //   1260	1287	180	finally
    //   1287	1331	180	finally
    //   1333	1352	180	finally
    //   1356	1382	180	finally
    //   1382	1425	180	finally
    //   1427	1441	180	finally
    //   1445	1471	180	finally
    //   1471	1514	180	finally
    //   1516	1535	180	finally
    //   1539	1565	180	finally
    //   1565	1608	180	finally
    //   1610	1629	180	finally
    //   1633	1659	180	finally
    //   1659	1702	180	finally
    //   1704	1723	180	finally
    //   1727	1753	180	finally
    //   1753	1780	180	finally
    //   1782	1801	180	finally
    //   1805	1831	180	finally
    //   1831	1874	180	finally
    //   1876	1895	180	finally
    //   1899	1926	180	finally
    //   1926	1970	180	finally
    //   1972	2014	180	finally
    //   2061	2104	180	finally
    //   2106	2125	180	finally
    //   2129	2155	180	finally
    //   2155	2198	180	finally
    //   81	90	509	java/net/URISyntaxException
    //   97	112	509	java/net/URISyntaxException
    //   229	257	509	java/net/URISyntaxException
    //   263	273	509	java/net/URISyntaxException
    //   273	324	509	java/net/URISyntaxException
    //   332	339	509	java/net/URISyntaxException
    //   339	366	509	java/net/URISyntaxException
    //   373	393	509	java/net/URISyntaxException
    //   396	420	509	java/net/URISyntaxException
    //   425	462	509	java/net/URISyntaxException
    //   462	468	509	java/net/URISyntaxException
    //   473	480	509	java/net/URISyntaxException
    //   480	506	509	java/net/URISyntaxException
    //   535	542	509	java/net/URISyntaxException
    //   545	557	509	java/net/URISyntaxException
    //   560	565	509	java/net/URISyntaxException
    //   662	865	509	java/net/URISyntaxException
    //   865	951	509	java/net/URISyntaxException
    //   951	1059	509	java/net/URISyntaxException
    //   1156	1172	509	java/net/URISyntaxException
    //   1175	1188	509	java/net/URISyntaxException
    //   81	90	568	javax/net/ssl/SSLHandshakeException
    //   97	112	568	javax/net/ssl/SSLHandshakeException
    //   229	257	568	javax/net/ssl/SSLHandshakeException
    //   263	273	568	javax/net/ssl/SSLHandshakeException
    //   273	324	568	javax/net/ssl/SSLHandshakeException
    //   332	339	568	javax/net/ssl/SSLHandshakeException
    //   339	366	568	javax/net/ssl/SSLHandshakeException
    //   373	393	568	javax/net/ssl/SSLHandshakeException
    //   396	420	568	javax/net/ssl/SSLHandshakeException
    //   425	462	568	javax/net/ssl/SSLHandshakeException
    //   462	468	568	javax/net/ssl/SSLHandshakeException
    //   473	480	568	javax/net/ssl/SSLHandshakeException
    //   480	506	568	javax/net/ssl/SSLHandshakeException
    //   535	542	568	javax/net/ssl/SSLHandshakeException
    //   545	557	568	javax/net/ssl/SSLHandshakeException
    //   560	565	568	javax/net/ssl/SSLHandshakeException
    //   662	865	568	javax/net/ssl/SSLHandshakeException
    //   865	951	568	javax/net/ssl/SSLHandshakeException
    //   951	1059	568	javax/net/ssl/SSLHandshakeException
    //   1156	1172	568	javax/net/ssl/SSLHandshakeException
    //   1175	1188	568	javax/net/ssl/SSLHandshakeException
    //   81	90	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   97	112	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   229	257	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   263	273	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   273	324	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   332	339	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   339	366	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   373	393	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   396	420	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   425	462	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   462	468	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   473	480	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   480	506	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   535	542	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   545	557	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   560	565	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   662	865	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   865	951	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   951	1059	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   1156	1172	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   1175	1188	1062	javax/net/ssl/SSLPeerUnverifiedException
    //   81	90	1235	javax/net/ssl/SSLException
    //   97	112	1235	javax/net/ssl/SSLException
    //   229	257	1235	javax/net/ssl/SSLException
    //   263	273	1235	javax/net/ssl/SSLException
    //   273	324	1235	javax/net/ssl/SSLException
    //   332	339	1235	javax/net/ssl/SSLException
    //   339	366	1235	javax/net/ssl/SSLException
    //   373	393	1235	javax/net/ssl/SSLException
    //   396	420	1235	javax/net/ssl/SSLException
    //   425	462	1235	javax/net/ssl/SSLException
    //   462	468	1235	javax/net/ssl/SSLException
    //   473	480	1235	javax/net/ssl/SSLException
    //   480	506	1235	javax/net/ssl/SSLException
    //   535	542	1235	javax/net/ssl/SSLException
    //   545	557	1235	javax/net/ssl/SSLException
    //   560	565	1235	javax/net/ssl/SSLException
    //   662	865	1235	javax/net/ssl/SSLException
    //   865	951	1235	javax/net/ssl/SSLException
    //   951	1059	1235	javax/net/ssl/SSLException
    //   1156	1172	1235	javax/net/ssl/SSLException
    //   1175	1188	1235	javax/net/ssl/SSLException
    //   81	90	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   97	112	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   229	257	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   263	273	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   273	324	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   332	339	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   339	366	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   373	393	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   396	420	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   425	462	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   462	468	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   473	480	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   480	506	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   535	542	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   545	557	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   560	565	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   662	865	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   865	951	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   951	1059	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   1156	1172	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   1175	1188	1331	org/apache/http/conn/ConnectionPoolTimeoutException
    //   81	90	1425	org/apache/http/conn/ConnectTimeoutException
    //   97	112	1425	org/apache/http/conn/ConnectTimeoutException
    //   229	257	1425	org/apache/http/conn/ConnectTimeoutException
    //   263	273	1425	org/apache/http/conn/ConnectTimeoutException
    //   273	324	1425	org/apache/http/conn/ConnectTimeoutException
    //   332	339	1425	org/apache/http/conn/ConnectTimeoutException
    //   339	366	1425	org/apache/http/conn/ConnectTimeoutException
    //   373	393	1425	org/apache/http/conn/ConnectTimeoutException
    //   396	420	1425	org/apache/http/conn/ConnectTimeoutException
    //   425	462	1425	org/apache/http/conn/ConnectTimeoutException
    //   462	468	1425	org/apache/http/conn/ConnectTimeoutException
    //   473	480	1425	org/apache/http/conn/ConnectTimeoutException
    //   480	506	1425	org/apache/http/conn/ConnectTimeoutException
    //   535	542	1425	org/apache/http/conn/ConnectTimeoutException
    //   545	557	1425	org/apache/http/conn/ConnectTimeoutException
    //   560	565	1425	org/apache/http/conn/ConnectTimeoutException
    //   662	865	1425	org/apache/http/conn/ConnectTimeoutException
    //   865	951	1425	org/apache/http/conn/ConnectTimeoutException
    //   951	1059	1425	org/apache/http/conn/ConnectTimeoutException
    //   1156	1172	1425	org/apache/http/conn/ConnectTimeoutException
    //   1175	1188	1425	org/apache/http/conn/ConnectTimeoutException
    //   81	90	1514	java/net/SocketTimeoutException
    //   97	112	1514	java/net/SocketTimeoutException
    //   229	257	1514	java/net/SocketTimeoutException
    //   263	273	1514	java/net/SocketTimeoutException
    //   273	324	1514	java/net/SocketTimeoutException
    //   332	339	1514	java/net/SocketTimeoutException
    //   339	366	1514	java/net/SocketTimeoutException
    //   373	393	1514	java/net/SocketTimeoutException
    //   396	420	1514	java/net/SocketTimeoutException
    //   425	462	1514	java/net/SocketTimeoutException
    //   462	468	1514	java/net/SocketTimeoutException
    //   473	480	1514	java/net/SocketTimeoutException
    //   480	506	1514	java/net/SocketTimeoutException
    //   535	542	1514	java/net/SocketTimeoutException
    //   545	557	1514	java/net/SocketTimeoutException
    //   560	565	1514	java/net/SocketTimeoutException
    //   662	865	1514	java/net/SocketTimeoutException
    //   865	951	1514	java/net/SocketTimeoutException
    //   951	1059	1514	java/net/SocketTimeoutException
    //   1156	1172	1514	java/net/SocketTimeoutException
    //   1175	1188	1514	java/net/SocketTimeoutException
    //   81	90	1608	org/apache/http/NoHttpResponseException
    //   97	112	1608	org/apache/http/NoHttpResponseException
    //   229	257	1608	org/apache/http/NoHttpResponseException
    //   263	273	1608	org/apache/http/NoHttpResponseException
    //   273	324	1608	org/apache/http/NoHttpResponseException
    //   332	339	1608	org/apache/http/NoHttpResponseException
    //   339	366	1608	org/apache/http/NoHttpResponseException
    //   373	393	1608	org/apache/http/NoHttpResponseException
    //   396	420	1608	org/apache/http/NoHttpResponseException
    //   425	462	1608	org/apache/http/NoHttpResponseException
    //   462	468	1608	org/apache/http/NoHttpResponseException
    //   473	480	1608	org/apache/http/NoHttpResponseException
    //   480	506	1608	org/apache/http/NoHttpResponseException
    //   535	542	1608	org/apache/http/NoHttpResponseException
    //   545	557	1608	org/apache/http/NoHttpResponseException
    //   560	565	1608	org/apache/http/NoHttpResponseException
    //   662	865	1608	org/apache/http/NoHttpResponseException
    //   865	951	1608	org/apache/http/NoHttpResponseException
    //   951	1059	1608	org/apache/http/NoHttpResponseException
    //   1156	1172	1608	org/apache/http/NoHttpResponseException
    //   1175	1188	1608	org/apache/http/NoHttpResponseException
    //   81	90	1702	org/apache/http/conn/HttpHostConnectException
    //   97	112	1702	org/apache/http/conn/HttpHostConnectException
    //   229	257	1702	org/apache/http/conn/HttpHostConnectException
    //   263	273	1702	org/apache/http/conn/HttpHostConnectException
    //   273	324	1702	org/apache/http/conn/HttpHostConnectException
    //   332	339	1702	org/apache/http/conn/HttpHostConnectException
    //   339	366	1702	org/apache/http/conn/HttpHostConnectException
    //   373	393	1702	org/apache/http/conn/HttpHostConnectException
    //   396	420	1702	org/apache/http/conn/HttpHostConnectException
    //   425	462	1702	org/apache/http/conn/HttpHostConnectException
    //   462	468	1702	org/apache/http/conn/HttpHostConnectException
    //   473	480	1702	org/apache/http/conn/HttpHostConnectException
    //   480	506	1702	org/apache/http/conn/HttpHostConnectException
    //   535	542	1702	org/apache/http/conn/HttpHostConnectException
    //   545	557	1702	org/apache/http/conn/HttpHostConnectException
    //   560	565	1702	org/apache/http/conn/HttpHostConnectException
    //   662	865	1702	org/apache/http/conn/HttpHostConnectException
    //   865	951	1702	org/apache/http/conn/HttpHostConnectException
    //   951	1059	1702	org/apache/http/conn/HttpHostConnectException
    //   1156	1172	1702	org/apache/http/conn/HttpHostConnectException
    //   1175	1188	1702	org/apache/http/conn/HttpHostConnectException
    //   81	90	1780	java/net/UnknownHostException
    //   97	112	1780	java/net/UnknownHostException
    //   229	257	1780	java/net/UnknownHostException
    //   263	273	1780	java/net/UnknownHostException
    //   273	324	1780	java/net/UnknownHostException
    //   332	339	1780	java/net/UnknownHostException
    //   339	366	1780	java/net/UnknownHostException
    //   373	393	1780	java/net/UnknownHostException
    //   396	420	1780	java/net/UnknownHostException
    //   425	462	1780	java/net/UnknownHostException
    //   462	468	1780	java/net/UnknownHostException
    //   473	480	1780	java/net/UnknownHostException
    //   480	506	1780	java/net/UnknownHostException
    //   535	542	1780	java/net/UnknownHostException
    //   545	557	1780	java/net/UnknownHostException
    //   560	565	1780	java/net/UnknownHostException
    //   662	865	1780	java/net/UnknownHostException
    //   865	951	1780	java/net/UnknownHostException
    //   951	1059	1780	java/net/UnknownHostException
    //   1156	1172	1780	java/net/UnknownHostException
    //   1175	1188	1780	java/net/UnknownHostException
    //   81	90	1874	java/io/IOException
    //   97	112	1874	java/io/IOException
    //   229	257	1874	java/io/IOException
    //   263	273	1874	java/io/IOException
    //   273	324	1874	java/io/IOException
    //   332	339	1874	java/io/IOException
    //   339	366	1874	java/io/IOException
    //   373	393	1874	java/io/IOException
    //   396	420	1874	java/io/IOException
    //   425	462	1874	java/io/IOException
    //   462	468	1874	java/io/IOException
    //   473	480	1874	java/io/IOException
    //   480	506	1874	java/io/IOException
    //   535	542	1874	java/io/IOException
    //   545	557	1874	java/io/IOException
    //   560	565	1874	java/io/IOException
    //   662	865	1874	java/io/IOException
    //   865	951	1874	java/io/IOException
    //   951	1059	1874	java/io/IOException
    //   1156	1172	1874	java/io/IOException
    //   1175	1188	1874	java/io/IOException
    //   81	90	1970	java/lang/NullPointerException
    //   97	112	1970	java/lang/NullPointerException
    //   229	257	1970	java/lang/NullPointerException
    //   263	273	1970	java/lang/NullPointerException
    //   273	324	1970	java/lang/NullPointerException
    //   332	339	1970	java/lang/NullPointerException
    //   339	366	1970	java/lang/NullPointerException
    //   373	393	1970	java/lang/NullPointerException
    //   396	420	1970	java/lang/NullPointerException
    //   425	462	1970	java/lang/NullPointerException
    //   462	468	1970	java/lang/NullPointerException
    //   473	480	1970	java/lang/NullPointerException
    //   480	506	1970	java/lang/NullPointerException
    //   535	542	1970	java/lang/NullPointerException
    //   545	557	1970	java/lang/NullPointerException
    //   560	565	1970	java/lang/NullPointerException
    //   662	865	1970	java/lang/NullPointerException
    //   865	951	1970	java/lang/NullPointerException
    //   951	1059	1970	java/lang/NullPointerException
    //   1156	1172	1970	java/lang/NullPointerException
    //   1175	1188	1970	java/lang/NullPointerException
    //   81	90	2104	java/lang/Exception
    //   97	112	2104	java/lang/Exception
    //   229	257	2104	java/lang/Exception
    //   263	273	2104	java/lang/Exception
    //   273	324	2104	java/lang/Exception
    //   332	339	2104	java/lang/Exception
    //   339	366	2104	java/lang/Exception
    //   373	393	2104	java/lang/Exception
    //   396	420	2104	java/lang/Exception
    //   425	462	2104	java/lang/Exception
    //   462	468	2104	java/lang/Exception
    //   473	480	2104	java/lang/Exception
    //   480	506	2104	java/lang/Exception
    //   535	542	2104	java/lang/Exception
    //   545	557	2104	java/lang/Exception
    //   560	565	2104	java/lang/Exception
    //   662	865	2104	java/lang/Exception
    //   865	951	2104	java/lang/Exception
    //   951	1059	2104	java/lang/Exception
    //   1156	1172	2104	java/lang/Exception
    //   1175	1188	2104	java/lang/Exception
  }

  protected void fillResponse(HttpUrlResponse paramHttpUrlResponse, HttpResponse paramHttpResponse)
  {
    long l = getPeriod(paramHttpResponse);
    Header localHeader = paramHttpResponse.getEntity().getContentType();
    HashMap localHashMap;
    String str1;
    if (localHeader != null)
    {
      localHashMap = getContentType(localHeader.getValue());
      str1 = (String)localHashMap.get("charset");
    }
    for (String str2 = (String)localHashMap.get("Content-Type"); ; str2 = null)
    {
      paramHttpUrlResponse.setContentType(str2);
      paramHttpUrlResponse.setCharset(str1);
      paramHttpUrlResponse.setCreateTime(System.currentTimeMillis());
      paramHttpUrlResponse.setPeriod(l);
      return;
      str1 = null;
    }
  }

  protected HashMap getContentType(String paramString)
  {
    HashMap localHashMap = new HashMap();
    String[] arrayOfString1 = paramString.split(";");
    int i = arrayOfString1.length;
    int j = 0;
    if (j < i)
    {
      String str = arrayOfString1[j];
      String[] arrayOfString2;
      if (str.indexOf('=') == -1)
      {
        arrayOfString2 = new String[2];
        arrayOfString2[0] = "Content-Type";
        arrayOfString2[1] = str;
      }
      while (true)
      {
        localHashMap.put(arrayOfString2[0], arrayOfString2[1]);
        j++;
        break;
        arrayOfString2 = str.split("=");
      }
    }
    return localHashMap;
  }

  protected ArrayList getHeaders()
  {
    return this.c.getHeaders();
  }

  protected long getPeriod(HttpResponse paramHttpResponse)
  {
    long l1 = 0L;
    Header localHeader1 = paramHttpResponse.getFirstHeader("Cache-Control");
    String[] arrayOfString;
    if (localHeader1 != null)
    {
      arrayOfString = localHeader1.getValue().split("=");
      if (arrayOfString.length < 2);
    }
    Header localHeader2;
    do
    {
      try
      {
        long l2 = parserMaxage(arrayOfString);
        l1 = l2;
        return l1;
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
      localHeader2 = paramHttpResponse.getFirstHeader("Expires");
    }
    while (localHeader2 == null);
    return AndroidHttpClient.parseDate(localHeader2.getValue()) - System.currentTimeMillis();
  }

  protected StringEntity getPostData()
  {
    ArrayList localArrayList = this.c.getReqData();
    if ((localArrayList != null) && (localArrayList.size() > 0))
      return new UrlEncodedFormEntity(localArrayList, "utf-8");
    return null;
  }

  public HttpUrlRequest getRequest()
  {
    return this.c;
  }

  protected URI getUri()
  {
    String str = this.c.getUrl();
    if (this.mUrl != null)
      str = this.mUrl;
    if (str == null)
      throw new RuntimeException("url should not be null");
    return new URI(str);
  }

  // ERROR //
  protected Response handleResponse(HttpResponse paramHttpResponse, int paramInt, String paramString, TransportCallback paramTransportCallback)
  {
    // Byte code:
    //   0: new 200	java/lang/StringBuilder
    //   3: dup
    //   4: ldc_w 738
    //   7: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   10: invokestatic 210	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   13: invokevirtual 214	java/lang/Thread:getId	()J
    //   16: invokevirtual 218	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   19: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   22: pop
    //   23: aload_1
    //   24: invokeinterface 650 1 0
    //   29: astore 6
    //   31: aload 6
    //   33: ifnull +329 -> 362
    //   36: aload_1
    //   37: invokeinterface 742 1 0
    //   42: invokeinterface 747 1 0
    //   47: sipush 200
    //   50: if_icmpne +312 -> 362
    //   53: new 200	java/lang/StringBuilder
    //   56: dup
    //   57: ldc_w 749
    //   60: invokespecial 204	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: invokestatic 210	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   66: invokevirtual 214	java/lang/Thread:getId	()J
    //   69: invokevirtual 218	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   72: invokevirtual 221	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   75: pop
    //   76: new 751	java/io/ByteArrayOutputStream
    //   79: dup
    //   80: invokespecial 752	java/io/ByteArrayOutputStream:<init>	()V
    //   83: astore 16
    //   85: invokestatic 520	java/lang/System:currentTimeMillis	()J
    //   88: lstore 19
    //   90: aload_0
    //   91: aload 6
    //   93: lconst_0
    //   94: aload 16
    //   96: aload 4
    //   98: invokevirtual 756	com/alipay/mobile/common/transport/http/HttpWorker:writeData	(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/common/transport/TransportCallback;)V
    //   101: aload 16
    //   103: invokevirtual 759	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   106: astore 21
    //   108: aload_1
    //   109: ldc_w 761
    //   112: invokeinterface 764 2 0
    //   117: astore 22
    //   119: aload 22
    //   121: arraylength
    //   122: ifle +173 -> 295
    //   125: aload 21
    //   127: invokestatic 109	com/alipay/mobile/common/transport/http/HttpWorker$DesKey:get	()Ljava/lang/String;
    //   130: invokestatic 767	com/alipay/mobile/common/security/Des:encrypt	([BLjava/lang/String;)[B
    //   133: astore 25
    //   135: aload 25
    //   137: ifnull +158 -> 295
    //   140: aload 22
    //   142: iconst_0
    //   143: aaload
    //   144: invokeinterface 82 1 0
    //   149: astore 26
    //   151: new 101	com/alipay/mobile/common/transport/http/CachedResponseWrapper
    //   154: dup
    //   155: invokespecial 768	com/alipay/mobile/common/transport/http/CachedResponseWrapper:<init>	()V
    //   158: astore 27
    //   160: aload 27
    //   162: aload 26
    //   164: invokevirtual 771	com/alipay/mobile/common/transport/http/CachedResponseWrapper:setEtag	(Ljava/lang/String;)V
    //   167: aload 27
    //   169: aload 25
    //   171: invokevirtual 122	com/alipay/mobile/common/transport/http/CachedResponseWrapper:setValue	([B)V
    //   174: aload 27
    //   176: aload_1
    //   177: invokeinterface 650 1 0
    //   182: invokeinterface 656 1 0
    //   187: invokevirtual 774	com/alipay/mobile/common/transport/http/CachedResponseWrapper:setTypeHeader	(Lorg/apache/http/Header;)V
    //   190: aload_0
    //   191: getfield 46	com/alipay/mobile/common/transport/http/HttpWorker:e	Lcom/alipay/mobile/common/transport/http/HttpContextExtend;
    //   194: invokevirtual 93	com/alipay/mobile/common/transport/http/HttpContextExtend:getDiskCache	()Lcom/alipay/mobile/common/cache/disk/lru/LruDiskCache;
    //   197: aconst_null
    //   198: ldc_w 761
    //   201: aload_0
    //   202: getfield 52	com/alipay/mobile/common/transport/http/HttpWorker:h	Ljava/lang/String;
    //   205: aload 27
    //   207: new 776	java/util/Date
    //   210: dup
    //   211: invokespecial 777	java/util/Date:<init>	()V
    //   214: invokevirtual 780	java/util/Date:getTime	()J
    //   217: ldc2_w 781
    //   220: ldc_w 784
    //   223: invokevirtual 788	com/alipay/mobile/common/cache/disk/lru/LruDiskCache:putSerializable	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;JJLjava/lang/String;)V
    //   226: aload_0
    //   227: iconst_1
    //   228: putfield 50	com/alipay/mobile/common/transport/http/HttpWorker:g	Z
    //   231: aload_0
    //   232: getfield 54	com/alipay/mobile/common/transport/http/HttpWorker:mHttpManager	Lcom/alipay/mobile/common/transport/http/HttpManager;
    //   235: invokestatic 520	java/lang/System:currentTimeMillis	()J
    //   238: lload 19
    //   240: lsub
    //   241: invokevirtual 791	com/alipay/mobile/common/transport/http/HttpManager:addSocketTime	(J)V
    //   244: aload_0
    //   245: getfield 54	com/alipay/mobile/common/transport/http/HttpWorker:mHttpManager	Lcom/alipay/mobile/common/transport/http/HttpManager;
    //   248: aload 21
    //   250: arraylength
    //   251: i2l
    //   252: invokevirtual 794	com/alipay/mobile/common/transport/http/HttpManager:addDataSize	(J)V
    //   255: new 670	com/alipay/mobile/common/transport/http/HttpUrlResponse
    //   258: dup
    //   259: aload_1
    //   260: invokestatic 796	com/alipay/mobile/common/transport/http/HttpWorker:a	(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    //   263: iload_2
    //   264: aload_3
    //   265: aload 21
    //   267: invokespecial 799	com/alipay/mobile/common/transport/http/HttpUrlResponse:<init>	(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V
    //   270: astore 23
    //   272: aload_0
    //   273: aload 23
    //   275: aload_1
    //   276: invokevirtual 801	com/alipay/mobile/common/transport/http/HttpWorker:fillResponse	(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    //   279: aload_0
    //   280: aload_0
    //   281: getfield 52	com/alipay/mobile/common/transport/http/HttpWorker:h	Ljava/lang/String;
    //   284: invokespecial 118	com/alipay/mobile/common/transport/http/HttpWorker:b	(Ljava/lang/String;)V
    //   287: aload 16
    //   289: invokevirtual 804	java/io/ByteArrayOutputStream:close	()V
    //   292: aload 23
    //   294: areturn
    //   295: aload_0
    //   296: iconst_0
    //   297: putfield 50	com/alipay/mobile/common/transport/http/HttpWorker:g	Z
    //   300: goto -69 -> 231
    //   303: astore 17
    //   305: aload_0
    //   306: aload_0
    //   307: getfield 52	com/alipay/mobile/common/transport/http/HttpWorker:h	Ljava/lang/String;
    //   310: invokespecial 118	com/alipay/mobile/common/transport/http/HttpWorker:b	(Ljava/lang/String;)V
    //   313: aload 16
    //   315: ifnull +8 -> 323
    //   318: aload 16
    //   320: invokevirtual 804	java/io/ByteArrayOutputStream:close	()V
    //   323: aload 17
    //   325: athrow
    //   326: astore 24
    //   328: new 455	java/lang/RuntimeException
    //   331: dup
    //   332: ldc_w 806
    //   335: aload 24
    //   337: invokevirtual 807	java/io/IOException:getCause	()Ljava/lang/Throwable;
    //   340: invokespecial 464	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   343: athrow
    //   344: astore 18
    //   346: new 455	java/lang/RuntimeException
    //   349: dup
    //   350: ldc_w 806
    //   353: aload 18
    //   355: invokevirtual 807	java/io/IOException:getCause	()Ljava/lang/Throwable;
    //   358: invokespecial 464	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   361: athrow
    //   362: aload 6
    //   364: ifnonnull +169 -> 533
    //   367: aload_1
    //   368: invokeinterface 742 1 0
    //   373: invokeinterface 747 1 0
    //   378: sipush 304
    //   381: if_icmpne +152 -> 533
    //   384: iload_2
    //   385: sipush 304
    //   388: if_icmpne +145 -> 533
    //   391: aload_0
    //   392: aload_0
    //   393: getfield 52	com/alipay/mobile/common/transport/http/HttpWorker:h	Ljava/lang/String;
    //   396: invokespecial 435	com/alipay/mobile/common/transport/http/HttpWorker:a	(Ljava/lang/String;)Ljava/lang/Object;
    //   399: checkcast 101	com/alipay/mobile/common/transport/http/CachedResponseWrapper
    //   402: astore 7
    //   404: aload 7
    //   406: ifnull +127 -> 533
    //   409: new 670	com/alipay/mobile/common/transport/http/HttpUrlResponse
    //   412: dup
    //   413: aload_1
    //   414: invokestatic 796	com/alipay/mobile/common/transport/http/HttpWorker:a	(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;
    //   417: iload_2
    //   418: aload_3
    //   419: aload 7
    //   421: invokevirtual 104	com/alipay/mobile/common/transport/http/CachedResponseWrapper:getValue	()[B
    //   424: invokespecial 799	com/alipay/mobile/common/transport/http/HttpUrlResponse:<init>	(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V
    //   427: astore 8
    //   429: aload_0
    //   430: aload_1
    //   431: invokevirtual 646	com/alipay/mobile/common/transport/http/HttpWorker:getPeriod	(Lorg/apache/http/HttpResponse;)J
    //   434: lstore 9
    //   436: aload 7
    //   438: invokevirtual 810	com/alipay/mobile/common/transport/http/CachedResponseWrapper:getTypeHeader	()Lorg/apache/http/Header;
    //   441: astore 11
    //   443: aconst_null
    //   444: astore 12
    //   446: aconst_null
    //   447: astore 13
    //   449: aload 11
    //   451: ifnull +42 -> 493
    //   454: aload_0
    //   455: aload 11
    //   457: invokeinterface 82 1 0
    //   462: invokevirtual 659	com/alipay/mobile/common/transport/http/HttpWorker:getContentType	(Ljava/lang/String;)Ljava/util/HashMap;
    //   465: astore 14
    //   467: aload 14
    //   469: ldc_w 661
    //   472: invokevirtual 666	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   475: checkcast 430	java/lang/String
    //   478: astore 12
    //   480: aload 14
    //   482: ldc_w 668
    //   485: invokevirtual 666	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   488: checkcast 430	java/lang/String
    //   491: astore 13
    //   493: aload 8
    //   495: aload 13
    //   497: invokevirtual 673	com/alipay/mobile/common/transport/http/HttpUrlResponse:setContentType	(Ljava/lang/String;)V
    //   500: aload 8
    //   502: aload 12
    //   504: invokevirtual 676	com/alipay/mobile/common/transport/http/HttpUrlResponse:setCharset	(Ljava/lang/String;)V
    //   507: aload 8
    //   509: invokestatic 520	java/lang/System:currentTimeMillis	()J
    //   512: invokevirtual 679	com/alipay/mobile/common/transport/http/HttpUrlResponse:setCreateTime	(J)V
    //   515: aload 8
    //   517: lload 9
    //   519: invokevirtual 682	com/alipay/mobile/common/transport/http/HttpUrlResponse:setPeriod	(J)V
    //   522: aload 8
    //   524: areturn
    //   525: astore 17
    //   527: aconst_null
    //   528: astore 16
    //   530: goto -225 -> 305
    //   533: aconst_null
    //   534: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   85	135	303	finally
    //   140	231	303	finally
    //   231	279	303	finally
    //   295	300	303	finally
    //   287	292	326	java/io/IOException
    //   318	323	344	java/io/IOException
    //   76	85	525	finally
  }

  protected long parserMaxage(String[] paramArrayOfString)
  {
    for (int i = 0; i < paramArrayOfString.length; i++)
      if (("max-age".equalsIgnoreCase(paramArrayOfString[i])) && (paramArrayOfString[(i + 1)] != null))
        return Long.parseLong(paramArrayOfString[(i + 1)]);
    return 0L;
  }

  public Response processResponse(HttpResponse paramHttpResponse, HttpUrlRequest paramHttpUrlRequest, TransportCallback paramTransportCallback)
  {
    int i = paramHttpResponse.getStatusLine().getStatusCode();
    String str = paramHttpResponse.getStatusLine().getReasonPhrase();
    if ((i != 200) && (!willHandleOtherCode(i, str)))
      throw new HttpException(Integer.valueOf(paramHttpResponse.getStatusLine().getStatusCode()), paramHttpResponse.getStatusLine().getReasonPhrase());
    return handleResponse(paramHttpResponse, i, str, paramTransportCallback);
  }

  protected boolean willHandleOtherCode(int paramInt, String paramString)
  {
    return paramInt == 304;
  }

  protected void writeData(HttpEntity paramHttpEntity, long paramLong, OutputStream paramOutputStream, TransportCallback paramTransportCallback)
  {
    if (paramOutputStream == null)
    {
      paramHttpEntity.consumeContent();
      throw new IllegalArgumentException("Output stream may not be null");
    }
    InputStream localInputStream = AndroidHttpClient.getUngzippedContent(paramHttpEntity);
    long l = paramHttpEntity.getContentLength();
    try
    {
      byte[] arrayOfByte = new byte[2048];
      while (true)
      {
        int i = localInputStream.read(arrayOfByte);
        if ((i == -1) || (this.c.isCanceled()))
          break;
        paramOutputStream.write(arrayOfByte, 0, i);
        paramLong += i;
        if ((paramTransportCallback != null) && (l > 0L))
          paramTransportCallback.onProgressUpdate(this.c, paramLong / l);
      }
    }
    catch (Exception localException)
    {
      localException.getCause();
      throw new IOException("HttpWorker Request Error!" + localException.getLocalizedMessage());
    }
    finally
    {
      IOUtil.closeStream(localInputStream);
    }
    paramOutputStream.flush();
    IOUtil.closeStream(localInputStream);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.HttpWorker
 * JD-Core Version:    0.6.2
 */