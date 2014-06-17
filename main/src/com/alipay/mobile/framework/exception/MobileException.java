package com.alipay.mobile.framework.exception;

public abstract class MobileException extends RuntimeException
{
  private int a;
  private String b;

  public MobileException(Integer paramInteger, String paramString)
  {
    super(format(paramInteger, paramString));
    this.a = paramInteger.intValue();
    this.b = paramString;
  }

  public MobileException(Integer paramInteger, Throwable paramThrowable)
  {
    super(paramThrowable);
    this.a = paramInteger.intValue();
  }

  public MobileException(String paramString)
  {
    super(paramString);
    this.a = 0;
    this.b = paramString;
  }

  protected static String format(Integer paramInteger, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("MobileException: ");
    if (paramInteger != null)
      localStringBuilder.append("[").append(paramInteger).append("]");
    localStringBuilder.append(" : ");
    if (paramString != null)
      localStringBuilder.append(paramString);
    return localStringBuilder.toString();
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
 * Qualified Name:     com.alipay.mobile.framework.exception.MobileException
 * JD-Core Version:    0.6.2
 */