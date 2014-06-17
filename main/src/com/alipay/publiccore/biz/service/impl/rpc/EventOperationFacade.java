package com.alipay.publiccore.biz.service.impl.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.publiccore.client.result.ListMessageResult;
import com.alipay.publiccore.core.model.account.EventOperationReq;

public abstract interface EventOperationFacade
{
  @OperationType("alipay.publicplatform.account.event.operation")
  public abstract ListMessageResult operation(EventOperationReq paramEventOperationReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.service.impl.rpc.EventOperationFacade
 * JD-Core Version:    0.6.2
 */