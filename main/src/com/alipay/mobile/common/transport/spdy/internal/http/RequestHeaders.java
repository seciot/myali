package com.alipay.mobile.common.transport.spdy.internal.http;

import java.net.URI;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class RequestHeaders
{
  private final URI a;
  private final RawHeaders b;
  private boolean c;
  private int d = -1;
  private int e = -1;
  private int f = -1;
  private boolean g;
  private boolean h;
  private long i = -1L;
  private String j;
  private String k;
  private String l;
  private String m;
  private String n;
  private String o;
  private String p;
  private String q;
  private String r;

  public RequestHeaders(URI paramURI, RawHeaders paramRawHeaders)
  {
    this.a = paramURI;
    this.b = paramRawHeaders;
    RequestHeaders.1 local1 = new RequestHeaders.1(this);
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
        if ("Pragma".equalsIgnoreCase(str1))
        {
          if ("no-cache".equalsIgnoreCase(str2))
            this.c = true;
        }
        else if ("If-None-Match".equalsIgnoreCase(str1))
        {
          this.q = str2;
        }
        else if ("If-Modified-Since".equalsIgnoreCase(str1))
        {
          this.p = str2;
        }
        else if ("Authorization".equalsIgnoreCase(str1))
        {
          this.h = true;
        }
        else if ("Content-Length".equalsIgnoreCase(str1))
        {
          try
          {
            this.i = Integer.parseInt(str2);
          }
          catch (NumberFormatException localNumberFormatException)
          {
          }
        }
        else if ("Transfer-Encoding".equalsIgnoreCase(str1))
        {
          this.j = str2;
        }
        else if ("User-Agent".equalsIgnoreCase(str1))
        {
          new StringBuilder("初始httpEngine,设置UA：").append(str1).toString();
          this.k = str2;
        }
        else if ("Host".equalsIgnoreCase(str1))
        {
          this.l = str2;
        }
        else if ("Connection".equalsIgnoreCase(str1))
        {
          this.m = str2;
        }
        else if ("Accept-Encoding".equalsIgnoreCase(str1))
        {
          this.n = str2;
        }
        else if ("Content-Type".equalsIgnoreCase(str1))
        {
          this.o = str2;
        }
        else if ("Proxy-Authorization".equalsIgnoreCase(str1))
        {
          this.r = str2;
        }
      }
    }
  }

  public final void addCookies(Map paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str1 = (String)localEntry.getKey();
      if ((("Cookie".equalsIgnoreCase(str1)) || ("Cookie2".equalsIgnoreCase(str1))) && (!((List)localEntry.getValue()).isEmpty()))
      {
        RawHeaders localRawHeaders = this.b;
        List localList = (List)localEntry.getValue();
        if (localList.size() == 1);
        StringBuilder localStringBuilder;
        for (String str2 = (String)localList.get(0); ; str2 = localStringBuilder.toString())
        {
          localRawHeaders.add(str1, str2);
          break;
          localStringBuilder = new StringBuilder();
          for (int i1 = 0; i1 < localList.size(); i1++)
          {
            if (i1 > 0)
              localStringBuilder.append("; ");
            localStringBuilder.append((String)localList.get(i1));
          }
        }
      }
    }
  }

  public final String getAcceptEncoding()
  {
    return this.n;
  }

  public final String getConnection()
  {
    return this.m;
  }

  public final long getContentLength()
  {
    return this.i;
  }

  public final String getContentType()
  {
    return this.o;
  }

  public final RawHeaders getHeaders()
  {
    return this.b;
  }

  public final String getHost()
  {
    return this.l;
  }

  public final String getIfModifiedSince()
  {
    return this.p;
  }

  public final String getIfNoneMatch()
  {
    return this.q;
  }

  public final int getMaxAgeSeconds()
  {
    return this.d;
  }

  public final int getMaxStaleSeconds()
  {
    return this.e;
  }

  public final int getMinFreshSeconds()
  {
    return this.f;
  }

  public final String getProxyAuthorization()
  {
    return this.r;
  }

  public final String getTransferEncoding()
  {
    return this.j;
  }

  public final URI getUri()
  {
    return this.a;
  }

  public final String getUserAgent()
  {
    return this.k;
  }

  public final boolean hasAuthorization()
  {
    return this.h;
  }

  public final boolean hasConditions()
  {
    return (this.p != null) || (this.q != null);
  }

  public final boolean hasConnectionClose()
  {
    return "close".equalsIgnoreCase(this.m);
  }

  public final boolean isChunked()
  {
    return "chunked".equalsIgnoreCase(this.j);
  }

  public final boolean isNoCache()
  {
    return this.c;
  }

  public final boolean isOnlyIfCached()
  {
    return this.g;
  }

  public final void removeContentLength()
  {
    if (this.i != -1L)
    {
      this.b.removeAll("Content-Length");
      this.i = -1L;
    }
  }

  public final void setAcceptEncoding(String paramString)
  {
    if (this.n != null)
      this.b.removeAll("Accept-Encoding");
    this.b.add("Accept-Encoding", paramString);
    this.n = paramString;
  }

  public final void setChunked()
  {
    if (this.j != null)
      this.b.removeAll("Transfer-Encoding");
    this.b.add("Transfer-Encoding", "chunked");
    this.j = "chunked";
  }

  public final void setConnection(String paramString)
  {
    if (this.m != null)
      this.b.removeAll("Connection");
    this.b.add("Connection", paramString);
    this.m = paramString;
  }

  public final void setContentLength(long paramLong)
  {
    if (this.i != -1L)
      this.b.removeAll("Content-Length");
    this.b.add("Content-Length", Long.toString(paramLong));
    this.i = paramLong;
  }

  public final void setContentType(String paramString)
  {
    if (this.o != null)
      this.b.removeAll("Content-Type");
    this.b.add("Content-Type", paramString);
    this.o = paramString;
  }

  public final void setHost(String paramString)
  {
    if (this.l != null)
      this.b.removeAll("Host");
    this.b.add("Host", paramString);
    this.l = paramString;
  }

  public final void setIfModifiedSince(Date paramDate)
  {
    if (this.p != null)
      this.b.removeAll("If-Modified-Since");
    String str = HttpDate.format(paramDate);
    this.b.add("If-Modified-Since", str);
    this.p = str;
  }

  public final void setIfNoneMatch(String paramString)
  {
    if (this.q != null)
      this.b.removeAll("If-None-Match");
    this.b.add("If-None-Match", paramString);
    this.q = paramString;
  }

  public final void setUserAgent(String paramString)
  {
    if (this.k != null)
      this.b.removeAll("User-Agent");
    this.b.add("User-Agent", paramString);
    this.k = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.internal.http.RequestHeaders
 * JD-Core Version:    0.6.2
 */