package com.alipay.android.app.exception;

import android.text.TextUtils;

public final class NetErrorException extends Exception
{
  private int a = 0;

  public NetErrorException()
  {
    this(null, null);
  }

  public NetErrorException(String paramString)
  {
    this(paramString, null);
  }

  public NetErrorException(String paramString, Throwable paramThrowable)
  {
    super(paramString, paramThrowable);
    if (!TextUtils.isEmpty(paramString))
      new StringBuilder("NetError--").append(paramString).toString();
    if (paramThrowable != null);
    try
    {
      new StringBuilder("NetError--").append(paramThrowable.getMessage()).toString();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public NetErrorException(Throwable paramThrowable)
  {
    this(null, paramThrowable);
  }

  public final void a(int paramInt)
  {
    this.a = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.exception.NetErrorException
 * JD-Core Version:    0.6.2
 */