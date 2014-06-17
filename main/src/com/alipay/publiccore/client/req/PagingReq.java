package com.alipay.publiccore.client.req;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class PagingReq extends ToString
{
  private int pageNum;
  private int pageSize;

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
 * Qualified Name:     com.alipay.publiccore.client.req.PagingReq
 * JD-Core Version:    0.6.2
 */