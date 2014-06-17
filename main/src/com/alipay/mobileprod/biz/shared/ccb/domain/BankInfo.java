package com.alipay.mobileprod.biz.shared.ccb.domain;

public class BankInfo extends BaseModel
{
  public String arriveTimeTip;
  public String bankMark;
  public String bankName;
  public BillChannel billChannel;
  public String bulletin;
  public String repayLimit;
  public String repayLimitTip;
  public String status;
  public String supportBillQuery;
  public boolean supportEmailBillQuery;

  public String getArriveTimeTip()
  {
    return this.arriveTimeTip;
  }

  public String getBankMark()
  {
    return this.bankMark;
  }

  public String getBankName()
  {
    return this.bankName;
  }

  public BillChannel getBillChannel()
  {
    return this.billChannel;
  }

  public String getBulletin()
  {
    return this.bulletin;
  }

  public String getRepayLimit()
  {
    return this.repayLimit;
  }

  public String getRepayLimitTip()
  {
    return this.repayLimitTip;
  }

  public String getStatus()
  {
    return this.status;
  }

  public String getSupportBillQuery()
  {
    return this.supportBillQuery;
  }

  public boolean isSupportEmailBillQuery()
  {
    return this.supportEmailBillQuery;
  }

  public void setArriveTimeTip(String paramString)
  {
    this.arriveTimeTip = paramString;
  }

  public void setBankMark(String paramString)
  {
    this.bankMark = paramString;
  }

  public void setBankName(String paramString)
  {
    this.bankName = paramString;
  }

  public void setBillChannel(BillChannel paramBillChannel)
  {
    this.billChannel = paramBillChannel;
  }

  public void setBulletin(String paramString)
  {
    this.bulletin = paramString;
  }

  public void setRepayLimit(String paramString)
  {
    this.repayLimit = paramString;
  }

  public void setRepayLimitTip(String paramString)
  {
    this.repayLimitTip = paramString;
  }

  public void setStatus(String paramString)
  {
    this.status = paramString;
  }

  public void setSupportBillQuery(String paramString)
  {
    this.supportBillQuery = paramString;
  }

  public void setSupportEmailBillQuery(boolean paramBoolean)
  {
    this.supportEmailBillQuery = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.shared.ccb.domain.BankInfo
 * JD-Core Version:    0.6.2
 */