package com.alipay.mobile.command.rpc.http;

import com.alipay.mobile.command.model.Request;
import com.alipay.mobile.command.model.Response;

public abstract interface CommonTransport
{
  public abstract Response execute(Request paramRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.CommonTransport
 * JD-Core Version:    0.6.2
 */