package com.alipay.statusbar.common.sal.mobilegw;

import java.util.Date;

public class TodoQueryRequest
{
  public String cardNo;
  public Date endDate;
  public int pageNum;
  public int pageSize;
  public String terminal;

  public String getCardNo()
  {
    return this.cardNo;
  }

  public Date getEndDate()
  {
    return this.endDate;
  }

  public int getPageNum()
  {
    return this.pageNum;
  }

  public int getPageSize()
  {
    return this.pageSize;
  }

  public String getTerminal()
  {
    return this.terminal;
  }

  public void setCardNo(String paramString)
  {
    this.cardNo = paramString;
  }

  public void setEndDate(Date paramDate)
  {
    this.endDate = paramDate;
  }

  public void setPageNum(int paramInt)
  {
    this.pageNum = paramInt;
  }

  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
  }

  public void setTerminal(String paramString)
  {
    this.terminal = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.statusbar.common.sal.mobilegw.TodoQueryRequest
 * JD-Core Version:    0.6.2
 */