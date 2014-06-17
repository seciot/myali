package com.alipay.mobile.common.transport.http;

public class HttpException extends Exception
{
  public static final int NETWORK_CONNECTION_EXCEPTION = 3;
  public static final int NETWORK_IO_EXCEPTION = 6;
  public static final int NETWORK_SCHEDULE_ERROR = 7;
  public static final int NETWORK_SERVER_EXCEPTION = 5;
  public static final int NETWORK_SOCKET_EXCEPTION = 4;
  public static final int NETWORK_SSL_EXCEPTION = 2;
  public static final int NETWORK_UNAVAILABLE = 1;
  public static final int NETWORK_UNKNOWN_ERROR;
  private int a;
  private String b;

  public HttpException(Integer paramInteger, String paramString)
  {
    super(localStringBuilder.toString());
    this.a = paramInteger.intValue();
    this.b = paramString;
  }

  public HttpException(String paramString)
  {
    super(paramString);
    this.a = 0;
    this.b = paramString;
  }

  public int getCode()
  {
    return this.a;
  }

  public String getMsg()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.http.HttpException
 * JD-Core Version:    0.6.2
 */