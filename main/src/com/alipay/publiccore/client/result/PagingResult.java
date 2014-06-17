package com.alipay.publiccore.client.result;

import com.alipay.publiccore.common.service.facade.model.result.PublicResult;

public class PagingResult extends PublicResult
{
  public int pageNum;
  public int pageSize;
  public int rowCount;

  public int getPageNum()
  {
    return this.pageNum;
  }

  public int getPageSize()
  {
    return this.pageSize;
  }

  public int getRowCount()
  {
    return this.rowCount;
  }

  public void setPageNum(int paramInt)
  {
    this.pageNum = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
  }

  public void setRowCount(int paramInt)
  {
    this.rowCount = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.PagingResult
 * JD-Core Version:    0.6.2
 */