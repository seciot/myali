package com.alipay.mobile.command.rpc.http.processor;

import com.alipay.mobile.command.model.Request;
import com.alipay.mobile.command.model.Response;
import com.alipay.mobile.command.rpc.http.TransportCallback;
import java.util.concurrent.Callable;

public abstract class RpcProcessor
  implements Callable<Response>
{
  private Request a;
  private TransportCallback b;

  public TransportCallback getCallback()
  {
    return this.b;
  }

  public Request getRequest()
  {
    return this.a;
  }

  public void setCallback(TransportCallback paramTransportCallback)
  {
    this.b = paramTransportCallback;
  }

  public void setRequest(Request paramRequest)
  {
    this.a = paramRequest;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.processor.RpcProcessor
 * JD-Core Version:    0.6.2
 */