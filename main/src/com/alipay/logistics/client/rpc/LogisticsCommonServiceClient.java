package com.alipay.logistics.client.rpc;

import com.alipay.logistics.client.dto.request.LogisticsDecisionRequest;
import com.alipay.logistics.client.dto.request.LogisticsUidSignRequest;
import com.alipay.logistics.client.dto.response.LogisticsDecisionResponse;
import com.alipay.logistics.client.dto.response.LogisticsUidSignResponse;
import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface LogisticsCommonServiceClient
{
  @OperationType("alipay.logisticsapp.userId.sign.get")
  public abstract LogisticsUidSignResponse getAlipayuidSign(LogisticsUidSignRequest paramLogisticsUidSignRequest);

  @OperationType("alipay.logisticsapp.logistics.decision")
  public abstract LogisticsDecisionResponse makeLogisticsDecision(LogisticsDecisionRequest paramLogisticsDecisionRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.rpc.LogisticsCommonServiceClient
 * JD-Core Version:    0.6.2
 */