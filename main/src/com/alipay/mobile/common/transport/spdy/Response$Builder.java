package com.alipay.mobile.common.transport.spdy;

import com.alipay.mobile.common.transport.spdy.internal.http.RawHeaders;

public class Response$Builder
{
  private final Request a;
  private final int b;
  private final RawHeaders c = new RawHeaders();
  private Response.Body d;
  private Response e;

  public Response$Builder(Request paramRequest, int paramInt)
  {
    if (paramRequest == null)
      throw new IllegalArgumentException("request == null");
    if (paramInt <= 0)
      throw new IllegalArgumentException("code <= 0");
    this.a = paramRequest;
    this.b = paramInt;
  }

  public Builder addHeader(String paramString1, String paramString2)
  {
    this.c.add(paramString1, paramString2);
    return this;
  }

  public Builder body(Response.Body paramBody)
  {
    this.d = paramBody;
    return this;
  }

  public Response build()
  {
    if (this.a == null)
      throw new IllegalStateException("Response has no request.");
    if (this.b == -1)
      throw new IllegalStateException("Response has no code.");
    return new Response(this, null);
  }

  public Builder header(String paramString1, String paramString2)
  {
    this.c.set(paramString1, paramString2);
    return this;
  }

  public Builder redirectedBy(Response paramResponse)
  {
    this.e = paramResponse;
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Response.Builder
 * JD-Core Version:    0.6.2
 */