package com.alipay.mobile.command.model;

public abstract class Request
{
  private boolean a = false;

  public void cancel()
  {
    this.a = true;
  }

  public boolean isCanceled()
  {
    return this.a;
  }

  public abstract RpcTypeEnum rpcTypeEnum();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.Request
 * JD-Core Version:    0.6.2
 */