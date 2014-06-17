package com.alipay.mobilebill.biz.shared.contact.model;

import java.util.List;
import java.util.Map;

public class ContactListReq extends BaseContactInfoReq
{
  public Map<String, List<String>> extendField;
  public String filter;
  public int pageNum = 1;
  public int pageSize = 50;
  public long startTime;

  public Map<String, List<String>> getExtendField()
  {
    return this.extendField;
  }

  public String getFilter()
  {
    return this.filter;
  }

  public int getPageNum()
  {
    return this.pageNum;
  }

  public int getPageSize()
  {
    return this.pageSize;
  }

  public long getStartTime()
  {
    return this.startTime;
  }

  public void setExtendField(Map<String, List<String>> paramMap)
  {
    this.extendField = paramMap;
  }

  public void setFilter(String paramString)
  {
    this.filter = paramString;
  }

  public void setPageNum(int paramInt)
  {
    this.pageNum = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
  }

  public void setStartTime(long paramLong)
  {
    this.startTime = paramLong;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.contact.model.ContactListReq
 * JD-Core Version:    0.6.2
 */