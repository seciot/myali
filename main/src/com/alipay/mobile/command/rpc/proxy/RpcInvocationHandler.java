package com.alipay.mobile.command.rpc.proxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

public class RpcInvocationHandler
  implements InvocationHandler
{
  private RpcInvoker a;

  public RpcInvocationHandler(RpcInvoker paramRpcInvoker)
  {
    this.a = paramRpcInvoker;
  }

  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
  {
    return this.a.invoke(paramObject, paramMethod, paramArrayOfObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.rpc.proxy.RpcInvocationHandler
 * JD-Core Version:    0.6.2
 */