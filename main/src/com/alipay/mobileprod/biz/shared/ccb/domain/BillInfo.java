package com.alipay.mobileprod.biz.shared.ccb.domain;

public class BillInfo extends BaseModel
{
  public String billAmount;
  public String billDate;
  public String billFrom;
  public String dueDate;
  public String dueDateRemind;
  public String minPayment;
  public String minUnpaid;
  public String payedAmount;
  public String unpaid;

  public String getBillAmount()
  {
    return this.billAmount;
  }

  public String getBillDate()
  {
    return this.billDate;
  }

  public String getBillFrom()
  {
    return this.billFrom;
  }

  public String getDueDate()
  {
    return this.dueDate;
  }

  public String getDueDateRemind()
  {
    return this.dueDateRemind;
  }

  public String getMinPayment()
  {
    return this.minPayment;
  }

  public String getMinUnpaid()
  {
    return this.minUnpaid;
  }

  public String getPayedAmount()
  {
    return this.payedAmount;
  }

  public String getUnpaid()
  {
    return this.unpaid;
  }

  public void setBillAmount(String paramString)
  {
    this.billAmount = paramString;
  }

  public void setBillDate(String paramString)
  {
    this.billDate = paramString;
  }

  public void setBillFrom(String paramString)
  {
    this.billFrom = paramString;
  }

  public void setDueDate(String paramString)
  {
    this.dueDate = paramString;
  }

  public void setDueDateRemind(String paramString)
  {
    this.dueDateRemind = paramString;
  }

  public void setMinPayment(String paramString)
  {
    this.minPayment = paramString;
  }

  public void setMinUnpaid(String paramString)
  {
    this.minUnpaid = paramString;
  }

  public void setPayedAmount(String paramString)
  {
    this.payedAmount = paramString;
  }

  public void setUnpaid(String paramString)
  {
    this.unpaid = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.shared.ccb.domain.BillInfo
 * JD-Core Version:    0.6.2
 */