package com.alipay.mobile.common.share;

public class ShareException extends RuntimeException
{
  private static final long serialVersionUID = 475022994858770424L;
  private int statusCode = -1;

  public ShareException()
  {
  }

  public ShareException(int paramInt)
  {
    this.statusCode = paramInt;
  }

  public ShareException(Exception paramException)
  {
    super(paramException);
  }

  public ShareException(String paramString)
  {
    super(paramString);
  }

  public ShareException(String paramString, int paramInt)
  {
    super(paramString);
    this.statusCode = paramInt;
  }

  public ShareException(String paramString, Exception paramException)
  {
    super(paramString, paramException);
  }

  public ShareException(String paramString, Exception paramException, int paramInt)
  {
    super(paramString, paramException);
    this.statusCode = paramInt;
  }

  public ShareException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
  }

  public ShareException(Throwable paramThrowable)
  {
    super(paramThrowable);
  }

  public int getStatusCode()
  {
    return this.statusCode;
  }

  public void setStatusCode(int paramInt)
  {
    this.statusCode = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.share.ShareException
 * JD-Core Version:    0.6.2
 */