package com.alipay.mobile.framework.service.common.impl;

import android.os.Bundle;
import com.alipay.mobile.common.rpc.RpcFactory;
import com.alipay.mobile.common.rpc.RpcInterceptor;
import com.alipay.mobile.framework.service.common.RpcService;
import java.lang.annotation.Annotation;
import java.util.concurrent.FutureTask;

public class RpcServiceImpl extends RpcService
{
  private RpcFactory a = new RpcFactory(new RpcServiceImpl.1(this));

  public void addProtocolArgs(String paramString, Object paramObject)
  {
    this.a.addProtocolArgs(paramString, paramObject);
  }

  public void addRpcInterceptor(Class<? extends Annotation> paramClass, RpcInterceptor paramRpcInterceptor)
  {
    this.a.addRpcInterceptor(paramClass, paramRpcInterceptor);
  }

  public void batchBegin()
  {
    this.a.batchBegin();
  }

  public FutureTask<?> batchCommit()
  {
    return this.a.batchCommit();
  }

  public <T> T getRpcProxy(Class<T> paramClass)
  {
    return this.a.getRpcProxy(paramClass);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.RpcServiceImpl
 * JD-Core Version:    0.6.2
 */