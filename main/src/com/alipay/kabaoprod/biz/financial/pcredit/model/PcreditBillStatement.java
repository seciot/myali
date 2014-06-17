package com.alipay.kabaoprod.biz.financial.pcredit.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class PcreditBillStatement extends ToString
{
  public String billAmount;
  public String billNo;
  public String billPeriod;
  public String billingDate;
  public String dueDate;
  public boolean oldBill = true;
  public int paymentCount;
  public String repayedAmount;
  public String totalRepayAmount;

  public String getBillAmount()
  {
    return this.billAmount;
  }

  public String getBillNo()
  {
    return this.billNo;
  }

  public String getBillPeriod()
  {
    return this.billPeriod;
  }

  public String getBillingDate()
  {
    return this.billingDate;
  }

  public String getDueDate()
  {
    return this.dueDate;
  }

  public int getPaymentCount()
  {
    return this.paymentCount;
  }

  public String getRepayedAmount()
  {
    return this.repayedAmount;
  }

  public String getTotalRepayAmount()
  {
    return this.totalRepayAmount;
  }

  public boolean isOldBill()
  {
    return this.oldBill;
  }

  public void setBillAmount(String paramString)
  {
    this.billAmount = paramString;
  }

  public void setBillNo(String paramString)
  {
    this.billNo = paramString;
  }

  public void setBillPeriod(String paramString)
  {
    this.billPeriod = paramString;
  }

  public void setBillingDate(String paramString)
  {
    this.billingDate = paramString;
  }

  public void setDueDate(String paramString)
  {
    this.dueDate = paramString;
  }

  public void setOldBill(boolean paramBoolean)
  {
    this.oldBill = paramBoolean;
  }

  public void setPaymentCount(int paramInt)
  {
    this.paymentCount = paramInt;
  }

  public void setRepayedAmount(String paramString)
  {
    this.repayedAmount = paramString;
  }

  public void setTotalRepayAmount(String paramString)
  {
    this.totalRepayAmount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.model.PcreditBillStatement
 * JD-Core Version:    0.6.2
 */