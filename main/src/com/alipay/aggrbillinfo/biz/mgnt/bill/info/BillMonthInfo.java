package com.alipay.aggrbillinfo.biz.mgnt.bill.info;

import com.alipay.aggrbillinfo.biz.mgnt.result.Result;
import java.util.ArrayList;
import java.util.List;

public class BillMonthInfo extends Result
{
  public List<BillDetailInfo> billDetails = new ArrayList();
  public String memo;
  public String month;
  public String totalAmount;
  public String year;

  public List<BillDetailInfo> getBillDetails()
  {
    return this.billDetails;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public String getMonth()
  {
    return this.month;
  }

  public String getTotalAmount()
  {
    return this.totalAmount;
  }

  public String getYear()
  {
    return this.year;
  }

  public void setBillDetails(List<BillDetailInfo> paramList)
  {
    this.billDetails = paramList;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setMonth(String paramString)
  {
    this.month = paramString;
  }

  public void setTotalAmount(String paramString)
  {
    this.totalAmount = paramString;
  }

  public void setYear(String paramString)
  {
    this.year = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.aggrbillinfo.biz.mgnt.bill.info.BillMonthInfo
 * JD-Core Version:    0.6.2
 */