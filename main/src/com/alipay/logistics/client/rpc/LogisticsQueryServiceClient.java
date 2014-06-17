package com.alipay.logistics.client.rpc;

import com.alipay.logistics.client.dto.request.LogisticsDetailQueryRequest;
import com.alipay.logistics.client.dto.request.LogisticsPayBillQueryRequest;
import com.alipay.logistics.client.dto.response.LogisticsDetailQueryResult;
import com.alipay.logistics.client.dto.response.LogisticsLtdQueryResult;
import com.alipay.logistics.client.dto.response.LogisticsPayBillQueryResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface LogisticsQueryServiceClient
{
  @OperationType("alipay.logisticsapp.bill.queryPayInfo")
  @CheckLogin
  public abstract LogisticsPayBillQueryResult getBillPayLogisticsDetail(LogisticsPayBillQueryRequest paramLogisticsPayBillQueryRequest);

  @OperationType("alipay.logisticsapp.historyLogistics.get")
  @CheckLogin
  public abstract LogisticsDetailQueryResult getHistoryLogisticsDetail(LogisticsDetailQueryRequest paramLogisticsDetailQueryRequest);

  @OperationType("alipay.logisticsapp.logisticsLtds.get")
  @CheckLogin
  public abstract LogisticsLtdQueryResult getLogisticsLtds();

  @OperationType("alipay.logisticsapp.toDoListLogistics.get")
  @CheckLogin
  public abstract LogisticsDetailQueryResult getLogisticsToDoList(String paramString);

  @OperationType("alipay.logisticsapp.realTimeLogistics.get")
  @CheckLogin
  public abstract LogisticsDetailQueryResult getRealTimeLogisticsDetail(LogisticsDetailQueryRequest paramLogisticsDetailQueryRequest);

  @OperationType("alipay.logisticsapp.bill.queryPayRecords")
  @CheckLogin
  public abstract LogisticsDetailQueryResult queryPayRecords(String paramString1, String paramString2, String paramString3);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.logistics.client.rpc.LogisticsQueryServiceClient
 * JD-Core Version:    0.6.2
 */