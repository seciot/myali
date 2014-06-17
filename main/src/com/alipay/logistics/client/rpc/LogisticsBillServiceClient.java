package com.alipay.logistics.client.rpc;

import com.alipay.logistics.client.dto.request.LogisticsCreateOrderRequest;
import com.alipay.logistics.client.dto.response.LogisticsCreateOrderResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface LogisticsBillServiceClient
{
  @OperationType("alipay.logisticsapp.bill.orderCreate")
  @CheckLogin
  public abstract LogisticsCreateOrderResult orderCreate(LogisticsCreateOrderRequest paramLogisticsCreateOrderRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.rpc.LogisticsBillServiceClient
 * JD-Core Version:    0.6.2
 */