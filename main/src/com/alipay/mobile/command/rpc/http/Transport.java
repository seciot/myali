package com.alipay.mobile.command.rpc.http;

import com.alipay.mobile.command.model.Request;
import com.alipay.mobile.command.model.Response;
import java.util.concurrent.Future;

public abstract interface Transport
{
  public abstract Future<Response> execute(Request paramRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.Transport
 * JD-Core Version:    0.6.2
 */