package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.DiskLruCache;
import com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.Editor;
import com.alipay.mobile.common.transport.spdy.internal.DiskLruCache.Snapshot;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpEngine;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpURLConnectionImpl;
import com.alipay.mobile.common.transport.spdy.internal.http.HttpsURLConnectionImpl;
import java.io.File;
import java.io.IOException;
import java.net.CacheResponse;
import java.net.ResponseCache;
import java.net.URI;
import java.net.URLConnection;
import java.util.Map;

public final class HttpResponseCache extends ResponseCache
{
  private final DiskLruCache a;
  private int b;
  private int c;
  private int d;
  private int e;
  private int f;
  final OkResponseCache okResponseCache = new HttpResponseCache.1(this);

  public HttpResponseCache(File paramFile, long paramLong)
  {
    this.a = DiskLruCache.open(paramFile, 201105, 2, paramLong);
  }

  private static HttpEngine a(URLConnection paramURLConnection)
  {
    if ((paramURLConnection instanceof HttpURLConnectionImpl))
      return ((HttpURLConnectionImpl)paramURLConnection).getHttpEngine();
    if ((paramURLConnection instanceof HttpsURLConnectionImpl))
      return ((HttpsURLConnectionImpl)paramURLConnection).getHttpEngine();
    return null;
  }

  private void a()
  {
    try
    {
      this.e = (1 + this.e);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void a(ResponseSource paramResponseSource)
  {
    while (true)
    {
      try
      {
        this.f = (1 + this.f);
        int i = HttpResponseCache.3.$SwitchMap$com$alipay$mobile$common$transport$spdy$ResponseSource[paramResponseSource.ordinal()];
        switch (i)
        {
        default:
          return;
        case 1:
          this.e = (1 + this.e);
          continue;
        case 2:
        case 3:
        }
      }
      finally
      {
      }
      this.d = (1 + this.d);
    }
  }

  private static void a(DiskLruCache.Editor paramEditor)
  {
    if (paramEditor != null);
    try
    {
      paramEditor.abort();
      return;
    }
    catch (IOException localIOException)
    {
    }
  }

  private boolean a(String paramString, URI paramURI)
  {
    if ((paramString.equals("POST")) || (paramString.equals("PUT")) || (paramString.equals("DELETE")));
    try
    {
      this.a.remove(Util.hash(paramURI.toString()));
      label42: return true;
      return false;
    }
    catch (IOException localIOException)
    {
      break label42;
    }
  }

  public final void close()
  {
    this.a.close();
  }

  public final void delete()
  {
    this.a.delete();
  }

  public final void flush()
  {
    this.a.flush();
  }

  public final CacheResponse get(URI paramURI, String paramString, Map paramMap)
  {
    String str = Util.hash(paramURI.toString());
    try
    {
      DiskLruCache.Snapshot localSnapshot = this.a.get(str);
      if (localSnapshot == null)
        return null;
      HttpResponseCache.Entry localEntry = new HttpResponseCache.Entry(localSnapshot.getInputStream(0));
      if (!localEntry.matches(paramURI, paramString, paramMap))
      {
        localSnapshot.close();
        return null;
      }
      if (HttpResponseCache.Entry.access$400(localEntry))
        return new HttpResponseCache.EntrySecureCacheResponse(localEntry, localSnapshot);
      return new HttpResponseCache.EntryCacheResponse(localEntry, localSnapshot);
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }

  public final File getDirectory()
  {
    return this.a.getDirectory();
  }

  public final int getHitCount()
  {
    try
    {
      int i = this.e;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long getMaxSize()
  {
    return this.a.getMaxSize();
  }

  public final int getNetworkCount()
  {
    try
    {
      int i = this.d;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int getRequestCount()
  {
    try
    {
      int i = this.f;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final long getSize()
  {
    return this.a.size();
  }

  public final int getWriteAbortCount()
  {
    try
    {
      int i = this.c;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int getWriteSuccessCount()
  {
    try
    {
      int i = this.b;
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean isClosed()
  {
    return this.a.isClosed();
  }

  // ERROR //
  public final java.net.CacheRequest put(URI paramURI, URLConnection paramURLConnection)
  {
    // Byte code:
    //   0: aload_2
    //   1: instanceof 252
    //   4: ifne +5 -> 9
    //   7: aconst_null
    //   8: areturn
    //   9: aload_2
    //   10: checkcast 252	java/net/HttpURLConnection
    //   13: astore_3
    //   14: aload_3
    //   15: invokevirtual 255	java/net/HttpURLConnection:getRequestMethod	()Ljava/lang/String;
    //   18: astore 4
    //   20: aload_0
    //   21: aload 4
    //   23: aload_1
    //   24: invokespecial 105	com/alipay/mobile/common/transport/spdy/HttpResponseCache:a	(Ljava/lang/String;Ljava/net/URI;)Z
    //   27: ifne -20 -> 7
    //   30: aload 4
    //   32: ldc_w 257
    //   35: invokevirtual 81	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   38: ifeq -31 -> 7
    //   41: aload_3
    //   42: invokestatic 109	com/alipay/mobile/common/transport/spdy/HttpResponseCache:a	(Ljava/net/URLConnection;)Lcom/alipay/mobile/common/transport/spdy/internal/http/HttpEngine;
    //   45: astore 5
    //   47: aload 5
    //   49: ifnull -42 -> 7
    //   52: aload 5
    //   54: invokevirtual 119	com/alipay/mobile/common/transport/spdy/internal/http/HttpEngine:getResponseHeaders	()Lcom/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders;
    //   57: astore 6
    //   59: aload 6
    //   61: invokevirtual 260	com/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders:hasVaryAll	()Z
    //   64: ifne -57 -> 7
    //   67: new 121	com/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry
    //   70: dup
    //   71: aload_1
    //   72: aload 5
    //   74: invokevirtual 125	com/alipay/mobile/common/transport/spdy/internal/http/HttpEngine:getRequestHeaders	()Lcom/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders;
    //   77: invokevirtual 131	com/alipay/mobile/common/transport/spdy/internal/http/RequestHeaders:getHeaders	()Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    //   80: aload 6
    //   82: invokevirtual 137	com/alipay/mobile/common/transport/spdy/internal/http/ResponseHeaders:getVaryFields	()Ljava/util/Set;
    //   85: invokevirtual 143	com/alipay/mobile/common/transport/spdy/internal/http/RawHeaders:getAll	(Ljava/util/Set;)Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;
    //   88: aload_3
    //   89: invokespecial 146	com/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry:<init>	(Ljava/net/URI;Lcom/alipay/mobile/common/transport/spdy/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V
    //   92: astore 7
    //   94: aload_0
    //   95: getfield 35	com/alipay/mobile/common/transport/spdy/HttpResponseCache:a	Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache;
    //   98: aload_1
    //   99: invokevirtual 91	java/net/URI:toString	()Ljava/lang/String;
    //   102: invokestatic 97	com/alipay/mobile/common/transport/spdy/internal/Util:hash	(Ljava/lang/String;)Ljava/lang/String;
    //   105: invokevirtual 263	com/alipay/mobile/common/transport/spdy/internal/DiskLruCache:edit	(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;
    //   108: astore 10
    //   110: aload 10
    //   112: ifnull -105 -> 7
    //   115: aload 7
    //   117: aload 10
    //   119: invokevirtual 161	com/alipay/mobile/common/transport/spdy/HttpResponseCache$Entry:writeTo	(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V
    //   122: new 265	com/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl
    //   125: dup
    //   126: aload_0
    //   127: aload 10
    //   129: invokespecial 268	com/alipay/mobile/common/transport/spdy/HttpResponseCache$CacheRequestImpl:<init>	(Lcom/alipay/mobile/common/transport/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V
    //   132: astore 12
    //   134: aload 12
    //   136: areturn
    //   137: astore 8
    //   139: aconst_null
    //   140: astore 9
    //   142: aload 9
    //   144: invokestatic 172	com/alipay/mobile/common/transport/spdy/HttpResponseCache:a	(Lcom/alipay/mobile/common/transport/spdy/internal/DiskLruCache$Editor;)V
    //   147: aconst_null
    //   148: areturn
    //   149: astore 11
    //   151: aload 10
    //   153: astore 9
    //   155: goto -13 -> 142
    //
    // Exception table:
    //   from	to	target	type
    //   94	110	137	java/io/IOException
    //   115	134	149	java/io/IOException
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.HttpResponseCache
 * JD-Core Version:    0.6.2
 */