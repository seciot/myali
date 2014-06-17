package com.alipay.mobile.common.transport;

import java.util.concurrent.Future;

public abstract interface Transport
{
  public abstract Future execute(Request paramRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.Transport
 * JD-Core Version:    0.6.2
 */