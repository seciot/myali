package com.alipay.kabaoprod.service.facade.request;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class CommonPageReq extends ToString
{
  public int currentPage;
  public int pageSize;

  public int getCurrentPage()
  {
    return this.currentPage;
  }

  public int getPageSize()
  {
    return this.pageSize;
  }

  public void setCurrentPage(int paramInt)
  {
    this.currentPage = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.service.facade.request.CommonPageReq
 * JD-Core Version:    0.6.2
 */