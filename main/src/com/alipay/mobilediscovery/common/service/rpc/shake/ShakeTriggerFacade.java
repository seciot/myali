package com.alipay.mobilediscovery.common.service.rpc.shake;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobilediscovery.common.service.rpc.shake.req.TriggerPrizeReq;
import com.alipay.mobilediscovery.common.service.rpc.shake.result.SingleTriggerPrizeResult;

public abstract interface ShakeTriggerFacade
{
  @OperationType("alipay.mobilediscovery.shake.triggerSinglePrize")
  @CheckLogin
  public abstract SingleTriggerPrizeResult triggerSinglePrize(TriggerPrizeReq paramTriggerPrizeReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilediscovery.common.service.rpc.shake.ShakeTriggerFacade
 * JD-Core Version:    0.6.2
 */