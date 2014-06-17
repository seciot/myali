package com.alipay.aggrbillinfo.biz.mgnt.bill.info;

import com.alipay.aggrbillinfo.biz.mgnt.result.Result;
import java.util.ArrayList;
import java.util.List;

public class BillResult extends Result
{
  public BankCardAndlatestBillResult bankAndLatestBillInfo = new BankCardAndlatestBillResult();
  public List<BillMonthInfo> billMonthInfo = new ArrayList();
  public boolean hasRealRecord = false;

  public BankCardAndlatestBillResult getBankAndLatestBillInfo()
  {
    return this.bankAndLatestBillInfo;
  }

  public List<BillMonthInfo> getBillMonthInfo()
  {
    return this.billMonthInfo;
  }

  public boolean isHasRealRecord()
  {
    return this.hasRealRecord;
  }

  public void setBankAndLatestBillInfo(BankCardAndlatestBillResult paramBankCardAndlatestBillResult)
  {
    this.bankAndLatestBillInfo = paramBankCardAndlatestBillResult;
  }

  public void setBillMonthInfo(List<BillMonthInfo> paramList)
  {
    this.billMonthInfo = paramList;
  }

  public void setHasRealRecord(boolean paramBoolean)
  {
    this.hasRealRecord = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.bill.info.BillResult
 * JD-Core Version:    0.6.2
 */