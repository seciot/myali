package com.alipay.mobile.command.rpc.proxy;

import com.alipay.mobile.command.model.SerializeTypeEnum;
import com.alipay.mobile.command.rpc.serialize.JsonSerializer;
import com.alipay.mobile.command.util.exception.RpcException;
import java.lang.reflect.Proxy;

public class RpcFactory
{
  public static <T> T buildRpcProxy(Class<T> paramClass, SerializeTypeEnum paramSerializeTypeEnum, Config paramConfig)
  {
    switch (RpcFactory.1.a[paramSerializeTypeEnum.ordinal()])
    {
    default:
      throw new RpcException("without Serialize imple for type:" + paramSerializeTypeEnum);
    case 1:
    }
    RpcInvoker localRpcInvoker = new RpcInvoker(new JsonSerializer(), paramConfig);
    return Proxy.newProxyInstance(paramClass.getClassLoader(), new Class[] { paramClass }, new RpcInvocationHandler(localRpcInvoker));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.proxy.RpcFactory
 * JD-Core Version:    0.6.2
 */