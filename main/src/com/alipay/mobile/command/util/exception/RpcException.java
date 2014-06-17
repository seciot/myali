package com.alipay.mobile.command.util.exception;

public class RpcException extends RuntimeException
{
  private static final long serialVersionUID = -2875437994101380406L;
  private int mCode;
  private String mMsg;
  private String mOperationType;

  public RpcException(Integer paramInteger, String paramString)
  {
    super(localStringBuilder.toString());
    this.mCode = paramInteger.intValue();
    this.mMsg = paramString;
  }

  public RpcException(Integer paramInteger, Throwable paramThrowable)
  {
    super(paramThrowable);
    this.mCode = paramInteger.intValue();
  }

  public RpcException(String paramString)
  {
    super(paramString);
    this.mCode = 0;
    this.mMsg = paramString;
  }

  public int getCode()
  {
    return this.mCode;
  }

  public String getMsg()
  {
    return this.mMsg;
  }

  public String getOperationType()
  {
    return this.mOperationType;
  }

  public void setOperationType(String paramString)
  {
    this.mOperationType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.util.exception.RpcException
 * JD-Core Version:    0.6.2
 */