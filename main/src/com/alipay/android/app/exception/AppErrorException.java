package com.alipay.android.app.exception;

import android.text.TextUtils;

public final class AppErrorException extends Exception
{
  public AppErrorException(Class paramClass)
  {
    this(paramClass, null, (byte)0);
  }

  public AppErrorException(Class paramClass, String paramString)
  {
    this(paramClass, paramString, (byte)0);
  }

  private AppErrorException(Class paramClass, String paramString, byte paramByte)
  {
    super(paramString, null);
    a(paramClass, paramString, null);
  }

  public static void a(Class paramClass, String paramString, Throwable paramThrowable)
  {
    if (paramClass != null)
      new StringBuilder("AppError--").append(paramClass.getCanonicalName()).toString();
    if (!TextUtils.isEmpty(paramString))
      new StringBuilder("AppError--").append(paramString).toString();
    if (paramThrowable != null);
    try
    {
      new StringBuilder("AppError--").append(paramThrowable.getMessage()).toString();
      paramThrowable.printStackTrace();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.exception.AppErrorException
 * JD-Core Version:    0.6.2
 */