package com.alipay.kabaoprod.biz.shared.result;

public class KabaoCommonPageResult extends KabaoCommonResult
{
  public int currentPage;
  public int pageSize;
  public int totalPage;
  public int totalSize;

  public int getCurrentPage()
  {
    return this.currentPage;
  }

  public int getPageSize()
  {
    return this.pageSize;
  }

  public int getTotalPage()
  {
    return this.totalPage;
  }

  public int getTotalSize()
  {
    return this.totalSize;
  }

  public void setCurrentPage(int paramInt)
  {
    this.currentPage = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
  }

  public void setTotalPage(int paramInt)
  {
    this.totalPage = paramInt;
  }

  public void setTotalSize(int paramInt)
  {
    this.totalSize = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.shared.result.KabaoCommonPageResult
 * JD-Core Version:    0.6.2
 */