package com.alipay.mobile.framework.service.ext.openplatform.service;

public class AuthorizeException extends Exception
{
  public static final int USER_NOT_LOGIN = 1;
  public static final int USER_NOT_MATCH = 0;
  private static final long serialVersionUID = 123344555L;
  private int code;
  private String msg;

  public AuthorizeException(int paramInt, String paramString)
  {
    setCode(paramInt);
    setMsg(paramString);
  }

  public int getCode()
  {
    return this.code;
  }

  public String getMsg()
  {
    return this.msg;
  }

  public void setCode(int paramInt)
  {
    this.code = paramInt;
  }

  public void setMsg(String paramString)
  {
    this.msg = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.service.AuthorizeException
 * JD-Core Version:    0.6.2
 */