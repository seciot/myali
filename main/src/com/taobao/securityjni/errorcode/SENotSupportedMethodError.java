package com.taobao.securityjni.errorcode;

public class SENotSupportedMethodError extends Error
{
  private static final long serialVersionUID = -5365630128856068168L;

  public SENotSupportedMethodError()
  {
    super("NotSupportedThisMethod");
  }

  public SENotSupportedMethodError(String paramString)
  {
    super(paramString);
  }

  public SENotSupportedMethodError(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public SENotSupportedMethodError(Throwable paramThrowable)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.errorcode.SENotSupportedMethodError
 * JD-Core Version:    0.6.2
 */