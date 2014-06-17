package com.alipay.mobilebill.biz.shared.bill.model;

import java.util.List;

public class MonthBill
{
  public long endTime;
  public boolean hasNext;
  public String lastBillNo;
  public String month;
  public List<BillInfo> monthBills;
  public String monthDec;
  public String monthInc;
  public String monthOffset;
  public long nextPageStartTime;
  public String nextPageType;
  public int pageNum;

  public long getEndTime()
  {
    return this.endTime;
  }

  public String getLastBillNo()
  {
    return this.lastBillNo;
  }

  public String getMonth()
  {
    return this.month;
  }

  public List<BillInfo> getMonthBills()
  {
    return this.monthBills;
  }

  public String getMonthDec()
  {
    return this.monthDec;
  }

  public String getMonthInc()
  {
    return this.monthInc;
  }

  public String getMonthOffset()
  {
    return this.monthOffset;
  }

  public long getNextPageStartTime()
  {
    return this.nextPageStartTime;
  }

  public String getNextPageType()
  {
    return this.nextPageType;
  }

  public int getPageNum()
  {
    return this.pageNum;
  }

  public boolean isHasNext()
  {
    return this.hasNext;
  }

  public void setEndTime(long paramLong)
  {
    this.endTime = paramLong;
  }

  public void setHasNext(boolean paramBoolean)
  {
    this.hasNext = paramBoolean;
  }

  public void setLastBillNo(String paramString)
  {
    this.lastBillNo = paramString;
  }

  public void setMonth(String paramString)
  {
    this.month = paramString;
  }

  public void setMonthBills(List<BillInfo> paramList)
  {
    this.monthBills = paramList;
  }

  public void setMonthDec(String paramString)
  {
    this.monthDec = paramString;
  }

  public void setMonthInc(String paramString)
  {
    this.monthInc = paramString;
  }

  public void setMonthOffset(String paramString)
  {
    this.monthOffset = paramString;
  }

  public void setNextPageStartTime(long paramLong)
  {
    this.nextPageStartTime = paramLong;
  }

  public void setNextPageType(String paramString)
  {
    this.nextPageType = paramString;
  }

  public void setPageNum(int paramInt)
  {
    this.pageNum = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.bill.model.MonthBill
 * JD-Core Version:    0.6.2
 */