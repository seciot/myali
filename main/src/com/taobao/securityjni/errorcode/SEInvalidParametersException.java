package com.taobao.securityjni.errorcode;

public class SEInvalidParametersException extends RuntimeException
{
  private static final long serialVersionUID = -5365630128856068164L;

  public SEInvalidParametersException()
  {
  }

  public SEInvalidParametersException(String paramString)
  {
    super(paramString);
  }

  public SEInvalidParametersException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public SEInvalidParametersException(Throwable paramThrowable)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.errorcode.SEInvalidParametersException
 * JD-Core Version:    0.6.2
 */