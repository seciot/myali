package com.alipay.mobile.command.rpc.proxy;

import com.alipay.mobile.command.model.HttpUrlRequest;
import com.alipay.mobile.command.model.Response;
import com.alipay.mobile.command.rpc.http.Transport;
import com.alipay.mobile.command.rpc.serialize.Serializer;
import com.alipay.mobile.command.util.CommandConfig;
import com.alipay.mobile.command.util.CommandUtil;
import com.alipay.mobile.command.util.exception.HttpException;
import com.alipay.mobile.command.util.exception.RpcException;
import com.alipay.mobile.common.info.DeviceInfo;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicNameValuePair;

public class RpcInvoker
{
  private AtomicLong a = new AtomicLong();
  private Serializer b;
  private Config c;

  public RpcInvoker(Serializer paramSerializer, Config paramConfig)
  {
    this.b = paramSerializer;
    this.c = paramConfig;
  }

  private String a(Object[] paramArrayOfObject, String paramString, long paramLong)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new BasicNameValuePair("operationType", paramString));
    localArrayList.add(new BasicNameValuePair("id", paramLong));
    String str1 = (String)this.b.encodeData(paramArrayOfObject);
    if (paramArrayOfObject == null)
      str1 = "[]";
    localArrayList.add(new BasicNameValuePair("requestData", str1));
    HttpUrlRequest localHttpUrlRequest = new HttpUrlRequest(this.c.getUrl());
    localHttpUrlRequest.setReqData(localArrayList);
    BasicHeader localBasicHeader;
    if (CommandUtil.isInWallet())
      localBasicHeader = new BasicHeader("did", DeviceInfo.getInstance().getmDid());
    while (true)
    {
      localHttpUrlRequest.addHeader(localBasicHeader);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = "RPC start request:";
      arrayOfObject[1] = localHttpUrlRequest.toString();
      try
      {
        localResponse = (Response)this.c.getTransport().execute(localHttpUrlRequest).get();
        if (localResponse == null)
          throw new RpcException(Integer.valueOf(9), "RPC end response is null");
      }
      catch (InterruptedException localInterruptedException)
      {
        Response localResponse;
        throw new RpcException(Integer.valueOf(13), "RPC end  InterruptedException");
        localBasicHeader = new BasicHeader("did", "THIRD_CMDCENTER_" + CommandUtil.getImei(CommandConfig.getContext()));
        continue;
        String str2 = new String(localResponse.getResData());
        new Object[] { "RPC end response:", str2 };
        return str2;
      }
      catch (ExecutionException localExecutionException)
      {
        Throwable localThrowable = localExecutionException.getCause();
        if ((localThrowable != null) && ((localThrowable instanceof HttpException)))
        {
          HttpException localHttpException = (HttpException)localThrowable;
          throw new RpcException(Integer.valueOf(localHttpException.getCode()), localHttpException.getMsg());
        }
        new Object[] { "exe Error." };
      }
    }
    throw new RpcException(Integer.valueOf(9), "RPC end  ExecutionException");
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    if (CommandUtil.isInMainThread())
      throw new IllegalThreadStateException("can't in main thread call rpc .");
    OperationType localOperationType = (OperationType)paramMethod.getAnnotation(OperationType.class);
    if (localOperationType == null)
      throw new IllegalStateException("OperationType must be set.");
    String str1 = localOperationType.value();
    Type localType = paramMethod.getGenericReturnType();
    long l = this.a.incrementAndGet();
    try
    {
      String str2 = a(paramArrayOfObject, str1, l);
      if (localType != Void.TYPE)
      {
        Object localObject = this.b.deCodeData(str2, localType);
        return localObject;
      }
    }
    catch (RpcException localRpcException)
    {
      localRpcException.setOperationType(str1);
      new Object[] { "RPC end." };
      new Object[] { "RPC finish: operationTypeValue=", str1 };
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.proxy.RpcInvoker
 * JD-Core Version:    0.6.2
 */