package com.alipay.mobile.command.rpc.http;

import com.alipay.mobile.command.model.DownloadInHttpRequest;
import com.alipay.mobile.command.model.HttpUrlRequest;
import com.alipay.mobile.command.model.Request;
import com.alipay.mobile.command.model.Response;
import com.alipay.mobile.command.rpc.http.processor.RpcProcessor;
import com.alipay.mobile.command.rpc.http.processor.impl.DownLoadInHttpProcessor;
import com.alipay.mobile.command.rpc.http.processor.impl.HttpProcessor;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;

public class RpcTaskFactory
{
  public static FutureTask<Response> buildTask(Request paramRequest, TransportCallback paramTransportCallback)
  {
    switch (RpcTaskFactory.2.a[paramRequest.rpcTypeEnum().ordinal()])
    {
    default:
      throw new RuntimeException("can't find RpcType");
    case 1:
    case 2:
    }
    for (Object localObject = new HttpProcessor((HttpUrlRequest)paramRequest, paramTransportCallback); ; localObject = new DownLoadInHttpProcessor((DownloadInHttpRequest)paramRequest, paramTransportCallback))
      return new RpcTaskFactory.1((Callable)localObject, (RpcProcessor)localObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.http.RpcTaskFactory
 * JD-Core Version:    0.6.2
 */