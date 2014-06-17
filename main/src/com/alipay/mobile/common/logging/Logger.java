package com.alipay.mobile.common.logging;

public class Logger
{
  private String a;

  protected Logger(String paramString)
  {
    this.a = paramString;
  }

  private static String a()
  {
    return "[" + Thread.currentThread().getId() + "]";
  }

  public void d(String paramString)
  {
    debug(paramString);
  }

  public void debug(String paramString)
  {
    new StringBuilder().append(a()).append(paramString).toString();
  }

  public void e(Object paramObject, Throwable paramThrowable)
  {
    error(paramObject, paramThrowable);
  }

  public void e(String paramString)
  {
    error(paramString);
  }

  public void error(Object paramObject)
  {
    new StringBuilder().append(a()).append(paramObject).toString();
  }

  public void error(Object paramObject, Throwable paramThrowable)
  {
    new StringBuilder().append(a()).append(paramObject).toString();
  }

  public void i(String paramString)
  {
    info(paramString);
  }

  public void info(Object paramObject)
  {
    new StringBuilder().append(a()).append(paramObject).toString();
  }

  public void printStackTraceAndMore(Throwable paramThrowable)
  {
    paramThrowable.printStackTrace();
  }

  public void v(String paramString)
  {
    LogCatLog.v(this.a, a() + paramString);
  }

  public void w(String paramString)
  {
    warn(paramString);
  }

  public void warn(Object paramObject)
  {
    new StringBuilder().append(a()).append(paramObject).toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logging.Logger
 * JD-Core Version:    0.6.2
 */