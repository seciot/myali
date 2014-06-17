package com.alipay.mobilebill.biz.rpc.bill;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilebill.biz.bill.model.billremind.BillRemindInfoReq;
import com.alipay.mobilebill.biz.bill.model.billremind.BillRemindInfoResp;

public abstract interface QueryBillRemindInfoRPCService
{
  @OperationType("alipay.mobile.bill.getWaitPayRecordNum")
  public abstract BillRemindInfoResp getWaitPayRecordNum(BillRemindInfoReq paramBillRemindInfoReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.bill.QueryBillRemindInfoRPCService
 * JD-Core Version:    0.6.2
 */