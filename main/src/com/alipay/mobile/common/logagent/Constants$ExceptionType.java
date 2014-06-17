package com.alipay.mobile.common.logagent;

public enum Constants$ExceptionType
{
  private String a;

  static
  {
    ExceptionType[] arrayOfExceptionType = new ExceptionType[2];
    arrayOfExceptionType[0] = TYPE_CONNECTERR;
    arrayOfExceptionType[1] = TYPE_EXCEPTION;
  }

  private Constants$ExceptionType(String arg3)
  {
    Object localObject;
    this.a = localObject;
  }

  public final String getType()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.Constants.ExceptionType
 * JD-Core Version:    0.6.2
 */