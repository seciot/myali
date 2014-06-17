package com.alipay.mobilebill.biz.rpc.peerpay;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.BizResult;
import com.alipay.mobilebill.biz.shared.bill.model.BillDetail;

public abstract interface PeerpayRPCService
{
  @OperationType("alipay.mobile.bill.cancelPeerPay")
  public abstract BizResult cancelPeerPay(String paramString1, String paramString2);

  @OperationType("alipay.mobile.bill.getPeerPayDetail")
  public abstract BillDetail getPeerPayDetail(String paramString1, String paramString2, long paramLong);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.peerpay.PeerpayRPCService
 * JD-Core Version:    0.6.2
 */