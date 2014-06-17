package com.alipay.mobile.framework.service.common;

import com.alipay.mobile.common.rpc.RpcInterceptor;
import com.alipay.mobile.framework.service.CommonService;
import java.lang.annotation.Annotation;
import java.util.concurrent.FutureTask;

public abstract class RpcService extends CommonService
{
  public abstract void addProtocolArgs(String paramString, Object paramObject);

  public abstract void addRpcInterceptor(Class<? extends Annotation> paramClass, RpcInterceptor paramRpcInterceptor);

  public abstract void batchBegin();

  public abstract FutureTask<?> batchCommit();

  public abstract <T> T getRpcProxy(Class<T> paramClass);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.RpcService
 * JD-Core Version:    0.6.2
 */