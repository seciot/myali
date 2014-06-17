package com.alipay.mobile.common.transport.download;

import android.os.Build.VERSION;
import com.alipay.mobile.common.transport.http.AndroidHttpClient;
import com.alipay.mobile.common.transport.http.HttpManager;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.common.transport.http.HttpWorker;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicHeader;

public class DownloadWorker extends HttpWorker
{
  private String a;

  public DownloadWorker(HttpManager paramHttpManager, HttpUrlRequest paramHttpUrlRequest)
  {
    super(paramHttpManager, paramHttpUrlRequest);
    this.a = ((DownloadRequest)paramHttpUrlRequest).getPath();
  }

  // ERROR //
  private com.alipay.mobile.common.transport.Response a(HttpResponse paramHttpResponse, int paramInt, String paramString, File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 25	com/alipay/mobile/common/transport/download/DownloadWorker:getUri	()Ljava/net/URI;
    //   4: invokevirtual 31	java/net/URI:toURL	()Ljava/net/URL;
    //   7: invokevirtual 37	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   10: checkcast 39	java/net/HttpURLConnection
    //   13: astore 6
    //   15: aload 6
    //   17: invokevirtual 43	java/net/HttpURLConnection:getContentLength	()I
    //   20: istore 12
    //   22: aload 4
    //   24: invokevirtual 49	java/io/File:length	()J
    //   27: iload 12
    //   29: i2l
    //   30: lcmp
    //   31: ifne +17 -> 48
    //   34: aload 6
    //   36: invokevirtual 52	java/net/HttpURLConnection:getLastModified	()J
    //   39: aload 4
    //   41: invokevirtual 55	java/io/File:lastModified	()J
    //   44: lcmp
    //   45: ifeq +90 -> 135
    //   48: new 57	java/io/IOException
    //   51: dup
    //   52: new 59	java/lang/StringBuilder
    //   55: dup
    //   56: ldc 61
    //   58: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   61: iload_2
    //   62: invokevirtual 68	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   65: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokespecial 72	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   71: athrow
    //   72: astore 11
    //   74: aload 4
    //   76: invokevirtual 76	java/io/File:exists	()Z
    //   79: ifeq +9 -> 88
    //   82: aload 4
    //   84: invokevirtual 79	java/io/File:delete	()Z
    //   87: pop
    //   88: new 57	java/io/IOException
    //   91: dup
    //   92: new 59	java/lang/StringBuilder
    //   95: dup
    //   96: ldc 61
    //   98: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   101: iload_2
    //   102: invokevirtual 68	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   105: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokespecial 72	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   111: athrow
    //   112: astore 7
    //   114: aload 6
    //   116: astore 8
    //   118: aload 7
    //   120: astore 9
    //   122: aload 8
    //   124: ifnull +8 -> 132
    //   127: aload 8
    //   129: invokevirtual 83	java/net/HttpURLConnection:disconnect	()V
    //   132: aload 9
    //   134: athrow
    //   135: new 85	com/alipay/mobile/common/transport/http/HttpUrlResponse
    //   138: dup
    //   139: aconst_null
    //   140: iload_2
    //   141: aload_3
    //   142: aconst_null
    //   143: invokespecial 88	com/alipay/mobile/common/transport/http/HttpUrlResponse:<init>	(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V
    //   146: astore 13
    //   148: aload_0
    //   149: aload 13
    //   151: aload_1
    //   152: invokevirtual 92	com/alipay/mobile/common/transport/download/DownloadWorker:fillResponse	(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    //   155: aload 6
    //   157: ifnull +8 -> 165
    //   160: aload 6
    //   162: invokevirtual 83	java/net/HttpURLConnection:disconnect	()V
    //   165: aload 13
    //   167: areturn
    //   168: astore 9
    //   170: aconst_null
    //   171: astore 8
    //   173: goto -51 -> 122
    //   176: astore 5
    //   178: aconst_null
    //   179: astore 6
    //   181: goto -107 -> 74
    //
    // Exception table:
    //   from	to	target	type
    //   15	48	72	java/lang/Exception
    //   48	72	72	java/lang/Exception
    //   135	155	72	java/lang/Exception
    //   15	48	112	finally
    //   48	72	112	finally
    //   74	88	112	finally
    //   88	112	112	finally
    //   135	155	112	finally
    //   0	15	168	finally
    //   0	15	176	java/lang/Exception
  }

  private static void a(HttpResponse paramHttpResponse, File paramFile)
  {
    try
    {
      Header localHeader = paramHttpResponse.getFirstHeader("Last-Modified");
      if (localHeader != null)
        paramFile.setLastModified(AndroidHttpClient.parseDate(localHeader.getValue()));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  protected ArrayList getHeaders()
  {
    ArrayList localArrayList = super.getHeaders();
    File localFile = new File(this.a);
    long l1 = localFile.length();
    long l2 = localFile.lastModified();
    if ((l1 > 0L) && (l2 > 0L) && (Build.VERSION.SDK_INT < 14))
    {
      localArrayList.add(new BasicHeader("Range", "bytes=" + l1 + "-"));
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
      localSimpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
      localArrayList.add(new BasicHeader("If-Range", localSimpleDateFormat.format(Long.valueOf(l2))));
    }
    return localArrayList;
  }

  // ERROR //
  protected com.alipay.mobile.common.transport.Response handleResponse(HttpResponse paramHttpResponse, int paramInt, String paramString, com.alipay.mobile.common.transport.TransportCallback paramTransportCallback)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 193 1 0
    //   6: astore 5
    //   8: aconst_null
    //   9: astore 6
    //   11: aload 5
    //   13: ifnull +34 -> 47
    //   16: new 45	java/io/File
    //   19: dup
    //   20: aload_0
    //   21: getfield 18	com/alipay/mobile/common/transport/download/DownloadWorker:a	Ljava/lang/String;
    //   24: invokespecial 121	java/io/File:<init>	(Ljava/lang/String;)V
    //   27: astore 7
    //   29: iload_2
    //   30: sipush 416
    //   33: if_icmpne +17 -> 50
    //   36: aload_0
    //   37: aload_1
    //   38: iload_2
    //   39: aload_3
    //   40: aload 7
    //   42: invokespecial 195	com/alipay/mobile/common/transport/download/DownloadWorker:a	(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/common/transport/Response;
    //   45: astore 6
    //   47: aload 6
    //   49: areturn
    //   50: iload_2
    //   51: sipush 200
    //   54: if_icmpne +29 -> 83
    //   57: aload 7
    //   59: invokevirtual 76	java/io/File:exists	()Z
    //   62: ifeq +21 -> 83
    //   65: aload 7
    //   67: invokevirtual 79	java/io/File:delete	()Z
    //   70: ifne +13 -> 83
    //   73: new 57	java/io/IOException
    //   76: dup
    //   77: ldc 197
    //   79: invokespecial 72	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   82: athrow
    //   83: iload_2
    //   84: sipush 200
    //   87: if_icmpeq +39 -> 126
    //   90: iload_2
    //   91: sipush 206
    //   94: if_icmpeq +32 -> 126
    //   97: aload 7
    //   99: invokevirtual 200	java/io/File:deleteOnExit	()V
    //   102: new 57	java/io/IOException
    //   105: dup
    //   106: new 59	java/lang/StringBuilder
    //   109: dup
    //   110: ldc 61
    //   112: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   115: iload_2
    //   116: invokevirtual 68	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   119: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   122: invokespecial 72	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   125: athrow
    //   126: aload 7
    //   128: invokevirtual 49	java/io/File:length	()J
    //   131: lstore 8
    //   133: new 202	java/io/FileOutputStream
    //   136: dup
    //   137: aload 7
    //   139: iconst_1
    //   140: invokespecial 205	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   143: astore 10
    //   145: invokestatic 210	java/lang/System:currentTimeMillis	()J
    //   148: lstore 14
    //   150: aload_0
    //   151: aload 5
    //   153: lload 8
    //   155: aload 10
    //   157: aload 4
    //   159: invokevirtual 214	com/alipay/mobile/common/transport/download/DownloadWorker:writeData	(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/common/transport/TransportCallback;)V
    //   162: aload_0
    //   163: getfield 218	com/alipay/mobile/common/transport/download/DownloadWorker:mHttpManager	Lcom/alipay/mobile/common/transport/http/HttpManager;
    //   166: invokestatic 210	java/lang/System:currentTimeMillis	()J
    //   169: lload 14
    //   171: lsub
    //   172: invokevirtual 224	com/alipay/mobile/common/transport/http/HttpManager:addSocketTime	(J)V
    //   175: aload_0
    //   176: getfield 218	com/alipay/mobile/common/transport/download/DownloadWorker:mHttpManager	Lcom/alipay/mobile/common/transport/http/HttpManager;
    //   179: aload 7
    //   181: invokevirtual 49	java/io/File:length	()J
    //   184: invokevirtual 227	com/alipay/mobile/common/transport/http/HttpManager:addDataSize	(J)V
    //   187: new 85	com/alipay/mobile/common/transport/http/HttpUrlResponse
    //   190: dup
    //   191: new 229	com/alipay/mobile/common/transport/http/HttpUrlHeader
    //   194: dup
    //   195: invokespecial 231	com/alipay/mobile/common/transport/http/HttpUrlHeader:<init>	()V
    //   198: iload_2
    //   199: aload_3
    //   200: aconst_null
    //   201: invokespecial 88	com/alipay/mobile/common/transport/http/HttpUrlResponse:<init>	(Lcom/alipay/mobile/common/transport/http/HttpUrlHeader;ILjava/lang/String;[B)V
    //   204: astore 16
    //   206: aload_0
    //   207: aload 16
    //   209: aload_1
    //   210: invokevirtual 92	com/alipay/mobile/common/transport/download/DownloadWorker:fillResponse	(Lcom/alipay/mobile/common/transport/http/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    //   213: aload_1
    //   214: aload 7
    //   216: invokestatic 233	com/alipay/mobile/common/transport/download/DownloadWorker:a	(Lorg/apache/http/HttpResponse;Ljava/io/File;)V
    //   219: aload 10
    //   221: invokevirtual 236	java/io/FileOutputStream:close	()V
    //   224: aload 16
    //   226: areturn
    //   227: astore 17
    //   229: new 238	java/lang/RuntimeException
    //   232: dup
    //   233: ldc 240
    //   235: aload 17
    //   237: invokevirtual 244	java/io/IOException:getCause	()Ljava/lang/Throwable;
    //   240: invokespecial 247	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   243: athrow
    //   244: astore 19
    //   246: aconst_null
    //   247: astore 10
    //   249: aload 19
    //   251: astore 11
    //   253: new 57	java/io/IOException
    //   256: dup
    //   257: new 59	java/lang/StringBuilder
    //   260: dup
    //   261: ldc 249
    //   263: invokespecial 64	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   266: aload 11
    //   268: invokevirtual 252	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
    //   271: invokevirtual 141	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   274: invokevirtual 71	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   277: invokespecial 72	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   280: athrow
    //   281: astore 12
    //   283: aload_1
    //   284: aload 7
    //   286: invokestatic 233	com/alipay/mobile/common/transport/download/DownloadWorker:a	(Lorg/apache/http/HttpResponse;Ljava/io/File;)V
    //   289: aload 10
    //   291: ifnull +8 -> 299
    //   294: aload 10
    //   296: invokevirtual 236	java/io/FileOutputStream:close	()V
    //   299: aload 12
    //   301: athrow
    //   302: astore 13
    //   304: new 238	java/lang/RuntimeException
    //   307: dup
    //   308: ldc 240
    //   310: aload 13
    //   312: invokevirtual 244	java/io/IOException:getCause	()Ljava/lang/Throwable;
    //   315: invokespecial 247	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   318: athrow
    //   319: astore 18
    //   321: aload 18
    //   323: astore 12
    //   325: aconst_null
    //   326: astore 10
    //   328: goto -45 -> 283
    //   331: astore 11
    //   333: goto -80 -> 253
    //
    // Exception table:
    //   from	to	target	type
    //   219	224	227	java/io/IOException
    //   133	145	244	java/lang/Exception
    //   145	213	281	finally
    //   253	281	281	finally
    //   294	299	302	java/io/IOException
    //   133	145	319	finally
    //   145	213	331	java/lang/Exception
  }

  protected boolean willHandleOtherCode(int paramInt, String paramString)
  {
    return (paramInt == 206) || (paramInt == 416);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.download.DownloadWorker
 * JD-Core Version:    0.6.2
 */