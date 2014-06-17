package com.alipay.aggrbillinfo.biz.mgnt.bill.info;

import com.alipay.aggrbillinfo.biz.mgnt.result.Result;

public class BillDetailInfoResult extends Result
{
  public BillMonthInfo billMonthInfo = new BillMonthInfo();

  public BillMonthInfo getBillMonthInfo()
  {
    return this.billMonthInfo;
  }

  public void setBillMonthInfo(BillMonthInfo paramBillMonthInfo)
  {
    this.billMonthInfo = paramBillMonthInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.bill.info.BillDetailInfoResult
 * JD-Core Version:    0.6.2
 */