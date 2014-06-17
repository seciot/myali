package com.alipay.kabaoprod.biz.financial.pcredit.model;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.util.List;

public class PcreditPageListLog extends ToString
{
  public int currentPage;
  public int pageSize;
  public List<PcreditBillDetailLog> pcreditBillDetailLogs;
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

  public List<PcreditBillDetailLog> getPcreditBillDetailLogs()
  {
    return this.pcreditBillDetailLogs;
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

  public void setPcreditBillDetailLogs(List<PcreditBillDetailLog> paramList)
  {
    this.pcreditBillDetailLogs = paramList;
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
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.model.PcreditPageListLog
 * JD-Core Version:    0.6.2
 */