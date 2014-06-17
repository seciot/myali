package com.alipay.mobile.common.rpc;

import com.alipay.mobile.common.rpc.protocol.Deserializer;
import com.alipay.mobile.common.rpc.protocol.Serializer;
import com.alipay.mobile.common.rpc.protocol.json.JsonDeserializer;
import com.alipay.mobile.common.rpc.protocol.json.JsonSerializer;
import com.alipay.mobile.common.rpc.transport.RpcCaller;
import com.alipay.mobile.common.rpc.transport.http.HttpCaller;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

public class RpcInvocationHandler
  implements InvocationHandler
{
  private Config a;
  private Class b;
  private RpcInvoker c;

  public RpcInvocationHandler(Config paramConfig, Class paramClass, RpcInvoker paramRpcInvoker)
  {
    this.a = paramConfig;
    this.b = paramClass;
    this.c = paramRpcInvoker;
  }

  public Deserializer getDeserializer(Type paramType, String paramString)
  {
    return new JsonDeserializer(paramType, paramString);
  }

  public Serializer getSerializer(int paramInt, String paramString, Object paramObject)
  {
    return new JsonSerializer(paramInt, paramString, paramObject);
  }

  public RpcCaller getTransport(Method paramMethod, Object paramObject)
  {
    return new HttpCaller(this.a, paramMethod, paramObject);
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    return this.c.invoke(this, paramObject, this.b, paramMethod, paramArrayOfObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.RpcInvocationHandler
 * JD-Core Version:    0.6.2
 */