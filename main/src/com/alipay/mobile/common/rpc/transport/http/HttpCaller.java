package com.alipay.mobile.common.rpc.transport.http;

import com.alipay.mobile.common.info.DeviceInfo;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.common.rpc.Config;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.rpc.transport.AbstractRpcCaller;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.Transport;
import com.alipay.mobile.common.transport.http.HttpException;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.apache.http.message.BasicHeader;

public class HttpCaller extends AbstractRpcCaller
{
  private Config a;

  public HttpCaller(Config paramConfig, Method paramMethod, Object paramObject)
  {
    super(paramMethod, paramObject);
    this.a = paramConfig;
  }

  public Object call()
  {
    HttpUrlRequest localHttpUrlRequest = new HttpUrlRequest(this.a.getUrl());
    localHttpUrlRequest.setReqData((ArrayList)this.mReqData);
    localHttpUrlRequest.addHeader(new BasicHeader("did", DeviceInfo.getInstance().getmDid()));
    localHttpUrlRequest.addHeader(new BasicHeader("clientId", DeviceInfo.getInstance().getClientId()));
    new StringBuilder("threadid = ").append(Thread.currentThread().getId()).append("; ").append(localHttpUrlRequest.toString()).toString();
    try
    {
      if (this.a.getTransport() == null)
        throw new RpcException(Integer.valueOf(1), "Not find this type Transport");
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new RpcException(Integer.valueOf(13), localInterruptedException);
      localResponse = (Response)this.a.getTransport().execute(localHttpUrlRequest).get();
      if (localResponse == null)
        throw new RpcException(Integer.valueOf(9), "response is null");
    }
    catch (ExecutionException localExecutionException)
    {
      Response localResponse;
      Throwable localThrowable = localExecutionException.getCause();
      if ((localThrowable != null) && ((localThrowable instanceof HttpException)))
      {
        HttpException localHttpException = (HttpException)localThrowable;
        int i = localHttpException.getCode();
        switch (i)
        {
        default:
        case 3:
        case 6:
        case 7:
        case 5:
        case 4:
        case 2:
        case 1:
        }
        while (true)
        {
          throw new RpcException(Integer.valueOf(i), localHttpException.getMsg());
          String str = new String(localResponse.getResData());
          LogCatLog.v("HttpCaller", "threadid = " + Thread.currentThread().getId() + "; rpc response:  " + str);
          return str;
          i = 4;
          continue;
          i = 7;
          continue;
          i = 8;
          continue;
          i = 6;
          continue;
          i = 5;
          continue;
          i = 3;
          continue;
          i = 2;
        }
      }
      throw new RpcException(Integer.valueOf(9), localExecutionException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.transport.http.HttpCaller
 * JD-Core Version:    0.6.2
 */