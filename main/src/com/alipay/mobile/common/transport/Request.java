package com.alipay.mobile.common.transport;

public abstract class Request
{
  private boolean a = false;
  protected TransportCallback mCallback;

  public void cancel()
  {
    this.a = true;
  }

  public TransportCallback getCallback()
  {
    return this.mCallback;
  }

  public boolean isCanceled()
  {
    return this.a;
  }

  public void setTransportCallback(TransportCallback paramTransportCallback)
  {
    this.mCallback = paramTransportCallback;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.Request
 * JD-Core Version:    0.6.2
 */