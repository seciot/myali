package com.alipay.mobile.common.rpc;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

class RpcInvoker$1
  implements RpcInvoker.Handle
{
  RpcInvoker$1(RpcInvoker paramRpcInvoker, Object paramObject, Class paramClass, Method paramMethod, Object[] paramArrayOfObject)
  {
  }

  public boolean handle(RpcInterceptor paramRpcInterceptor, Annotation paramAnnotation)
  {
    if (!paramRpcInterceptor.postHandle(this.val$proxy, RpcInvoker.access$000(), this.val$clazz, this.val$method, this.val$args, paramAnnotation))
      throw new RpcException(Integer.valueOf(9), paramRpcInterceptor + "postHandle stop this call.");
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.RpcInvoker.1
 * JD-Core Version:    0.6.2
 */