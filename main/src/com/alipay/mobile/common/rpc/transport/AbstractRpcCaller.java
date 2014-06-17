package com.alipay.mobile.common.rpc.transport;

import java.lang.reflect.Method;

public abstract class AbstractRpcCaller
  implements RpcCaller
{
  protected Method mMethod;
  protected Object mReqData;

  public AbstractRpcCaller(Method paramMethod, Object paramObject)
  {
    this.mMethod = paramMethod;
    this.mReqData = paramObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.transport.AbstractRpcCaller
 * JD-Core Version:    0.6.2
 */