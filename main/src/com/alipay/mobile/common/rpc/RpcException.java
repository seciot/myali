package com.alipay.mobile.common.rpc;

public class RpcException extends RuntimeException
{
  private String a;
  private int b;
  private String c;

  public RpcException(Integer paramInteger, String paramString)
  {
    super(format(paramInteger, paramString));
    this.b = paramInteger.intValue();
    this.c = paramString;
  }

  public RpcException(Integer paramInteger, Throwable paramThrowable)
  {
    super(paramThrowable);
    this.b = paramInteger.intValue();
  }

  public RpcException(String paramString)
  {
    super(paramString);
    this.b = 0;
    this.c = paramString;
  }

  protected static String format(Integer paramInteger, String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("RPCException: ");
    if (paramInteger != null)
      localStringBuilder.append("[").append(paramInteger).append("]");
    localStringBuilder.append(" : ");
    if (paramString != null)
      localStringBuilder.append(paramString);
    return localStringBuilder.toString();
  }

  public int getCode()
  {
    return this.b;
  }

  public String getMsg()
  {
    return this.c;
  }

  public String getOperationType()
  {
    return this.a;
  }

  public void setOperationType(String paramString)
  {
    this.a = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.RpcException
 * JD-Core Version:    0.6.2
 */