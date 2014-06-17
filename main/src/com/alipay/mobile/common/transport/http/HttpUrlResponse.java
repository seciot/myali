package com.alipay.mobile.common.transport.http;

import com.alipay.mobile.common.transport.Response;

public class HttpUrlResponse extends Response
{
  private int a;
  private String b;
  private long c;
  private long d;
  private String e;
  private HttpUrlHeader f;

  public HttpUrlResponse(HttpUrlHeader paramHttpUrlHeader, int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    this.f = paramHttpUrlHeader;
    this.a = paramInt;
    this.b = paramString;
    this.mResData = paramArrayOfByte;
  }

  public String getCharset()
  {
    return this.e;
  }

  public int getCode()
  {
    return this.a;
  }

  public long getCreateTime()
  {
    return this.c;
  }

  public HttpUrlHeader getHeader()
  {
    return this.f;
  }

  public String getMsg()
  {
    return this.b;
  }

  public long getPeriod()
  {
    return this.d;
  }

  public void setCharset(String paramString)
  {
    this.e = paramString;
  }

  public void setCreateTime(long paramLong)
  {
    this.c = paramLong;
  }

  public void setHeader(HttpUrlHeader paramHttpUrlHeader)
  {
    this.f = paramHttpUrlHeader;
  }

  public void setPeriod(long paramLong)
  {
    this.d = paramLong;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.HttpUrlResponse
 * JD-Core Version:    0.6.2
 */