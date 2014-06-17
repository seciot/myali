package com.alipay.mobile.command.rpc.proxy;

import com.alipay.mobile.command.rpc.http.Transport;

public abstract interface Config
{
  public abstract Transport getTransport();

  public abstract String getUrl();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.proxy.Config
 * JD-Core Version:    0.6.2
 */