package com.alipay.mobilebill.biz.shared.acctrans.model;

public class QueryTransListReq
{
  public int nextPage = 1;
  public int pageCount = 5;
  public String queryTransType;
  public String timeRange = "1";

  public int getNextPage()
  {
    return this.nextPage;
  }

  public int getPageCount()
  {
    return this.pageCount;
  }

  public String getQueryTransType()
  {
    return this.queryTransType;
  }

  public String getTimeRange()
  {
    return this.timeRange;
  }

  public void setNextPage(int paramInt)
  {
    this.nextPage = paramInt;
  }

  public void setPageCount(int paramInt)
  {
    this.pageCount = paramInt;
  }

  public void setQueryTransType(String paramString)
  {
    this.queryTransType = paramString;
  }

  public void setTimeRange(String paramString)
  {
    this.timeRange = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.acctrans.model.QueryTransListReq
 * JD-Core Version:    0.6.2
 */