package com.alipay.aggrbillinfo.biz.mgnt.bill.info;

import com.alipay.aggrbillinfo.biz.mgnt.result.Result;
import java.util.HashSet;
import java.util.Set;

public class BankBillInfoResult extends Result
{
  public Set<BankCardAndlatestBillResult> bankCardBills = new HashSet();

  public Set<BankCardAndlatestBillResult> getBankCardBills()
  {
    return this.bankCardBills;
  }

  public void setBankCardBills(Set<BankCardAndlatestBillResult> paramSet)
  {
    this.bankCardBills = paramSet;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.bill.info.BankBillInfoResult
 * JD-Core Version:    0.6.2
 */