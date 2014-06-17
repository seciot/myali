package com.alipay.mobile.framework.exception;

public class IllegalParameterException extends MobileException
{
  private int a;
  private String b;

  public IllegalParameterException(Integer paramInteger, String paramString)
  {
    super(format(paramInteger, paramString));
    this.a = paramInteger.intValue();
    this.b = paramString;
  }

  public IllegalParameterException(String paramString)
  {
    super(paramString);
    this.a = 0;
    this.b = paramString;
  }

  public String toString()
  {
    return "IllegalParameterException [mCode=" + this.a + ", mMsg=" + this.b + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.exception.IllegalParameterException
 * JD-Core Version:    0.6.2
 */