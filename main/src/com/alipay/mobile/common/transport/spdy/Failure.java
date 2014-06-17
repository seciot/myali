package com.alipay.mobile.common.transport.spdy;

class Failure
{
  private final Request a;
  private final Throwable b;

  private Failure(Failure.Builder paramBuilder)
  {
    this.a = Failure.Builder.access$000(paramBuilder);
    this.b = Failure.Builder.access$100(paramBuilder);
  }

  public Throwable exception()
  {
    return this.b;
  }

  public Request request()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Failure
 * JD-Core Version:    0.6.2
 */