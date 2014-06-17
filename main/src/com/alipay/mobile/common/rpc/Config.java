package com.alipay.mobile.common.rpc;

import com.alipay.mobile.common.transport.Transport;

public abstract interface Config
{
  public abstract Transport getTransport();

  public abstract String getUrl();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.Config
 * JD-Core Version:    0.6.2
 */