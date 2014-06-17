package com.alipay.mobilebill.biz.rpc.billshare;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilebill.core.model.billshare.GetBillShareInfoRequest;
import com.alipay.mobilebill.core.model.billshare.GetBillShareInfoResponse;

public abstract interface QueryBillShareInfoRPCService
{
  @OperationType("alipay.mobile.bill.queryBillShareInfo")
  public abstract GetBillShareInfoResponse queryBillShareInfo(GetBillShareInfoRequest paramGetBillShareInfoRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.billshare.QueryBillShareInfoRPCService
 * JD-Core Version:    0.6.2
 */