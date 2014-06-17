package com.alipay.mobile.command.rpc.http.processor.impl;

import com.alipay.mobile.command.model.DownloadInHttpRequest;
import com.alipay.mobile.command.rpc.http.AndroidHttpClientExt;
import com.alipay.mobile.command.rpc.http.TransportCallback;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;
import java.util.TimeZone;
import org.apache.http.Header;
import org.apache.http.HttpResponse;
import org.apache.http.message.BasicHeader;

public class DownLoadInHttpProcessor extends HttpProcessor
{
  private static SimpleDateFormat b = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss 'GMT'", Locale.US);
  private DownloadInHttpRequest a;

  public DownLoadInHttpProcessor(DownloadInHttpRequest paramDownloadInHttpRequest, TransportCallback paramTransportCallback)
  {
    super(paramDownloadInHttpRequest, paramTransportCallback);
    this.a = paramDownloadInHttpRequest;
  }

  // ERROR //
  private com.alipay.mobile.command.model.Response a(HttpResponse paramHttpResponse, int paramInt, java.lang.String paramString, File paramFile)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 38	com/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor:b	()Ljava/net/URI;
    //   4: invokevirtual 44	java/net/URI:toURL	()Ljava/net/URL;
    //   7: invokevirtual 50	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   10: checkcast 52	java/net/HttpURLConnection
    //   13: astore 6
    //   15: aload 6
    //   17: invokevirtual 56	java/net/HttpURLConnection:getContentLength	()I
    //   20: istore 11
    //   22: aload 4
    //   24: invokevirtual 62	java/io/File:length	()J
    //   27: iload 11
    //   29: i2l
    //   30: lcmp
    //   31: ifne +17 -> 48
    //   34: aload 6
    //   36: invokevirtual 65	java/net/HttpURLConnection:getLastModified	()J
    //   39: aload 4
    //   41: invokevirtual 68	java/io/File:lastModified	()J
    //   44: lcmp
    //   45: ifeq +90 -> 135
    //   48: new 70	java/io/IOException
    //   51: dup
    //   52: new 72	java/lang/StringBuilder
    //   55: dup
    //   56: ldc 74
    //   58: invokespecial 77	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   61: iload_2
    //   62: invokevirtual 81	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   65: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokespecial 86	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   71: athrow
    //   72: astore 10
    //   74: aload 4
    //   76: invokevirtual 90	java/io/File:exists	()Z
    //   79: ifeq +9 -> 88
    //   82: aload 4
    //   84: iconst_1
    //   85: invokestatic 96	com/alipay/mobile/command/util/CommandUtil:delFile	(Ljava/io/File;Z)V
    //   88: new 70	java/io/IOException
    //   91: dup
    //   92: new 72	java/lang/StringBuilder
    //   95: dup
    //   96: ldc 74
    //   98: invokespecial 77	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   101: iload_2
    //   102: invokevirtual 81	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   105: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   108: invokespecial 86	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   111: athrow
    //   112: astore 7
    //   114: aload 6
    //   116: astore 8
    //   118: aload 7
    //   120: astore 9
    //   122: aload 8
    //   124: ifnull +8 -> 132
    //   127: aload 8
    //   129: invokevirtual 99	java/net/HttpURLConnection:disconnect	()V
    //   132: aload 9
    //   134: athrow
    //   135: new 101	com/alipay/mobile/command/model/HttpUrlResponse
    //   138: dup
    //   139: aconst_null
    //   140: iload_2
    //   141: aload_3
    //   142: aconst_null
    //   143: invokespecial 104	com/alipay/mobile/command/model/HttpUrlResponse:<init>	(Lcom/alipay/mobile/command/model/HttpUrlHeader;ILjava/lang/String;[B)V
    //   146: astore 12
    //   148: aload 12
    //   150: aload_1
    //   151: invokestatic 107	com/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor:a	(Lcom/alipay/mobile/command/model/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    //   154: aload 6
    //   156: ifnull +8 -> 164
    //   159: aload 6
    //   161: invokevirtual 99	java/net/HttpURLConnection:disconnect	()V
    //   164: aload 12
    //   166: areturn
    //   167: astore 9
    //   169: aconst_null
    //   170: astore 8
    //   172: goto -50 -> 122
    //   175: astore 5
    //   177: aconst_null
    //   178: astore 6
    //   180: goto -106 -> 74
    //
    // Exception table:
    //   from	to	target	type
    //   15	48	72	java/lang/Exception
    //   48	72	72	java/lang/Exception
    //   135	154	72	java/lang/Exception
    //   15	48	112	finally
    //   48	72	112	finally
    //   74	88	112	finally
    //   88	112	112	finally
    //   135	154	112	finally
    //   0	15	167	finally
    //   0	15	175	java/lang/Exception
  }

  private static void a(HttpResponse paramHttpResponse, File paramFile)
  {
    try
    {
      Header localHeader = paramHttpResponse.getFirstHeader("Last-Modified");
      if (localHeader != null)
        paramFile.setLastModified(AndroidHttpClientExt.parseDate(localHeader.getValue()));
      return;
    }
    catch (Exception localException)
    {
    }
  }

  // ERROR //
  protected final com.alipay.mobile.command.model.Response a(HttpResponse paramHttpResponse, int paramInt, java.lang.String paramString, TransportCallback paramTransportCallback)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokeinterface 136 1 0
    //   6: astore 5
    //   8: aconst_null
    //   9: astore 6
    //   11: aload 5
    //   13: ifnull +37 -> 50
    //   16: new 58	java/io/File
    //   19: dup
    //   20: aload_0
    //   21: getfield 32	com/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor:a	Lcom/alipay/mobile/command/model/DownloadInHttpRequest;
    //   24: invokevirtual 141	com/alipay/mobile/command/model/DownloadInHttpRequest:getPath	()Ljava/lang/String;
    //   27: invokespecial 142	java/io/File:<init>	(Ljava/lang/String;)V
    //   30: astore 7
    //   32: iload_2
    //   33: sipush 416
    //   36: if_icmpne +17 -> 53
    //   39: aload_0
    //   40: aload_1
    //   41: iload_2
    //   42: aload_3
    //   43: aload 7
    //   45: invokespecial 144	com/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor:a	(Lorg/apache/http/HttpResponse;ILjava/lang/String;Ljava/io/File;)Lcom/alipay/mobile/command/model/Response;
    //   48: astore 6
    //   50: aload 6
    //   52: areturn
    //   53: iload_2
    //   54: sipush 200
    //   57: if_icmpne +17 -> 74
    //   60: aload 7
    //   62: invokevirtual 90	java/io/File:exists	()Z
    //   65: ifeq +9 -> 74
    //   68: aload 7
    //   70: iconst_1
    //   71: invokestatic 96	com/alipay/mobile/command/util/CommandUtil:delFile	(Ljava/io/File;Z)V
    //   74: iload_2
    //   75: sipush 200
    //   78: if_icmpeq +39 -> 117
    //   81: iload_2
    //   82: sipush 206
    //   85: if_icmpeq +32 -> 117
    //   88: aload 7
    //   90: invokevirtual 147	java/io/File:deleteOnExit	()V
    //   93: new 70	java/io/IOException
    //   96: dup
    //   97: new 72	java/lang/StringBuilder
    //   100: dup
    //   101: ldc 74
    //   103: invokespecial 77	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   106: iload_2
    //   107: invokevirtual 81	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   110: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   113: invokespecial 86	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   116: athrow
    //   117: aload 7
    //   119: invokevirtual 62	java/io/File:length	()J
    //   122: lstore 8
    //   124: new 149	java/io/FileOutputStream
    //   127: dup
    //   128: aload 7
    //   130: iconst_1
    //   131: invokespecial 151	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   134: astore 10
    //   136: invokestatic 156	java/lang/System:currentTimeMillis	()J
    //   139: lstore 14
    //   141: aload_0
    //   142: aload 5
    //   144: lload 8
    //   146: aload 10
    //   148: aload 4
    //   150: invokevirtual 159	com/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor:a	(Lorg/apache/http/HttpEntity;JLjava/io/OutputStream;Lcom/alipay/mobile/command/rpc/http/TransportCallback;)V
    //   153: invokestatic 165	com/alipay/mobile/command/rpc/http/HttpManager:getInstance	()Lcom/alipay/mobile/command/rpc/http/HttpManager;
    //   156: invokestatic 156	java/lang/System:currentTimeMillis	()J
    //   159: lload 14
    //   161: lsub
    //   162: invokevirtual 169	com/alipay/mobile/command/rpc/http/HttpManager:addSocketTime	(J)V
    //   165: invokestatic 165	com/alipay/mobile/command/rpc/http/HttpManager:getInstance	()Lcom/alipay/mobile/command/rpc/http/HttpManager;
    //   168: aload 7
    //   170: invokevirtual 62	java/io/File:length	()J
    //   173: invokevirtual 172	com/alipay/mobile/command/rpc/http/HttpManager:addDataSize	(J)V
    //   176: new 101	com/alipay/mobile/command/model/HttpUrlResponse
    //   179: dup
    //   180: new 174	com/alipay/mobile/command/model/HttpUrlHeader
    //   183: dup
    //   184: invokespecial 176	com/alipay/mobile/command/model/HttpUrlHeader:<init>	()V
    //   187: iload_2
    //   188: aload_3
    //   189: aconst_null
    //   190: invokespecial 104	com/alipay/mobile/command/model/HttpUrlResponse:<init>	(Lcom/alipay/mobile/command/model/HttpUrlHeader;ILjava/lang/String;[B)V
    //   193: astore 16
    //   195: aload 16
    //   197: aload_1
    //   198: invokestatic 107	com/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor:a	(Lcom/alipay/mobile/command/model/HttpUrlResponse;Lorg/apache/http/HttpResponse;)V
    //   201: aload_1
    //   202: aload 7
    //   204: invokestatic 178	com/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor:a	(Lorg/apache/http/HttpResponse;Ljava/io/File;)V
    //   207: aload 10
    //   209: invokevirtual 181	java/io/FileOutputStream:close	()V
    //   212: aload 16
    //   214: areturn
    //   215: astore 17
    //   217: new 183	java/lang/RuntimeException
    //   220: dup
    //   221: ldc 185
    //   223: aload 17
    //   225: invokevirtual 189	java/io/IOException:getCause	()Ljava/lang/Throwable;
    //   228: invokespecial 192	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   231: athrow
    //   232: astore 19
    //   234: aconst_null
    //   235: astore 10
    //   237: aload 19
    //   239: astore 11
    //   241: new 70	java/io/IOException
    //   244: dup
    //   245: new 72	java/lang/StringBuilder
    //   248: dup
    //   249: ldc 194
    //   251: invokespecial 77	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   254: aload 11
    //   256: invokevirtual 197	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
    //   259: invokevirtual 200	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   262: invokevirtual 85	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   265: invokespecial 86	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   268: athrow
    //   269: astore 12
    //   271: aload_1
    //   272: aload 7
    //   274: invokestatic 178	com/alipay/mobile/command/rpc/http/processor/impl/DownLoadInHttpProcessor:a	(Lorg/apache/http/HttpResponse;Ljava/io/File;)V
    //   277: aload 10
    //   279: ifnull +8 -> 287
    //   282: aload 10
    //   284: invokevirtual 181	java/io/FileOutputStream:close	()V
    //   287: aload 12
    //   289: athrow
    //   290: astore 13
    //   292: new 183	java/lang/RuntimeException
    //   295: dup
    //   296: ldc 185
    //   298: aload 13
    //   300: invokevirtual 189	java/io/IOException:getCause	()Ljava/lang/Throwable;
    //   303: invokespecial 192	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   306: athrow
    //   307: astore 18
    //   309: aload 18
    //   311: astore 12
    //   313: aconst_null
    //   314: astore 10
    //   316: goto -45 -> 271
    //   319: astore 11
    //   321: goto -80 -> 241
    //
    // Exception table:
    //   from	to	target	type
    //   207	212	215	java/io/IOException
    //   124	136	232	java/lang/Exception
    //   136	201	269	finally
    //   241	269	269	finally
    //   282	287	290	java/io/IOException
    //   124	136	307	finally
    //   136	201	319	java/lang/Exception
  }

  protected final ArrayList<Header> a()
  {
    ArrayList localArrayList = super.a();
    File localFile = new File(this.a.getPath());
    long l1 = localFile.length();
    long l2 = localFile.lastModified();
    if ((l1 > 0L) && (l2 > 0L))
    {
      localArrayList.add(new BasicHeader("Range", "bytes=" + l1 + "-"));
      b.setTimeZone(TimeZone.getTimeZone("GMT"));
      localArrayList.add(new BasicHeader("If-Range", b.format(Long.valueOf(l2))));
    }
    return localArrayList;
  }

  protected final boolean a(int paramInt)
  {
    return (paramInt == 206) || (paramInt == 416);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.processor.impl.DownLoadInHttpProcessor
 * JD-Core Version:    0.6.2
 */