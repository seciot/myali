package com.alipay.mobilebill.biz.rpc.bill;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.BizResult;
import com.alipay.mobilebill.biz.bill.model.billdetail.BillDetailInfo;
import com.alipay.mobilebill.biz.bill.model.billdetail.GetBillDetailRequest;
import com.alipay.mobilebill.biz.shared.bill.GetBillInfoListReq;
import com.alipay.mobilebill.biz.shared.bill.model.BillDetail;
import com.alipay.mobilebill.biz.shared.bill.model.BillList;

public abstract interface QueryBillInfoRPCService
{
  @OperationType("alipay.mobile.bill.deleteBillInfo")
  public abstract BizResult deleteBillInfo(String paramString1, String paramString2, long paramLong);

  @OperationType("alipay.mobile.bill.getBillDetail")
  public abstract BillDetail getBillDetail(String paramString1, String paramString2, long paramLong);

  @OperationType("alipay.mobile.bill.getBillDetailInfo")
  public abstract BillDetailInfo getBillDetailInfo(GetBillDetailRequest paramGetBillDetailRequest);

  @OperationType("alipay.mobile.bill.getBillList")
  public abstract BillList getBillList(GetBillInfoListReq paramGetBillInfoListReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.bill.QueryBillInfoRPCService
 * JD-Core Version:    0.6.2
 */