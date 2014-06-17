package com.alipay.mobile.common.transport.spdy.internal.http;

import com.alipay.mobile.common.transport.spdy.ResponseSource;
import com.alipay.mobile.common.transport.spdy.internal.Platform;
import com.alipay.mobile.common.transport.spdy.internal.Util;
import java.net.URI;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.TimeUnit;

public final class ResponseHeaders
{
  static final String RESPONSE_SOURCE = Platform.get().getPrefix() + "-Response-Source";
  static final String SELECTED_TRANSPORT = Platform.get().getPrefix() + "-Selected-Transport";
  private static final String a = Platform.get().getPrefix() + "-Sent-Millis";
  private static final String b = Platform.get().getPrefix() + "-Received-Millis";
  private final URI c;
  private final RawHeaders d;
  private Date e;
  private Date f;
  private Date g;
  private long h;
  private long i;
  private boolean j;
  private boolean k;
  private int l = -1;
  private int m = -1;
  private boolean n;
  private boolean o;
  private String p;
  private int q = -1;
  private Set r = Collections.emptySet();
  private String s;
  private String t;
  private int u = -1;
  private String v;

  public ResponseHeaders(URI paramURI, RawHeaders paramRawHeaders)
  {
    this.c = paramURI;
    this.d = paramRawHeaders;
    ResponseHeaders.1 local1 = new ResponseHeaders.1(this);
    int i1 = 0;
    if (i1 < paramRawHeaders.length())
    {
      String str1 = paramRawHeaders.getFieldName(i1);
      String str2 = paramRawHeaders.getValue(i1);
      if ("Cache-Control".equalsIgnoreCase(str1))
        HeaderParser.parseCacheControl(str2, local1);
      while (true)
      {
        i1++;
        break;
        if ("Date".equalsIgnoreCase(str1))
        {
          this.e = HttpDate.parse(str2);
        }
        else if ("Expires".equalsIgnoreCase(str1))
        {
          this.g = HttpDate.parse(str2);
        }
        else if ("Last-Modified".equalsIgnoreCase(str1))
        {
          this.f = HttpDate.parse(str2);
        }
        else if ("ETag".equalsIgnoreCase(str1))
        {
          this.p = str2;
        }
        else if ("Pragma".equalsIgnoreCase(str1))
        {
          if ("no-cache".equalsIgnoreCase(str2))
            this.j = true;
        }
        else if ("Age".equalsIgnoreCase(str1))
        {
          this.q = HeaderParser.parseSeconds(str2);
        }
        else if ("Vary".equalsIgnoreCase(str1))
        {
          if (this.r.isEmpty())
            this.r = new TreeSet(String.CASE_INSENSITIVE_ORDER);
          for (String str3 : str2.split(","))
            this.r.add(str3.trim());
        }
        else if ("Content-Encoding".equalsIgnoreCase(str1))
        {
          this.s = str2;
        }
        else if ("Transfer-Encoding".equalsIgnoreCase(str1))
        {
          this.t = str2;
        }
        else if ("Content-Length".equalsIgnoreCase(str1))
        {
          try
          {
            this.u = Integer.parseInt(str2);
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
        }
        else if ("Connection".equalsIgnoreCase(str1))
        {
          this.v = str2;
        }
        else if (a.equalsIgnoreCase(str1))
        {
          this.h = Long.parseLong(str2);
        }
        else if (b.equalsIgnoreCase(str1))
        {
          this.i = Long.parseLong(str2);
        }
      }
    }
  }

  private static boolean a(String paramString)
  {
    return (!"Connection".equalsIgnoreCase(paramString)) && (!"Keep-Alive".equalsIgnoreCase(paramString)) && (!"Proxy-Authenticate".equalsIgnoreCase(paramString)) && (!"Proxy-Authorization".equalsIgnoreCase(paramString)) && (!"TE".equalsIgnoreCase(paramString)) && (!"Trailers".equalsIgnoreCase(paramString)) && (!"Transfer-Encoding".equalsIgnoreCase(paramString)) && (!"Upgrade".equalsIgnoreCase(paramString));
  }

  public final ResponseSource chooseResponseSource(long paramLong, RequestHeaders paramRequestHeaders)
  {
    long l1 = 0L;
    if (!isCacheable(paramRequestHeaders))
      return ResponseSource.NETWORK;
    if ((paramRequestHeaders.isNoCache()) || (paramRequestHeaders.hasConditions()))
      return ResponseSource.NETWORK;
    long l2;
    long l4;
    long l5;
    if (this.e != null)
    {
      l2 = Math.max(l1, this.i - this.e.getTime());
      if (this.q != -1)
        l2 = Math.max(l2, TimeUnit.SECONDS.toMillis(this.q));
      long l3 = this.i - this.h;
      l4 = paramLong - this.i + (l2 + l3);
      if (this.l == -1)
        break label307;
      l5 = TimeUnit.SECONDS.toMillis(this.l);
      label131: if (paramRequestHeaders.getMaxAgeSeconds() != -1)
        l5 = Math.min(l5, TimeUnit.SECONDS.toMillis(paramRequestHeaders.getMaxAgeSeconds()));
      if (paramRequestHeaders.getMinFreshSeconds() == -1)
        break label522;
    }
    label522: for (long l6 = TimeUnit.SECONDS.toMillis(paramRequestHeaders.getMinFreshSeconds()); ; l6 = l1)
    {
      if ((!this.o) && (paramRequestHeaders.getMaxStaleSeconds() != -1))
        l1 = TimeUnit.SECONDS.toMillis(paramRequestHeaders.getMaxStaleSeconds());
      if ((!this.j) && (l4 + l6 < l1 + l5))
      {
        if (l4 + l6 >= l5)
          this.d.add("Warning", "110 HttpURLConnection \"Response is stale\"");
        if (l4 > 86400000L)
          if ((this.l != -1) || (this.g != null))
            break label453;
        label307: label439: label453: for (int i1 = 1; ; i1 = 0)
        {
          if (i1 != 0)
            this.d.add("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
          return ResponseSource.CACHE;
          l2 = l1;
          break;
          if (this.g != null)
          {
            if (this.e != null);
            for (long l9 = this.e.getTime(); ; l9 = this.i)
            {
              l5 = this.g.getTime() - l9;
              if (l5 > l1)
                break;
              l5 = l1;
              break;
            }
          }
          if ((this.f != null) && (this.c.getRawQuery() == null))
          {
            if (this.e != null);
            for (long l7 = this.e.getTime(); ; l7 = this.h)
            {
              long l8 = l7 - this.f.getTime();
              if (l8 <= l1)
                break label439;
              l5 = l8 / 10L;
              break;
            }
            l5 = l1;
            break label131;
          }
          l5 = l1;
          break label131;
        }
      }
      if (this.f != null)
        paramRequestHeaders.setIfModifiedSince(this.f);
      while (true)
      {
        if (this.p != null)
          paramRequestHeaders.setIfNoneMatch(this.p);
        if (!paramRequestHeaders.hasConditions())
          break;
        return ResponseSource.CONDITIONAL_CACHE;
        if (this.e != null)
          paramRequestHeaders.setIfModifiedSince(this.e);
      }
      return ResponseSource.NETWORK;
    }
  }

  public final ResponseHeaders combine(ResponseHeaders paramResponseHeaders)
  {
    RawHeaders localRawHeaders = new RawHeaders();
    localRawHeaders.setStatusLine(this.d.getStatusLine());
    int i3;
    for (int i1 = 0; ; i1++)
    {
      int i2 = this.d.length();
      i3 = 0;
      if (i1 >= i2)
        break;
      String str2 = this.d.getFieldName(i1);
      String str3 = this.d.getValue(i1);
      if (((!"Warning".equals(str2)) || (!str3.startsWith("1"))) && ((!a(str2)) || (paramResponseHeaders.d.get(str2) == null)))
        localRawHeaders.add(str2, str3);
    }
    while (i3 < paramResponseHeaders.d.length())
    {
      String str1 = paramResponseHeaders.d.getFieldName(i3);
      if (a(str1))
        localRawHeaders.add(str1, paramResponseHeaders.d.getValue(i3));
      i3++;
    }
    return new ResponseHeaders(this.c, localRawHeaders);
  }

  public final String getConnection()
  {
    return this.v;
  }

  public final String getContentEncoding()
  {
    return this.s;
  }

  public final int getContentLength()
  {
    return this.u;
  }

  public final String getEtag()
  {
    return this.p;
  }

  public final Date getExpires()
  {
    return this.g;
  }

  public final RawHeaders getHeaders()
  {
    return this.d;
  }

  public final Date getLastModified()
  {
    return this.f;
  }

  public final int getMaxAgeSeconds()
  {
    return this.l;
  }

  public final int getSMaxAgeSeconds()
  {
    return this.m;
  }

  public final Date getServedDate()
  {
    return this.e;
  }

  public final URI getUri()
  {
    return this.c;
  }

  public final Set getVaryFields()
  {
    return this.r;
  }

  public final boolean hasConnectionClose()
  {
    return "close".equalsIgnoreCase(this.v);
  }

  public final boolean hasVaryAll()
  {
    return this.r.contains("*");
  }

  public final boolean isCacheable(RequestHeaders paramRequestHeaders)
  {
    int i1 = this.d.getResponseCode();
    if ((i1 != 200) && (i1 != 203) && (i1 != 300) && (i1 != 301) && (i1 != 410));
    while (((paramRequestHeaders.hasAuthorization()) && (!this.n) && (!this.o) && (this.m == -1)) || (this.k))
      return false;
    return true;
  }

  public final boolean isChunked()
  {
    return "chunked".equalsIgnoreCase(this.t);
  }

  public final boolean isContentEncodingGzip()
  {
    return "gzip".equalsIgnoreCase(this.s);
  }

  public final boolean isMustRevalidate()
  {
    return this.o;
  }

  public final boolean isNoCache()
  {
    return this.j;
  }

  public final boolean isNoStore()
  {
    return this.k;
  }

  public final boolean isPublic()
  {
    return this.n;
  }

  public final void setLocalTimestamps(long paramLong1, long paramLong2)
  {
    this.h = paramLong1;
    this.d.add(a, Long.toString(paramLong1));
    this.i = paramLong2;
    this.d.add(b, Long.toString(paramLong2));
  }

  public final void setResponseSource(ResponseSource paramResponseSource)
  {
    this.d.set(RESPONSE_SOURCE, paramResponseSource.toString() + " " + this.d.getResponseCode());
  }

  public final void setTransport(String paramString)
  {
    this.d.set(SELECTED_TRANSPORT, paramString);
  }

  public final void stripContentEncoding()
  {
    this.s = null;
    this.d.removeAll("Content-Encoding");
  }

  public final void stripContentLength()
  {
    this.u = -1;
    this.d.removeAll("Content-Length");
  }

  public final boolean validate(ResponseHeaders paramResponseHeaders)
  {
    if (paramResponseHeaders.d.getResponseCode() == 304);
    while ((this.f != null) && (paramResponseHeaders.f != null) && (paramResponseHeaders.f.getTime() < this.f.getTime()))
      return true;
    return false;
  }

  public final boolean varyMatches(Map paramMap1, Map paramMap2)
  {
    Iterator localIterator = this.r.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!Util.equal(paramMap1.get(str), paramMap2.get(str)))
        return false;
    }
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.ResponseHeaders
 * JD-Core Version:    0.6.2
 */