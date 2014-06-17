package com.alipay.publiccore.common.service.facade.model.request;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class PagingReq extends ToString
{
  public int pageNum;
  public int pageSize;

  public int getPageNum()
  {
    return this.pageNum;
  }

  public int getPageSize()
  {
    return this.pageSize;
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
 * Qualified Name:     com.alipay.publiccore.common.service.facade.model.request.PagingReq
 * JD-Core Version:    0.6.2
 */