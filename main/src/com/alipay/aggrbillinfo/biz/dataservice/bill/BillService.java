package com.alipay.aggrbillinfo.biz.dataservice.bill;

import com.alipay.aggrbillinfo.biz.mgnt.bill.info.BankBillInfoResult;
import com.alipay.aggrbillinfo.biz.mgnt.bill.info.BillDetailInfoResult;
import com.alipay.aggrbillinfo.biz.mgnt.bill.info.BillResult;
import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface BillService
{
  @OperationType("alipay.mobile.aggrbillinfo.bill.findAllAuthBankCard")
  public abstract BankBillInfoResult findAllAuthBankCard();

  @OperationType("alipay.mobile.aggrbillinfo.bill.findBillByBank")
  public abstract BillResult findBillByBank(String paramString1, String paramString2, String paramString3, String paramString4);

  @OperationType("alipay.mobile.aggrbillinfo.bill.findBillDetailByBillId")
  public abstract BillDetailInfoResult findBillDetailByBillId(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.dataservice.bill.BillService
 * JD-Core Version:    0.6.2
 */