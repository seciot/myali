package com.alipay.kabaoprod.biz.mwallet.pass.request;

public class PassListReq
{
  public boolean needPaging;
  public int pageSize;
  public String passCategory;
  public int rowSize;
  public String timeStatus;
  public String updateFlag;

  public int getPageSize()
  {
    return this.pageSize;
  }

  public String getPassCategory()
  {
    return this.passCategory;
  }

  public int getRowSize()
  {
    return this.rowSize;
  }

  public String getTimeStatus()
  {
    return this.timeStatus;
  }

  public String getUpdateFlag()
  {
    return this.updateFlag;
  }

  public boolean isNeedPaging()
  {
    return this.needPaging;
  }

  public void setNeedPaging(boolean paramBoolean)
  {
    this.needPaging = paramBoolean;
  }

  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
  }

  public void setPassCategory(String paramString)
  {
    this.passCategory = paramString;
  }

  public void setRowSize(int paramInt)
  {
    this.rowSize = paramInt;
  }

  public void setTimeStatus(String paramString)
  {
    this.timeStatus = paramString;
  }

  public void setUpdateFlag(String paramString)
  {
    this.updateFlag = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.request.PassListReq
 * JD-Core Version:    0.6.2
 */