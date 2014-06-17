package com.alipay.kabaoprod.biz.financial.fund.request;

public class QueryFundTradeRecordReq
{
  public int currentPage = 1;
  public String filterCodition;
  public int pageSize = 15;

  public int getCurrentPage()
  {
    return this.currentPage;
  }

  public String getFilterCodition()
  {
    return this.filterCodition;
  }

  public int getPageSize()
  {
    return this.pageSize;
  }

  public void setCurrentPage(int paramInt)
  {
    this.currentPage = paramInt;
  }

  public void setFilterCodition(String paramString)
  {
    this.filterCodition = paramString;
  }

  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.request.QueryFundTradeRecordReq
 * JD-Core Version:    0.6.2
 */