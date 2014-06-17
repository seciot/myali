package com.alipay.mobile.common.transport.spdy;

public class Failure$Builder
{
  private Request a;
  private Throwable b;

  public Failure build()
  {
    return new Failure(this, null);
  }

  public Builder exception(Throwable paramThrowable)
  {
    this.b = paramThrowable;
    return this;
  }

  public Builder request(Request paramRequest)
  {
    this.a = paramRequest;
    return this;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Failure.Builder
 * JD-Core Version:    0.6.2
 */