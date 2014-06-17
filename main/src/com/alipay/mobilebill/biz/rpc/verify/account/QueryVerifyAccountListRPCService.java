package com.alipay.mobilebill.biz.rpc.verify.account;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilebill.core.model.verify.account.QueryVerifyAccountListReq;
import com.alipay.mobilebill.core.model.verify.account.QueryVerifyAccountListRes;

public abstract interface QueryVerifyAccountListRPCService
{
  @OperationType("alipay.mobile.bill.queryVerifyAccountList")
  public abstract QueryVerifyAccountListRes queryVerifyAccountList(QueryVerifyAccountListReq paramQueryVerifyAccountListReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.verify.account.QueryVerifyAccountListRPCService
 * JD-Core Version:    0.6.2
 */