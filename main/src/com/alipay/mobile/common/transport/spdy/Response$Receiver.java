package com.alipay.mobile.common.transport.spdy;

public abstract interface Response$Receiver
{
  public abstract void onFailure(Failure paramFailure);

  public abstract void onResponse(Response paramResponse);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.Response.Receiver
 * JD-Core Version:    0.6.2
 */