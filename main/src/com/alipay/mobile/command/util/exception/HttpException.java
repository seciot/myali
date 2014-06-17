package com.alipay.mobile.command.util.exception;

public class HttpException extends Exception
{
  private static final long serialVersionUID = -3616134725950915892L;
  private int code;
  private String msg;

  public HttpException(Integer paramInteger)
  {
    super(a(paramInteger, "error"));
    this.code = paramInteger.intValue();
    this.msg = "error";
  }

  public HttpException(Integer paramInteger, String paramString)
  {
    super(a(paramInteger, paramString));
    this.code = paramInteger.intValue();
    this.msg = paramString;
  }

  public HttpException(String paramString)
  {
    super(paramString);
    this.code = 0;
    this.msg = paramString;
  }

  private static String a(Integer paramInteger, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Http Transport error");
    if (paramInteger != null)
      localStringBuilder.append("[").append(paramInteger).append("]");
    localStringBuilder.append(" : ");
    if (paramString != null)
      localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }

  public int getCode()
  {
    return this.code;
  }

  public String getMsg()
  {
    return this.msg;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.util.exception.HttpException
 * JD-Core Version:    0.6.2
 */