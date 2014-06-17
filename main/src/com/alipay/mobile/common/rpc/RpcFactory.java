package com.alipay.mobile.common.rpc;

import java.lang.reflect.Proxy;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.FutureTask;

public class RpcFactory
{
  private Config a;
  private RpcInvoker b;
  private Map c;

  public RpcFactory(Config paramConfig)
  {
    this.a = paramConfig;
    this.b = new RpcInvoker(this);
    this.c = new HashMap();
  }

  public void addProtocolArgs(String paramString, Object paramObject)
  {
    RpcInvoker.addProtocolArgs(paramString, paramObject);
  }

  public void addRpcInterceptor(Class paramClass, RpcInterceptor paramRpcInterceptor)
  {
    this.c.put(paramClass, paramRpcInterceptor);
  }

  public void batchBegin()
  {
    this.b.batchBegin();
  }

  public FutureTask batchCommit()
  {
    return this.b.batchCommit();
  }

  public RpcInterceptor findRpcInterceptor(Class paramClass)
  {
    return (RpcInterceptor)this.c.get(paramClass);
  }

  public Object getRpcProxy(Class paramClass)
  {
    return Proxy.newProxyInstance(paramClass.getClassLoader(), new Class[] { paramClass }, new RpcInvocationHandler(this.a, paramClass, this.b));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.RpcFactory
 * JD-Core Version:    0.6.2
 */