package com.alipay.mobile.command.model;

public class HttpUrlResponse extends Response
{
  private int c;
  private String d;
  private long e;
  private long f;
  private String g;
  private HttpUrlHeader h;

  public HttpUrlResponse(HttpUrlHeader paramHttpUrlHeader, int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    this.h = paramHttpUrlHeader;
    this.c = paramInt;
    this.d = paramString;
    this.a = paramArrayOfByte;
  }

  public String getCharset()
  {
    return this.g;
  }

  public int getCode()
  {
    return this.c;
  }

  public long getCreateTime()
  {
    return this.e;
  }

  public HttpUrlHeader getHeader()
  {
    return this.h;
  }

  public String getMsg()
  {
    return this.d;
  }

  public long getPeriod()
  {
    return this.f;
  }

  public RpcTypeEnum rpcTypeEnum()
  {
    return RpcTypeEnum.HTTP;
  }

  public void setCharset(String paramString)
  {
    this.g = paramString;
  }

  public void setCreateTime(long paramLong)
  {
    this.e = paramLong;
  }

  public void setHeader(HttpUrlHeader paramHttpUrlHeader)
  {
    this.h = paramHttpUrlHeader;
  }

  public void setPeriod(long paramLong)
  {
    this.f = paramLong;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.HttpUrlResponse
 * JD-Core Version:    0.6.2
 */