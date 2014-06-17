package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.http.RawHeaders;
import java.util.List;
import java.util.Set;

final class Response
{
  private final Request a;
  private final int b;
  private final RawHeaders c;
  private final Response.Body d;
  private final Response e;

  private Response(Response.Builder paramBuilder)
  {
    this.a = Response.Builder.access$000(paramBuilder);
    this.b = Response.Builder.access$100(paramBuilder);
    this.c = new RawHeaders(Response.Builder.access$200(paramBuilder));
    this.d = Response.Builder.access$300(paramBuilder);
    this.e = Response.Builder.access$400(paramBuilder);
  }

  public final Response.Body body()
  {
    return this.d;
  }

  public final int code()
  {
    return this.b;
  }

  public final String header(String paramString)
  {
    return header(paramString, null);
  }

  public final String header(String paramString1, String paramString2)
  {
    String str = this.c.get(paramString1);
    if (str != null)
      paramString2 = str;
    return paramString2;
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

  public final Response redirectedBy()
  {
    return this.e;
  }

  public final Request request()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Response
 * JD-Core Version:    0.6.2
 */