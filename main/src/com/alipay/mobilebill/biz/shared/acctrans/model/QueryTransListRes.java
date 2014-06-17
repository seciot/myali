package com.alipay.mobilebill.biz.shared.acctrans.model;

import com.alipay.mobile.framework.service.ext.BizResult;
import java.util.List;

public class QueryTransListRes
{
  public BizResult bizResult;
  public int page = 1;
  public int pageCount;
  public long totalCount;
  public List<TransListVO> transList;

  public BizResult getBizResult()
  {
    return this.bizResult;
  }

  public int getPage()
  {
    return this.page;
  }

  public int getPageCount()
  {
    return this.pageCount;
  }

  public long getTotalCount()
  {
    return this.totalCount;
  }

  public List<TransListVO> getTransList()
  {
    return this.transList;
  }

  public void setBizResult(BizResult paramBizResult)
  {
    this.bizResult = paramBizResult;
  }

  public void setPage(int paramInt)
  {
    this.page = paramInt;
  }

  public void setPageCount(int paramInt)
  {
    this.pageCount = paramInt;
  }

  public void setTotalCount(long paramLong)
  {
    this.totalCount = paramLong;
  }

  public void setTransList(List<TransListVO> paramList)
  {
    this.transList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.acctrans.model.QueryTransListRes
 * JD-Core Version:    0.6.2
 */