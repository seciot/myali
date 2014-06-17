package com.alipay.mobilebill.biz.shared.bill;

import java.util.List;
import java.util.Map;

public class GetBillInfoListReq
{
  public String cardNo;
  public String category;
  public long endTime;
  public Map<String, List<String>> extendField;
  public String lastBillNo;
  public String month;
  public String monthOffset;
  public long nextPageStartTime;
  public String nextPageStartType;
  public int pageNum;
  public int pageSize;

  public String getCardNo()
  {
    return this.cardNo;
  }

  public String getCategory()
  {
    return this.category;
  }

  public long getEndTime()
  {
    return this.endTime;
  }

  public Map<String, List<String>> getExtendField()
  {
    return this.extendField;
  }

  public String getLastBillNo()
  {
    return this.lastBillNo;
  }

  public String getMonth()
  {
    return this.month;
  }

  public String getMonthOffset()
  {
    return this.monthOffset;
  }

  public long getNextPageStartTime()
  {
    return this.nextPageStartTime;
  }

  public String getNextPageStartType()
  {
    return this.nextPageStartType;
  }

  public int getPageNum()
  {
    return this.pageNum;
  }

  public int getPageSize()
  {
    return this.pageSize;
  }

  public void setCardNo(String paramString)
  {
    this.cardNo = paramString;
  }

  public void setCategory(String paramString)
  {
    this.category = paramString;
  }

  public void setEndTime(long paramLong)
  {
    this.endTime = paramLong;
  }

  public void setExtendField(Map<String, List<String>> paramMap)
  {
    this.extendField = paramMap;
  }

  public void setLastBillNo(String paramString)
  {
    this.lastBillNo = paramString;
  }

  public void setMonth(String paramString)
  {
    this.month = paramString;
  }

  public void setMonthOffset(String paramString)
  {
    this.monthOffset = paramString;
  }

  public void setNextPageStartTime(long paramLong)
  {
    this.nextPageStartTime = paramLong;
  }

  public void setNextPageStartType(String paramString)
  {
    this.nextPageStartType = paramString;
  }

  public void setPageNum(int paramInt)
  {
    this.pageNum = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.bill.GetBillInfoListReq
 * JD-Core Version:    0.6.2
 */