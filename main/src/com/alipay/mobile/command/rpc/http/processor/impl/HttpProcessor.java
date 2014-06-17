package com.alipay.mobile.command.rpc.http.processor.impl;

import com.alipay.mobile.command.model.HttpUrlHeader;
import com.alipay.mobile.command.model.HttpUrlRequest;
import com.alipay.mobile.command.model.HttpUrlResponse;
import com.alipay.mobile.command.model.Response;
import com.alipay.mobile.command.rpc.http.AndroidHttpClientExt;
import com.alipay.mobile.command.rpc.http.TransportCallback;
import com.alipay.mobile.command.rpc.http.ZHttpRequestRetryHandler;
import com.alipay.mobile.command.rpc.http.processor.RpcProcessor;
import com.alipay.mobile.command.util.CommandUtil;
import com.alipay.mobile.command.util.exception.HttpException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpRequestRetryHandler;

public class HttpProcessor extends RpcProcessor
{
  private static final HttpRequestRetryHandler a = new ZHttpRequestRetryHandler();
  private HttpUrlRequest b;
  private int c = 0;

  public HttpProcessor(HttpUrlRequest paramHttpUrlRequest, TransportCallback paramTransportCallback)
  {
    this.b = paramHttpUrlRequest;
    setCallback(paramTransportCallback);
  }

  private static HttpUrlHeader a(HttpResponse paramHttpResponse)
  {
    HttpUrlHeader localHttpUrlHeader = new HttpUrlHeader();
    for (Header localHeader : paramHttpResponse.getAllHeaders())
      localHttpUrlHeader.setHead(localHeader.getName(), localHeader.getValue());
    return localHttpUrlHeader;
  }

  protected static void a(HttpUrlResponse paramHttpUrlResponse, HttpResponse paramHttpResponse)
  {
    long l = b(paramHttpResponse);
    Header localHeader = paramHttpResponse.getEntity().getContentType();
    HashMap localHashMap;
    String str1;
    if (localHeader != null)
    {
      String str3 = localHeader.getValue();
      localHashMap = new HashMap();
      String[] arrayOfString1 = str3.split(";");
      int i = arrayOfString1.length;
      int j = 0;
      if (j < i)
      {
        String str4 = arrayOfString1[j];
        String[] arrayOfString2;
        if (str4.indexOf('=') == -1)
        {
          arrayOfString2 = new String[2];
          arrayOfString2[0] = "Content-Type";
          arrayOfString2[1] = str4;
        }
        while (true)
        {
          localHashMap.put(arrayOfString2[0], arrayOfString2[1]);
          j++;
          break;
          arrayOfString2 = str4.split("=");
        }
      }
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

  private static long b(HttpResponse paramHttpResponse)
  {
    long l1 = 0L;
    Header localHeader1 = paramHttpResponse.getFirstHeader("Cache-Control");
    String[] arrayOfString;
    int i;
    if (localHeader1 != null)
    {
      arrayOfString = localHeader1.getValue().split("=");
      if (arrayOfString.length >= 2)
        i = 0;
    }
    Header localHeader2;
    do
    {
      try
      {
        while (true)
        {
          if (i < arrayOfString.length)
          {
            if (("max-age".equalsIgnoreCase(arrayOfString[i])) && (arrayOfString[(i + 1)] != null))
            {
              long l2 = Long.parseLong(arrayOfString[(i + 1)]);
              l1 = l2;
            }
          }
          else
            return l1;
          i++;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
      }
      localHeader2 = paramHttpResponse.getFirstHeader("Expires");
    }
    while (localHeader2 == null);
    return AndroidHttpClientExt.parseDate(localHeader2.getValue()) - System.currentTimeMillis();
  }

  // ERROR //
  protected Response a(HttpResponse paramHttpResponse, int paramInt, String paramString, TransportCallback paramTransportCallback)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 60 1 0
    //   6: astore 5
    //   8: aload 5
    //   10: ifnull +161 -> 171
    //   13: aload_1
    //   14: invokeinterface 151 1 0
    //   19: invokeinterface 157 1 0
    //   24: sipush 200
    //   27: if_icmpne +144 -> 171
    //   30: new 159	java/io/ByteArrayOutputStream
    //   33: dup
    //   34: invokespecial 160	java/io/ByteArrayOutputStream:<init>	()V
    //   37: astore 9
    //   39: invokestatic 110	java/lang/System:currentTimeMillis	()J
    //   42: lstore 12
    //   44: aload_0
    //   45: aload 5
    //   47: lconst_0
    //   48: aload 9
    //   50: aload 4
    //   52: invokevirtual 163	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:a	(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V
    //   55: aload 9
    //   57: invokevirtual 167	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   60: astore 14
    //   62: invokestatic 173	com/alipay/mobile/command/rpc/http/HttpManager:getInstance	()Lcom/alipay/mobile/command/rpc/http/HttpManager;
    //   65: invokestatic 110	java/lang/System:currentTimeMillis	()J
    //   68: lload 12
    //   70: lsub
    //   71: invokevirtual 176	com/alipay/mobile/command/rpc/http/HttpManager:addSocketTime	(J)V
    //   74: invokestatic 173	com/alipay/mobile/command/rpc/http/HttpManager:getInstance	()Lcom/alipay/mobile/command/rpc/http/HttpManager;
    //   77: aload 14
    //   79: arraylength
    //   80: i2l
    //   81: invokevirtual 179	com/alipay/mobile/command/rpc/http/HttpManager:addDataSize	(J)V
    //   84: new 97	com/alipay/mobile/command/model/HttpUrlResponse
    //   87: dup
    //   88: aload_1
    //   89: invokestatic 181	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:a	(Lorg/apache/http/HttpResponse;)Lcom/alipay/mobile/command/model/HttpUrlHeader;
    //   92: iload_2
    //   93: aload_3
    //   94: aload 14
    //   96: invokespecial 184	com/alipay/mobile/command/model/HttpUrlResponse:<init>	(Lcom/alipay/mobile/command/model/HttpUrlHeader;ILjava/lang/String;[B)V
    //   99: astore 8
    //   101: aload 8
    //   103: aload_1
    //   104: invokestatic 186	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:a	(Lcom/alipay/mobile/command/model/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    //   107: aload 9
    //   109: invokevirtual 189	java/io/ByteArrayOutputStream:close	()V
    //   112: aload 8
    //   114: areturn
    //   115: astore 15
    //   117: new 191	java/lang/RuntimeException
    //   120: dup
    //   121: ldc 193
    //   123: aload 15
    //   125: invokevirtual 197	java/io/IOException:getCause	()Ljava/lang/Throwable;
    //   128: invokespecial 200	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   131: athrow
    //   132: astore 16
    //   134: aconst_null
    //   135: astore 9
    //   137: aload 16
    //   139: astore 10
    //   141: aload 9
    //   143: ifnull +8 -> 151
    //   146: aload 9
    //   148: invokevirtual 189	java/io/ByteArrayOutputStream:close	()V
    //   151: aload 10
    //   153: athrow
    //   154: astore 11
    //   156: new 191	java/lang/RuntimeException
    //   159: dup
    //   160: ldc 193
    //   162: aload 11
    //   164: invokevirtual 197	java/io/IOException:getCause	()Ljava/lang/Throwable;
    //   167: invokespecial 200	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   170: athrow
    //   171: aload 5
    //   173: ifnonnull +27 -> 200
    //   176: aload_1
    //   177: invokeinterface 151 1 0
    //   182: invokeinterface 157 1 0
    //   187: istore 7
    //   189: aconst_null
    //   190: astore 8
    //   192: iload 7
    //   194: sipush 304
    //   197: if_icmpeq -85 -> 112
    //   200: iconst_1
    //   201: anewarray 202	java/lang/Object
    //   204: dup
    //   205: iconst_0
    //   206: ldc 204
    //   208: aastore
    //   209: pop
    //   210: aconst_null
    //   211: areturn
    //   212: astore 10
    //   214: goto -73 -> 141
    //
    // Exception table:
    //   from	to	target	type
    //   107	112	115	java/io/IOException
    //   30	39	132	finally
    //   146	151	154	java/io/IOException
    //   39	107	212	finally
  }

  protected ArrayList<Header> a()
  {
    return this.b.getHeaders();
  }

  protected final void a(HttpEntity paramHttpEntity, long paramLong, OutputStream paramOutputStream, TransportCallback paramTransportCallback)
  {
    if (paramOutputStream == null)
    {
      paramHttpEntity.consumeContent();
      throw new IllegalArgumentException("Output stream may not be null");
    }
    InputStream localInputStream = AndroidHttpClientExt.getUngzippedContent(paramHttpEntity);
    long l1 = paramHttpEntity.getContentLength();
    try
    {
      byte[] arrayOfByte = new byte[2048];
      long l2 = paramLong;
      while (true)
      {
        int i = localInputStream.read(arrayOfByte);
        if ((i == -1) || (this.b.isCanceled()))
          break;
        paramOutputStream.write(arrayOfByte, 0, i);
        l2 += i;
        if ((paramTransportCallback != null) && (l1 > 0L))
          paramTransportCallback.onProgressUpdate(this.b, l2 / (l1 + paramLong));
      }
    }
    catch (Exception localException)
    {
      new Object[] { "read ResponseData Error." };
      throw new IOException("HttpWorker Request Error!" + localException.getLocalizedMessage());
    }
    finally
    {
      CommandUtil.closeStream(localInputStream);
    }
    paramOutputStream.flush();
    CommandUtil.closeStream(localInputStream);
  }

  protected boolean a(int paramInt)
  {
    return paramInt == 304;
  }

  protected final URI b()
  {
    String str = this.b.getUrl();
    if (str == null)
      throw new RuntimeException("url should not be null");
    return new URI(str);
  }

  // ERROR //
  public Response call()
  {
    // Byte code:
    //   0: invokestatic 173	com/alipay/mobile/command/rpc/http/HttpManager:getInstance	()Lcom/alipay/mobile/command/rpc/http/HttpManager;
    //   3: invokevirtual 318	com/alipay/mobile/command/rpc/http/HttpManager:getHttpClient	()Lcom/alipay/mobile/command/rpc/http/AndroidHttpClientExt;
    //   6: astore_1
    //   7: aconst_null
    //   8: astore_2
    //   9: aload_0
    //   10: invokevirtual 322	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:getCallback	()Lcom/alipay/mobile/command/rpc/http/TransportCallback;
    //   13: astore_3
    //   14: invokestatic 325	com/alipay/mobile/command/util/CommandUtil:isNetConnected	()Z
    //   17: istore 30
    //   19: aconst_null
    //   20: astore_2
    //   21: iload 30
    //   23: ifne +95 -> 118
    //   26: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   29: dup
    //   30: iconst_1
    //   31: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   34: ldc_w 333
    //   37: invokespecial 336	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;Ljava/lang/String;)V
    //   40: athrow
    //   41: astore 28
    //   43: aload_2
    //   44: ifnull +9 -> 53
    //   47: aload_2
    //   48: invokeinterface 341 1 0
    //   53: aload_3
    //   54: ifnull +21 -> 75
    //   57: aload_3
    //   58: aload_0
    //   59: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   62: aload 28
    //   64: invokevirtual 344	com/alipay/mobile/command/util/exception/HttpException:getCode	()I
    //   67: aload 28
    //   69: invokevirtual 347	com/alipay/mobile/command/util/exception/HttpException:getMsg	()Ljava/lang/String;
    //   72: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   75: iconst_1
    //   76: anewarray 202	java/lang/Object
    //   79: dup
    //   80: iconst_0
    //   81: ldc_w 353
    //   84: aastore
    //   85: pop
    //   86: aload 28
    //   88: athrow
    //   89: astore 5
    //   91: iconst_2
    //   92: anewarray 202	java/lang/Object
    //   95: astore 6
    //   97: aload 6
    //   99: iconst_0
    //   100: ldc_w 355
    //   103: aastore
    //   104: aload 6
    //   106: iconst_1
    //   107: aload_0
    //   108: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   111: invokevirtual 282	com/alipay/mobile/command/model/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   114: aastore
    //   115: aload 5
    //   117: athrow
    //   118: aload_3
    //   119: ifnull +11 -> 130
    //   122: aload_3
    //   123: aload_0
    //   124: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   127: invokevirtual 359	com/alipay/mobile/command/rpc/http/TransportCallback:onPreExecute	(Lcom/alipay/mobile/command/model/Request;)V
    //   130: aload_1
    //   131: invokevirtual 363	com/alipay/mobile/command/rpc/http/AndroidHttpClientExt:getParams	()Lorg/apache/http/params/HttpParams;
    //   134: ldc_w 365
    //   137: invokestatic 369	com/alipay/mobile/command/util/CommandUtil:getProxy	()Lorg/apache/http/HttpHost;
    //   140: invokeinterface 375 3 0
    //   145: pop
    //   146: new 377	java/net/URL
    //   149: dup
    //   150: aload_0
    //   151: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   154: invokevirtual 282	com/alipay/mobile/command/model/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   157: invokespecial 378	java/net/URL:<init>	(Ljava/lang/String;)V
    //   160: astore 32
    //   162: aload 32
    //   164: invokevirtual 381	java/net/URL:getPort	()I
    //   167: istore 33
    //   169: aconst_null
    //   170: astore_2
    //   171: iload 33
    //   173: iconst_m1
    //   174: if_icmpne +170 -> 344
    //   177: aload 32
    //   179: invokevirtual 384	java/net/URL:getDefaultPort	()I
    //   182: istore 34
    //   184: new 386	org/apache/http/HttpHost
    //   187: dup
    //   188: aload 32
    //   190: invokevirtual 389	java/net/URL:getHost	()Ljava/lang/String;
    //   193: iload 34
    //   195: aload 32
    //   197: invokevirtual 392	java/net/URL:getProtocol	()Ljava/lang/String;
    //   200: invokespecial 395	org/apache/http/HttpHost:<init>	(Ljava/lang/String;ILjava/lang/String;)V
    //   203: astore 35
    //   205: aload_0
    //   206: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   209: invokevirtual 398	com/alipay/mobile/command/model/HttpUrlRequest:getReqData	()Ljava/util/ArrayList;
    //   212: astore 36
    //   214: aconst_null
    //   215: astore_2
    //   216: aload 36
    //   218: ifnull +1258 -> 1476
    //   221: aload 36
    //   223: invokevirtual 403	java/util/ArrayList:size	()I
    //   226: istore 37
    //   228: aconst_null
    //   229: astore_2
    //   230: iload 37
    //   232: ifle +1244 -> 1476
    //   235: new 405	org/apache/http/client/entity/UrlEncodedFormEntity
    //   238: dup
    //   239: aload 36
    //   241: ldc_w 407
    //   244: invokespecial 410	org/apache/http/client/entity/UrlEncodedFormEntity:<init>	(Ljava/util/List;Ljava/lang/String;)V
    //   247: astore 38
    //   249: aconst_null
    //   250: astore_2
    //   251: aload 38
    //   253: ifnull +101 -> 354
    //   256: new 412	org/apache/http/client/methods/HttpPost
    //   259: dup
    //   260: aload_0
    //   261: invokevirtual 414	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	()Ljava/net/URI;
    //   264: invokespecial 417	org/apache/http/client/methods/HttpPost:<init>	(Ljava/net/URI;)V
    //   267: astore 39
    //   269: aload 39
    //   271: aload 38
    //   273: invokevirtual 421	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   276: aload 39
    //   278: astore_2
    //   279: aload_0
    //   280: invokevirtual 423	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:a	()Ljava/util/ArrayList;
    //   283: astore 40
    //   285: aload 40
    //   287: ifnull +82 -> 369
    //   290: aload 40
    //   292: invokevirtual 427	java/util/ArrayList:iterator	()Ljava/util/Iterator;
    //   295: astore 41
    //   297: aload 41
    //   299: invokeinterface 432 1 0
    //   304: ifeq +65 -> 369
    //   307: aload_2
    //   308: aload 41
    //   310: invokeinterface 436 1 0
    //   315: checkcast 41	org/apache/http/Header
    //   318: invokeinterface 440 2 0
    //   323: goto -26 -> 297
    //   326: astore 27
    //   328: new 191	java/lang/RuntimeException
    //   331: dup
    //   332: ldc_w 442
    //   335: aload 27
    //   337: invokevirtual 443	java/net/URISyntaxException:getCause	()Ljava/lang/Throwable;
    //   340: invokespecial 200	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   343: athrow
    //   344: aload 32
    //   346: invokevirtual 381	java/net/URL:getPort	()I
    //   349: istore 34
    //   351: goto -167 -> 184
    //   354: new 445	org/apache/http/client/methods/HttpGet
    //   357: dup
    //   358: aload_0
    //   359: invokevirtual 414	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	()Ljava/net/URI;
    //   362: invokespecial 446	org/apache/http/client/methods/HttpGet:<init>	(Ljava/net/URI;)V
    //   365: astore_2
    //   366: goto -87 -> 279
    //   369: aload_2
    //   370: invokestatic 450	com/alipay/mobile/command/rpc/http/AndroidHttpClientExt:modifyRequestToAcceptGzipResponse	(Lorg/apache/http/HttpRequest;)V
    //   373: aload_2
    //   374: invokestatic 453	com/alipay/mobile/command/rpc/http/AndroidHttpClientExt:modifyRequestToKeepAlive	(Lorg/apache/http/HttpRequest;)V
    //   377: new 455	org/apache/http/protocol/BasicHttpContext
    //   380: dup
    //   381: invokespecial 456	org/apache/http/protocol/BasicHttpContext:<init>	()V
    //   384: astore 42
    //   386: aload_2
    //   387: ldc_w 458
    //   390: invokestatic 463	android/webkit/CookieManager:getInstance	()Landroid/webkit/CookieManager;
    //   393: aload_2
    //   394: invokeinterface 466 1 0
    //   399: invokevirtual 467	java/net/URI:getHost	()Ljava/lang/String;
    //   402: invokevirtual 471	android/webkit/CookieManager:getCookie	(Ljava/lang/String;)Ljava/lang/String;
    //   405: invokeinterface 473 3 0
    //   410: new 475	org/apache/http/impl/client/BasicCookieStore
    //   413: dup
    //   414: invokespecial 476	org/apache/http/impl/client/BasicCookieStore:<init>	()V
    //   417: astore 43
    //   419: aload 42
    //   421: ldc_w 478
    //   424: aload 43
    //   426: invokeinterface 484 3 0
    //   431: aload_1
    //   432: getstatic 19	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:a	Lorg/apache/http/client/HttpRequestRetryHandler;
    //   435: invokevirtual 488	com/alipay/mobile/command/rpc/http/AndroidHttpClientExt:setHttpRequestRetryHandler	(Lorg/apache/http/client/HttpRequestRetryHandler;)V
    //   438: invokestatic 110	java/lang/System:currentTimeMillis	()J
    //   441: lstore 44
    //   443: aload_1
    //   444: aload 35
    //   446: aload_2
    //   447: aload 42
    //   449: invokevirtual 492	com/alipay/mobile/command/rpc/http/AndroidHttpClientExt:execute	(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    //   452: astore 46
    //   454: invokestatic 110	java/lang/System:currentTimeMillis	()J
    //   457: lstore 47
    //   459: invokestatic 173	com/alipay/mobile/command/rpc/http/HttpManager:getInstance	()Lcom/alipay/mobile/command/rpc/http/HttpManager;
    //   462: lload 47
    //   464: lload 44
    //   466: lsub
    //   467: invokevirtual 495	com/alipay/mobile/command/rpc/http/HttpManager:addConnectTime	(J)V
    //   470: iconst_2
    //   471: anewarray 202	java/lang/Object
    //   474: astore 49
    //   476: aload 49
    //   478: iconst_0
    //   479: ldc_w 497
    //   482: aastore
    //   483: aload 49
    //   485: iconst_1
    //   486: aload_0
    //   487: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   490: invokevirtual 282	com/alipay/mobile/command/model/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   493: aastore
    //   494: aload 43
    //   496: invokeinterface 503 1 0
    //   501: astore 50
    //   503: aload 50
    //   505: invokeinterface 508 1 0
    //   510: ifne +245 -> 755
    //   513: invokestatic 463	android/webkit/CookieManager:getInstance	()Landroid/webkit/CookieManager;
    //   516: astore 53
    //   518: aload 50
    //   520: invokeinterface 509 1 0
    //   525: astore 54
    //   527: aload 54
    //   529: invokeinterface 432 1 0
    //   534: ifeq +221 -> 755
    //   537: aload 54
    //   539: invokeinterface 436 1 0
    //   544: checkcast 511	org/apache/http/cookie/Cookie
    //   547: astore 55
    //   549: aload 55
    //   551: invokeinterface 514 1 0
    //   556: ifnonnull +162 -> 718
    //   559: ldc_w 516
    //   562: astore 56
    //   564: aload 56
    //   566: ldc_w 516
    //   569: invokevirtual 519	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   572: ifle +164 -> 736
    //   575: ldc_w 516
    //   578: astore 56
    //   580: new 254	java/lang/StringBuilder
    //   583: dup
    //   584: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   587: aload 55
    //   589: invokeinterface 521 1 0
    //   594: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   597: ldc 89
    //   599: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   602: aload 55
    //   604: invokeinterface 522 1 0
    //   609: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   612: ldc_w 524
    //   615: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   618: aload 56
    //   620: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   623: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   626: astore 57
    //   628: aload 53
    //   630: aload_2
    //   631: invokeinterface 466 1 0
    //   636: invokevirtual 467	java/net/URI:getHost	()Ljava/lang/String;
    //   639: aload 57
    //   641: invokevirtual 527	android/webkit/CookieManager:setCookie	(Ljava/lang/String;Ljava/lang/String;)V
    //   644: invokestatic 532	android/webkit/CookieSyncManager:getInstance	()Landroid/webkit/CookieSyncManager;
    //   647: invokevirtual 535	android/webkit/CookieSyncManager:sync	()V
    //   650: goto -123 -> 527
    //   653: astore 25
    //   655: aload_2
    //   656: invokeinterface 341 1 0
    //   661: aload_3
    //   662: ifnull +33 -> 695
    //   665: aload_3
    //   666: aload_0
    //   667: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   670: iconst_2
    //   671: new 254	java/lang/StringBuilder
    //   674: dup
    //   675: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   678: aload 25
    //   680: invokevirtual 538	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   683: ldc_w 540
    //   686: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   689: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   692: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   695: iconst_1
    //   696: anewarray 202	java/lang/Object
    //   699: dup
    //   700: iconst_0
    //   701: ldc_w 542
    //   704: aastore
    //   705: pop
    //   706: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   709: dup
    //   710: iconst_2
    //   711: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   714: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   717: athrow
    //   718: aload 55
    //   720: invokeinterface 514 1 0
    //   725: invokestatic 551	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   728: invokevirtual 555	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   731: astore 56
    //   733: goto -169 -> 564
    //   736: aload 56
    //   738: ldc_w 557
    //   741: invokevirtual 519	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   744: ifle -164 -> 580
    //   747: ldc_w 557
    //   750: astore 56
    //   752: goto -172 -> 580
    //   755: aload_0
    //   756: aload 46
    //   758: aload_0
    //   759: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   762: aload_3
    //   763: invokevirtual 561	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:processResponse	(Lorg/apache/http/HttpResponse;Lcom/alipay/mobile/command/model/HttpUrlRequest;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)Lcom/alipay/mobile/command/model/Response;
    //   766: astore 51
    //   768: iconst_2
    //   769: anewarray 202	java/lang/Object
    //   772: astore 52
    //   774: aload 52
    //   776: iconst_0
    //   777: ldc_w 355
    //   780: aastore
    //   781: aload 52
    //   783: iconst_1
    //   784: aload_0
    //   785: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   788: invokevirtual 282	com/alipay/mobile/command/model/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   791: aastore
    //   792: aload 51
    //   794: areturn
    //   795: astore 23
    //   797: aload_2
    //   798: invokeinterface 341 1 0
    //   803: aload_3
    //   804: ifnull +33 -> 837
    //   807: aload_3
    //   808: aload_0
    //   809: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   812: iconst_2
    //   813: new 254	java/lang/StringBuilder
    //   816: dup
    //   817: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   820: aload 23
    //   822: invokevirtual 538	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   825: ldc_w 563
    //   828: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   831: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   834: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   837: iconst_1
    //   838: anewarray 202	java/lang/Object
    //   841: dup
    //   842: iconst_0
    //   843: ldc_w 565
    //   846: aastore
    //   847: pop
    //   848: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   851: dup
    //   852: iconst_2
    //   853: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   856: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   859: athrow
    //   860: astore 21
    //   862: aload_2
    //   863: invokeinterface 341 1 0
    //   868: aload_3
    //   869: ifnull +33 -> 902
    //   872: aload_3
    //   873: aload_0
    //   874: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   877: iconst_2
    //   878: new 254	java/lang/StringBuilder
    //   881: dup
    //   882: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   885: aload 21
    //   887: invokevirtual 538	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   890: ldc_w 567
    //   893: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   896: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   899: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   902: iconst_1
    //   903: anewarray 202	java/lang/Object
    //   906: dup
    //   907: iconst_0
    //   908: ldc_w 569
    //   911: aastore
    //   912: pop
    //   913: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   916: dup
    //   917: iconst_2
    //   918: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   921: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   924: athrow
    //   925: astore 19
    //   927: aload_2
    //   928: invokeinterface 341 1 0
    //   933: aload_3
    //   934: ifnull +33 -> 967
    //   937: aload_3
    //   938: aload_0
    //   939: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   942: iconst_3
    //   943: new 254	java/lang/StringBuilder
    //   946: dup
    //   947: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   950: aload 19
    //   952: invokevirtual 538	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   955: ldc_w 571
    //   958: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   961: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   964: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   967: iconst_1
    //   968: anewarray 202	java/lang/Object
    //   971: dup
    //   972: iconst_0
    //   973: ldc_w 573
    //   976: aastore
    //   977: pop
    //   978: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   981: dup
    //   982: iconst_3
    //   983: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   986: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   989: athrow
    //   990: astore 17
    //   992: aload_2
    //   993: invokeinterface 341 1 0
    //   998: aload_3
    //   999: ifnull +33 -> 1032
    //   1002: aload_3
    //   1003: aload_0
    //   1004: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   1007: iconst_3
    //   1008: new 254	java/lang/StringBuilder
    //   1011: dup
    //   1012: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   1015: aload 17
    //   1017: invokevirtual 538	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1020: ldc_w 575
    //   1023: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1026: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1029: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   1032: iconst_1
    //   1033: anewarray 202	java/lang/Object
    //   1036: dup
    //   1037: iconst_0
    //   1038: ldc_w 577
    //   1041: aastore
    //   1042: pop
    //   1043: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   1046: dup
    //   1047: iconst_3
    //   1048: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1051: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   1054: athrow
    //   1055: astore 15
    //   1057: aload_2
    //   1058: invokeinterface 341 1 0
    //   1063: aload_3
    //   1064: ifnull +33 -> 1097
    //   1067: aload_3
    //   1068: aload_0
    //   1069: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   1072: iconst_4
    //   1073: new 254	java/lang/StringBuilder
    //   1076: dup
    //   1077: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   1080: aload 15
    //   1082: invokevirtual 538	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1085: ldc_w 579
    //   1088: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1091: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1094: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   1097: iconst_1
    //   1098: anewarray 202	java/lang/Object
    //   1101: dup
    //   1102: iconst_0
    //   1103: ldc_w 581
    //   1106: aastore
    //   1107: pop
    //   1108: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   1111: dup
    //   1112: iconst_4
    //   1113: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1116: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   1119: athrow
    //   1120: astore 13
    //   1122: aload_2
    //   1123: invokeinterface 341 1 0
    //   1128: aload_3
    //   1129: ifnull +33 -> 1162
    //   1132: aload_3
    //   1133: aload_0
    //   1134: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   1137: iconst_5
    //   1138: new 254	java/lang/StringBuilder
    //   1141: dup
    //   1142: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   1145: aload 13
    //   1147: invokevirtual 538	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1150: ldc_w 583
    //   1153: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1156: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1159: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   1162: iconst_1
    //   1163: anewarray 202	java/lang/Object
    //   1166: dup
    //   1167: iconst_0
    //   1168: ldc_w 585
    //   1171: aastore
    //   1172: pop
    //   1173: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   1176: dup
    //   1177: iconst_5
    //   1178: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1181: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   1184: athrow
    //   1185: astore 12
    //   1187: aload_2
    //   1188: invokeinterface 341 1 0
    //   1193: aload_3
    //   1194: ifnull +33 -> 1227
    //   1197: aload_3
    //   1198: aload_0
    //   1199: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   1202: iconst_1
    //   1203: new 254	java/lang/StringBuilder
    //   1206: dup
    //   1207: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   1210: aload 12
    //   1212: invokevirtual 538	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1215: ldc_w 587
    //   1218: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1221: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1224: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   1227: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   1230: dup
    //   1231: iconst_1
    //   1232: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1235: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   1238: athrow
    //   1239: astore 11
    //   1241: aload_2
    //   1242: invokeinterface 341 1 0
    //   1247: aload_3
    //   1248: ifnull +33 -> 1281
    //   1251: aload_3
    //   1252: aload_0
    //   1253: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   1256: iconst_1
    //   1257: new 254	java/lang/StringBuilder
    //   1260: dup
    //   1261: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   1264: aload 11
    //   1266: invokevirtual 538	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1269: ldc_w 589
    //   1272: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1275: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1278: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   1281: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   1284: dup
    //   1285: iconst_1
    //   1286: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1289: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   1292: athrow
    //   1293: astore 10
    //   1295: aload_2
    //   1296: invokeinterface 341 1 0
    //   1301: aload_3
    //   1302: ifnull +34 -> 1336
    //   1305: aload_3
    //   1306: aload_0
    //   1307: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   1310: bipush 6
    //   1312: new 254	java/lang/StringBuilder
    //   1315: dup
    //   1316: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   1319: aload 10
    //   1321: invokevirtual 538	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1324: ldc_w 591
    //   1327: invokevirtual 264	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1330: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1333: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   1336: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   1339: dup
    //   1340: bipush 6
    //   1342: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1345: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   1348: athrow
    //   1349: astore 7
    //   1351: aload_2
    //   1352: invokeinterface 341 1 0
    //   1357: aload_0
    //   1358: getfield 23	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:c	I
    //   1361: ifgt +46 -> 1407
    //   1364: aload_0
    //   1365: iconst_1
    //   1366: aload_0
    //   1367: getfield 23	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:c	I
    //   1370: iadd
    //   1371: putfield 23	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:c	I
    //   1374: aload_0
    //   1375: invokevirtual 593	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:call	()Lcom/alipay/mobile/command/model/Response;
    //   1378: astore 8
    //   1380: iconst_2
    //   1381: anewarray 202	java/lang/Object
    //   1384: astore 9
    //   1386: aload 9
    //   1388: iconst_0
    //   1389: ldc_w 355
    //   1392: aastore
    //   1393: aload 9
    //   1395: iconst_1
    //   1396: aload_0
    //   1397: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   1400: invokevirtual 282	com/alipay/mobile/command/model/HttpUrlRequest:getUrl	()Ljava/lang/String;
    //   1403: aastore
    //   1404: aload 8
    //   1406: areturn
    //   1407: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   1410: dup
    //   1411: iconst_0
    //   1412: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1415: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   1418: athrow
    //   1419: astore 4
    //   1421: aload_2
    //   1422: invokeinterface 341 1 0
    //   1427: aload_3
    //   1428: ifnull +27 -> 1455
    //   1431: aload_3
    //   1432: aload_0
    //   1433: getfield 25	com/alipay/mobile/command/rpc/http/processor/impl/HttpProcessor:b	Lcom/alipay/mobile/command/model/HttpUrlRequest;
    //   1436: iconst_0
    //   1437: new 254	java/lang/StringBuilder
    //   1440: dup
    //   1441: invokespecial 520	java/lang/StringBuilder:<init>	()V
    //   1444: aload 4
    //   1446: invokevirtual 538	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1449: invokevirtual 267	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1452: invokevirtual 351	com/alipay/mobile/command/rpc/http/TransportCallback:onFailed	(Lcom/alipay/mobile/command/model/Request;ILjava/lang/String;)V
    //   1455: aload 4
    //   1457: iconst_0
    //   1458: anewarray 202	java/lang/Object
    //   1461: invokestatic 599	com/alipay/mobile/command/util/CommandLogUtil:upErrorInfo	(Ljava/lang/Throwable;[Ljava/lang/Object;)V
    //   1464: new 292	com/alipay/mobile/command/util/exception/HttpException
    //   1467: dup
    //   1468: iconst_0
    //   1469: invokestatic 331	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1472: invokespecial 545	com/alipay/mobile/command/util/exception/HttpException:<init>	(Ljava/lang/Integer;)V
    //   1475: athrow
    //   1476: aconst_null
    //   1477: astore 38
    //   1479: goto -1230 -> 249
    //
    // Exception table:
    //   from	to	target	type
    //   14	19	41	com/alipay/mobile/command/util/exception/HttpException
    //   26	41	41	com/alipay/mobile/command/util/exception/HttpException
    //   122	130	41	com/alipay/mobile/command/util/exception/HttpException
    //   130	169	41	com/alipay/mobile/command/util/exception/HttpException
    //   177	184	41	com/alipay/mobile/command/util/exception/HttpException
    //   184	214	41	com/alipay/mobile/command/util/exception/HttpException
    //   221	228	41	com/alipay/mobile/command/util/exception/HttpException
    //   235	249	41	com/alipay/mobile/command/util/exception/HttpException
    //   256	276	41	com/alipay/mobile/command/util/exception/HttpException
    //   279	285	41	com/alipay/mobile/command/util/exception/HttpException
    //   290	297	41	com/alipay/mobile/command/util/exception/HttpException
    //   297	323	41	com/alipay/mobile/command/util/exception/HttpException
    //   344	351	41	com/alipay/mobile/command/util/exception/HttpException
    //   354	366	41	com/alipay/mobile/command/util/exception/HttpException
    //   369	527	41	com/alipay/mobile/command/util/exception/HttpException
    //   527	559	41	com/alipay/mobile/command/util/exception/HttpException
    //   564	575	41	com/alipay/mobile/command/util/exception/HttpException
    //   580	650	41	com/alipay/mobile/command/util/exception/HttpException
    //   718	733	41	com/alipay/mobile/command/util/exception/HttpException
    //   736	747	41	com/alipay/mobile/command/util/exception/HttpException
    //   755	768	41	com/alipay/mobile/command/util/exception/HttpException
    //   14	19	89	finally
    //   26	41	89	finally
    //   47	53	89	finally
    //   57	75	89	finally
    //   75	89	89	finally
    //   122	130	89	finally
    //   130	169	89	finally
    //   177	184	89	finally
    //   184	214	89	finally
    //   221	228	89	finally
    //   235	249	89	finally
    //   256	276	89	finally
    //   279	285	89	finally
    //   290	297	89	finally
    //   297	323	89	finally
    //   328	344	89	finally
    //   344	351	89	finally
    //   354	366	89	finally
    //   369	527	89	finally
    //   527	559	89	finally
    //   564	575	89	finally
    //   580	650	89	finally
    //   655	661	89	finally
    //   665	695	89	finally
    //   695	718	89	finally
    //   718	733	89	finally
    //   736	747	89	finally
    //   755	768	89	finally
    //   797	803	89	finally
    //   807	837	89	finally
    //   837	860	89	finally
    //   862	868	89	finally
    //   872	902	89	finally
    //   902	925	89	finally
    //   927	933	89	finally
    //   937	967	89	finally
    //   967	990	89	finally
    //   992	998	89	finally
    //   1002	1032	89	finally
    //   1032	1055	89	finally
    //   1057	1063	89	finally
    //   1067	1097	89	finally
    //   1097	1120	89	finally
    //   1122	1128	89	finally
    //   1132	1162	89	finally
    //   1162	1185	89	finally
    //   1187	1193	89	finally
    //   1197	1227	89	finally
    //   1227	1239	89	finally
    //   1241	1247	89	finally
    //   1251	1281	89	finally
    //   1281	1293	89	finally
    //   1295	1301	89	finally
    //   1305	1336	89	finally
    //   1336	1349	89	finally
    //   1351	1380	89	finally
    //   1407	1419	89	finally
    //   1421	1427	89	finally
    //   1431	1455	89	finally
    //   1455	1476	89	finally
    //   14	19	326	java/net/URISyntaxException
    //   26	41	326	java/net/URISyntaxException
    //   122	130	326	java/net/URISyntaxException
    //   130	169	326	java/net/URISyntaxException
    //   177	184	326	java/net/URISyntaxException
    //   184	214	326	java/net/URISyntaxException
    //   221	228	326	java/net/URISyntaxException
    //   235	249	326	java/net/URISyntaxException
    //   256	276	326	java/net/URISyntaxException
    //   279	285	326	java/net/URISyntaxException
    //   290	297	326	java/net/URISyntaxException
    //   297	323	326	java/net/URISyntaxException
    //   344	351	326	java/net/URISyntaxException
    //   354	366	326	java/net/URISyntaxException
    //   369	527	326	java/net/URISyntaxException
    //   527	559	326	java/net/URISyntaxException
    //   564	575	326	java/net/URISyntaxException
    //   580	650	326	java/net/URISyntaxException
    //   718	733	326	java/net/URISyntaxException
    //   736	747	326	java/net/URISyntaxException
    //   755	768	326	java/net/URISyntaxException
    //   14	19	653	javax/net/ssl/SSLHandshakeException
    //   26	41	653	javax/net/ssl/SSLHandshakeException
    //   122	130	653	javax/net/ssl/SSLHandshakeException
    //   130	169	653	javax/net/ssl/SSLHandshakeException
    //   177	184	653	javax/net/ssl/SSLHandshakeException
    //   184	214	653	javax/net/ssl/SSLHandshakeException
    //   221	228	653	javax/net/ssl/SSLHandshakeException
    //   235	249	653	javax/net/ssl/SSLHandshakeException
    //   256	276	653	javax/net/ssl/SSLHandshakeException
    //   279	285	653	javax/net/ssl/SSLHandshakeException
    //   290	297	653	javax/net/ssl/SSLHandshakeException
    //   297	323	653	javax/net/ssl/SSLHandshakeException
    //   344	351	653	javax/net/ssl/SSLHandshakeException
    //   354	366	653	javax/net/ssl/SSLHandshakeException
    //   369	527	653	javax/net/ssl/SSLHandshakeException
    //   527	559	653	javax/net/ssl/SSLHandshakeException
    //   564	575	653	javax/net/ssl/SSLHandshakeException
    //   580	650	653	javax/net/ssl/SSLHandshakeException
    //   718	733	653	javax/net/ssl/SSLHandshakeException
    //   736	747	653	javax/net/ssl/SSLHandshakeException
    //   755	768	653	javax/net/ssl/SSLHandshakeException
    //   14	19	795	javax/net/ssl/SSLPeerUnverifiedException
    //   26	41	795	javax/net/ssl/SSLPeerUnverifiedException
    //   122	130	795	javax/net/ssl/SSLPeerUnverifiedException
    //   130	169	795	javax/net/ssl/SSLPeerUnverifiedException
    //   177	184	795	javax/net/ssl/SSLPeerUnverifiedException
    //   184	214	795	javax/net/ssl/SSLPeerUnverifiedException
    //   221	228	795	javax/net/ssl/SSLPeerUnverifiedException
    //   235	249	795	javax/net/ssl/SSLPeerUnverifiedException
    //   256	276	795	javax/net/ssl/SSLPeerUnverifiedException
    //   279	285	795	javax/net/ssl/SSLPeerUnverifiedException
    //   290	297	795	javax/net/ssl/SSLPeerUnverifiedException
    //   297	323	795	javax/net/ssl/SSLPeerUnverifiedException
    //   344	351	795	javax/net/ssl/SSLPeerUnverifiedException
    //   354	366	795	javax/net/ssl/SSLPeerUnverifiedException
    //   369	527	795	javax/net/ssl/SSLPeerUnverifiedException
    //   527	559	795	javax/net/ssl/SSLPeerUnverifiedException
    //   564	575	795	javax/net/ssl/SSLPeerUnverifiedException
    //   580	650	795	javax/net/ssl/SSLPeerUnverifiedException
    //   718	733	795	javax/net/ssl/SSLPeerUnverifiedException
    //   736	747	795	javax/net/ssl/SSLPeerUnverifiedException
    //   755	768	795	javax/net/ssl/SSLPeerUnverifiedException
    //   14	19	860	javax/net/ssl/SSLException
    //   26	41	860	javax/net/ssl/SSLException
    //   122	130	860	javax/net/ssl/SSLException
    //   130	169	860	javax/net/ssl/SSLException
    //   177	184	860	javax/net/ssl/SSLException
    //   184	214	860	javax/net/ssl/SSLException
    //   221	228	860	javax/net/ssl/SSLException
    //   235	249	860	javax/net/ssl/SSLException
    //   256	276	860	javax/net/ssl/SSLException
    //   279	285	860	javax/net/ssl/SSLException
    //   290	297	860	javax/net/ssl/SSLException
    //   297	323	860	javax/net/ssl/SSLException
    //   344	351	860	javax/net/ssl/SSLException
    //   354	366	860	javax/net/ssl/SSLException
    //   369	527	860	javax/net/ssl/SSLException
    //   527	559	860	javax/net/ssl/SSLException
    //   564	575	860	javax/net/ssl/SSLException
    //   580	650	860	javax/net/ssl/SSLException
    //   718	733	860	javax/net/ssl/SSLException
    //   736	747	860	javax/net/ssl/SSLException
    //   755	768	860	javax/net/ssl/SSLException
    //   14	19	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   26	41	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   122	130	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   130	169	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   177	184	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   184	214	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   221	228	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   235	249	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   256	276	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   279	285	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   290	297	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   297	323	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   344	351	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   354	366	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   369	527	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   527	559	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   564	575	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   580	650	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   718	733	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   736	747	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   755	768	925	org/apache/http/conn/ConnectionPoolTimeoutException
    //   14	19	990	org/apache/http/conn/ConnectTimeoutException
    //   26	41	990	org/apache/http/conn/ConnectTimeoutException
    //   122	130	990	org/apache/http/conn/ConnectTimeoutException
    //   130	169	990	org/apache/http/conn/ConnectTimeoutException
    //   177	184	990	org/apache/http/conn/ConnectTimeoutException
    //   184	214	990	org/apache/http/conn/ConnectTimeoutException
    //   221	228	990	org/apache/http/conn/ConnectTimeoutException
    //   235	249	990	org/apache/http/conn/ConnectTimeoutException
    //   256	276	990	org/apache/http/conn/ConnectTimeoutException
    //   279	285	990	org/apache/http/conn/ConnectTimeoutException
    //   290	297	990	org/apache/http/conn/ConnectTimeoutException
    //   297	323	990	org/apache/http/conn/ConnectTimeoutException
    //   344	351	990	org/apache/http/conn/ConnectTimeoutException
    //   354	366	990	org/apache/http/conn/ConnectTimeoutException
    //   369	527	990	org/apache/http/conn/ConnectTimeoutException
    //   527	559	990	org/apache/http/conn/ConnectTimeoutException
    //   564	575	990	org/apache/http/conn/ConnectTimeoutException
    //   580	650	990	org/apache/http/conn/ConnectTimeoutException
    //   718	733	990	org/apache/http/conn/ConnectTimeoutException
    //   736	747	990	org/apache/http/conn/ConnectTimeoutException
    //   755	768	990	org/apache/http/conn/ConnectTimeoutException
    //   14	19	1055	java/net/SocketTimeoutException
    //   26	41	1055	java/net/SocketTimeoutException
    //   122	130	1055	java/net/SocketTimeoutException
    //   130	169	1055	java/net/SocketTimeoutException
    //   177	184	1055	java/net/SocketTimeoutException
    //   184	214	1055	java/net/SocketTimeoutException
    //   221	228	1055	java/net/SocketTimeoutException
    //   235	249	1055	java/net/SocketTimeoutException
    //   256	276	1055	java/net/SocketTimeoutException
    //   279	285	1055	java/net/SocketTimeoutException
    //   290	297	1055	java/net/SocketTimeoutException
    //   297	323	1055	java/net/SocketTimeoutException
    //   344	351	1055	java/net/SocketTimeoutException
    //   354	366	1055	java/net/SocketTimeoutException
    //   369	527	1055	java/net/SocketTimeoutException
    //   527	559	1055	java/net/SocketTimeoutException
    //   564	575	1055	java/net/SocketTimeoutException
    //   580	650	1055	java/net/SocketTimeoutException
    //   718	733	1055	java/net/SocketTimeoutException
    //   736	747	1055	java/net/SocketTimeoutException
    //   755	768	1055	java/net/SocketTimeoutException
    //   14	19	1120	org/apache/http/NoHttpResponseException
    //   26	41	1120	org/apache/http/NoHttpResponseException
    //   122	130	1120	org/apache/http/NoHttpResponseException
    //   130	169	1120	org/apache/http/NoHttpResponseException
    //   177	184	1120	org/apache/http/NoHttpResponseException
    //   184	214	1120	org/apache/http/NoHttpResponseException
    //   221	228	1120	org/apache/http/NoHttpResponseException
    //   235	249	1120	org/apache/http/NoHttpResponseException
    //   256	276	1120	org/apache/http/NoHttpResponseException
    //   279	285	1120	org/apache/http/NoHttpResponseException
    //   290	297	1120	org/apache/http/NoHttpResponseException
    //   297	323	1120	org/apache/http/NoHttpResponseException
    //   344	351	1120	org/apache/http/NoHttpResponseException
    //   354	366	1120	org/apache/http/NoHttpResponseException
    //   369	527	1120	org/apache/http/NoHttpResponseException
    //   527	559	1120	org/apache/http/NoHttpResponseException
    //   564	575	1120	org/apache/http/NoHttpResponseException
    //   580	650	1120	org/apache/http/NoHttpResponseException
    //   718	733	1120	org/apache/http/NoHttpResponseException
    //   736	747	1120	org/apache/http/NoHttpResponseException
    //   755	768	1120	org/apache/http/NoHttpResponseException
    //   14	19	1185	org/apache/http/conn/HttpHostConnectException
    //   26	41	1185	org/apache/http/conn/HttpHostConnectException
    //   122	130	1185	org/apache/http/conn/HttpHostConnectException
    //   130	169	1185	org/apache/http/conn/HttpHostConnectException
    //   177	184	1185	org/apache/http/conn/HttpHostConnectException
    //   184	214	1185	org/apache/http/conn/HttpHostConnectException
    //   221	228	1185	org/apache/http/conn/HttpHostConnectException
    //   235	249	1185	org/apache/http/conn/HttpHostConnectException
    //   256	276	1185	org/apache/http/conn/HttpHostConnectException
    //   279	285	1185	org/apache/http/conn/HttpHostConnectException
    //   290	297	1185	org/apache/http/conn/HttpHostConnectException
    //   297	323	1185	org/apache/http/conn/HttpHostConnectException
    //   344	351	1185	org/apache/http/conn/HttpHostConnectException
    //   354	366	1185	org/apache/http/conn/HttpHostConnectException
    //   369	527	1185	org/apache/http/conn/HttpHostConnectException
    //   527	559	1185	org/apache/http/conn/HttpHostConnectException
    //   564	575	1185	org/apache/http/conn/HttpHostConnectException
    //   580	650	1185	org/apache/http/conn/HttpHostConnectException
    //   718	733	1185	org/apache/http/conn/HttpHostConnectException
    //   736	747	1185	org/apache/http/conn/HttpHostConnectException
    //   755	768	1185	org/apache/http/conn/HttpHostConnectException
    //   14	19	1239	java/net/UnknownHostException
    //   26	41	1239	java/net/UnknownHostException
    //   122	130	1239	java/net/UnknownHostException
    //   130	169	1239	java/net/UnknownHostException
    //   177	184	1239	java/net/UnknownHostException
    //   184	214	1239	java/net/UnknownHostException
    //   221	228	1239	java/net/UnknownHostException
    //   235	249	1239	java/net/UnknownHostException
    //   256	276	1239	java/net/UnknownHostException
    //   279	285	1239	java/net/UnknownHostException
    //   290	297	1239	java/net/UnknownHostException
    //   297	323	1239	java/net/UnknownHostException
    //   344	351	1239	java/net/UnknownHostException
    //   354	366	1239	java/net/UnknownHostException
    //   369	527	1239	java/net/UnknownHostException
    //   527	559	1239	java/net/UnknownHostException
    //   564	575	1239	java/net/UnknownHostException
    //   580	650	1239	java/net/UnknownHostException
    //   718	733	1239	java/net/UnknownHostException
    //   736	747	1239	java/net/UnknownHostException
    //   755	768	1239	java/net/UnknownHostException
    //   14	19	1293	java/io/IOException
    //   26	41	1293	java/io/IOException
    //   122	130	1293	java/io/IOException
    //   130	169	1293	java/io/IOException
    //   177	184	1293	java/io/IOException
    //   184	214	1293	java/io/IOException
    //   221	228	1293	java/io/IOException
    //   235	249	1293	java/io/IOException
    //   256	276	1293	java/io/IOException
    //   279	285	1293	java/io/IOException
    //   290	297	1293	java/io/IOException
    //   297	323	1293	java/io/IOException
    //   344	351	1293	java/io/IOException
    //   354	366	1293	java/io/IOException
    //   369	527	1293	java/io/IOException
    //   527	559	1293	java/io/IOException
    //   564	575	1293	java/io/IOException
    //   580	650	1293	java/io/IOException
    //   718	733	1293	java/io/IOException
    //   736	747	1293	java/io/IOException
    //   755	768	1293	java/io/IOException
    //   14	19	1349	java/lang/NullPointerException
    //   26	41	1349	java/lang/NullPointerException
    //   122	130	1349	java/lang/NullPointerException
    //   130	169	1349	java/lang/NullPointerException
    //   177	184	1349	java/lang/NullPointerException
    //   184	214	1349	java/lang/NullPointerException
    //   221	228	1349	java/lang/NullPointerException
    //   235	249	1349	java/lang/NullPointerException
    //   256	276	1349	java/lang/NullPointerException
    //   279	285	1349	java/lang/NullPointerException
    //   290	297	1349	java/lang/NullPointerException
    //   297	323	1349	java/lang/NullPointerException
    //   344	351	1349	java/lang/NullPointerException
    //   354	366	1349	java/lang/NullPointerException
    //   369	527	1349	java/lang/NullPointerException
    //   527	559	1349	java/lang/NullPointerException
    //   564	575	1349	java/lang/NullPointerException
    //   580	650	1349	java/lang/NullPointerException
    //   718	733	1349	java/lang/NullPointerException
    //   736	747	1349	java/lang/NullPointerException
    //   755	768	1349	java/lang/NullPointerException
    //   14	19	1419	java/lang/Exception
    //   26	41	1419	java/lang/Exception
    //   122	130	1419	java/lang/Exception
    //   130	169	1419	java/lang/Exception
    //   177	184	1419	java/lang/Exception
    //   184	214	1419	java/lang/Exception
    //   221	228	1419	java/lang/Exception
    //   235	249	1419	java/lang/Exception
    //   256	276	1419	java/lang/Exception
    //   279	285	1419	java/lang/Exception
    //   290	297	1419	java/lang/Exception
    //   297	323	1419	java/lang/Exception
    //   344	351	1419	java/lang/Exception
    //   354	366	1419	java/lang/Exception
    //   369	527	1419	java/lang/Exception
    //   527	559	1419	java/lang/Exception
    //   564	575	1419	java/lang/Exception
    //   580	650	1419	java/lang/Exception
    //   718	733	1419	java/lang/Exception
    //   736	747	1419	java/lang/Exception
    //   755	768	1419	java/lang/Exception
  }

  public HttpUrlRequest getRequest()
  {
    return this.b;
  }

  public Response processResponse(HttpResponse paramHttpResponse, HttpUrlRequest paramHttpUrlRequest, TransportCallback paramTransportCallback)
  {
    int i = paramHttpResponse.getStatusLine().getStatusCode();
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = "begin parse Response check status,";
    arrayOfObject[1] = "status:";
    arrayOfObject[2] = Integer.valueOf(i);
    String str = paramHttpResponse.getStatusLine().getReasonPhrase();
    if ((i != 200) && (!a(i)))
      throw new HttpException(Integer.valueOf(paramHttpResponse.getStatusLine().getStatusCode()), paramHttpResponse.getStatusLine().getReasonPhrase());
    return a(paramHttpResponse, i, str, paramTransportCallback);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.processor.impl.HttpProcessor
 * JD-Core Version:    0.6.2
 */