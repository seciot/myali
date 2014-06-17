package com.alipay.mobile.common.rpc;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

class RpcInvoker$2
  implements RpcInvoker.Handle
{
  RpcInvoker$2(RpcInvoker paramRpcInvoker, Object paramObject, Class paramClass, Method paramMethod, Object[] paramArrayOfObject, RpcException paramRpcException)
  {
  }

  public boolean handle(RpcInterceptor paramRpcInterceptor, Annotation paramAnnotation)
  {
    if (paramRpcInterceptor.exceptionHandle(this.val$proxy, RpcInvoker.access$000(), this.val$clazz, this.val$method, this.val$args, this.val$exception, paramAnnotation))
    {
      new StringBuilder().append(this.val$exception).append("need process").toString();
      return true;
    }
    new StringBuilder().append(this.val$exception).append("need not process").toString();
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.RpcInvoker.2
 * JD-Core Version:    0.6.2
 */