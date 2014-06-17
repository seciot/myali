package com.alipay.mobilebill.biz.rpc.mtop.notifydelivery;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.BizResult;

public abstract interface NotifyDeliveryRPCService
{
  @OperationType("alipay.mobile.bill.notifyDelivery")
  public abstract BizResult notifyDelivery(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.mtop.notifydelivery.NotifyDeliveryRPCService
 * JD-Core Version:    0.6.2
 */