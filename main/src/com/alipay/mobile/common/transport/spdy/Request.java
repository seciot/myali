package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.http.RawHeaders;
import java.net.URL;
import java.util.List;
import java.util.Set;

final class Request
{
  private final URL a;
  private final String b;
  private final RawHeaders c;
  private final Request.Body d;
  private final Object e;

  private Request(Request.Builder paramBuilder)
  {
    this.a = Request.Builder.access$000(paramBuilder);
    this.b = Request.Builder.access$100(paramBuilder);
    this.c = new RawHeaders(Request.Builder.access$200(paramBuilder));
    this.d = Request.Builder.access$300(paramBuilder);
    if (Request.Builder.access$400(paramBuilder) != null);
    for (Object localObject = Request.Builder.access$400(paramBuilder); ; localObject = this)
    {
      this.e = localObject;
      return;
    }
  }

  public final Request.Body body()
  {
    return this.d;
  }

  public final String header(String paramString)
  {
    return this.c.get(paramString);
  }

  public final int headerCount()
  {
    return this.c.length();
  }

  public final String headerName(int paramInt)
  {
    return this.c.getFieldName(paramInt);
  }

  public final Set headerNames()
  {
    return this.c.names();
  }

  public final String headerValue(int paramInt)
  {
    return this.c.getValue(paramInt);
  }

  public final List headers(String paramString)
  {
    return this.c.values(paramString);
  }

  public final String method()
  {
    return this.b;
  }

  public final Object tag()
  {
    return this.e;
  }

  public final URL url()
  {
    return this.a;
  }

  public final String urlString()
  {
    return this.a.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Request
 * JD-Core Version:    0.6.2
 */