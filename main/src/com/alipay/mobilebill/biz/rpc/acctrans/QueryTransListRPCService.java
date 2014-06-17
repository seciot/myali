package com.alipay.mobilebill.biz.rpc.acctrans;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilebill.biz.shared.acctrans.model.QueryTransListReq;
import com.alipay.mobilebill.biz.shared.acctrans.model.QueryTransListRes;

public abstract interface QueryTransListRPCService
{
  @OperationType("alipay.mobile.bill.getTransList")
  public abstract QueryTransListRes getTransList(QueryTransListReq paramQueryTransListReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.acctrans.QueryTransListRPCService
 * JD-Core Version:    0.6.2
 */