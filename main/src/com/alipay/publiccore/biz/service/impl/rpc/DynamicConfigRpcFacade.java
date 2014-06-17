package com.alipay.publiccore.biz.service.impl.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.publiccore.client.result.DynamicConfigRes;

public abstract interface DynamicConfigRpcFacade
{
  @OperationType("alipay.publicplatform.dynamic.config.load")
  public abstract DynamicConfigRes loadDynamicConfig();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.service.impl.rpc.DynamicConfigRpcFacade
 * JD-Core Version:    0.6.2
 */