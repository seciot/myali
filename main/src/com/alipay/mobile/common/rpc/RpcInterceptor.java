package com.alipay.mobile.common.rpc;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;

public abstract interface RpcInterceptor
{
  public abstract boolean exceptionHandle(Object paramObject, ThreadLocal paramThreadLocal, Class paramClass, Method paramMethod, Object[] paramArrayOfObject, RpcException paramRpcException, Annotation paramAnnotation);

  public abstract boolean postHandle(Object paramObject, ThreadLocal paramThreadLocal, Class paramClass, Method paramMethod, Object[] paramArrayOfObject, Annotation paramAnnotation);

  public abstract boolean preHandle(Object paramObject, ThreadLocal paramThreadLocal1, Class paramClass, Method paramMethod, Object[] paramArrayOfObject, Annotation paramAnnotation, ThreadLocal paramThreadLocal2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.RpcInterceptor
 * JD-Core Version:    0.6.2
 */