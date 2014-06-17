package com.alipay.publiccore.biz.service.impl.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.publiccore.common.service.facade.model.request.PublicEventProcessReq;
import com.alipay.publiccore.common.service.facade.model.result.PublicEventMessageResult;

public abstract interface TradeInfoFacade
{
  @OperationType("alipay.publicplatform.account.queryContactInfo")
  public abstract PublicEventMessageResult queryContactInfo(PublicEventProcessReq paramPublicEventProcessReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.service.impl.rpc.TradeInfoFacade
 * JD-Core Version:    0.6.2
 */