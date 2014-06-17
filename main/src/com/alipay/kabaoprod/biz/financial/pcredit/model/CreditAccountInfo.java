package com.alipay.kabaoprod.biz.financial.pcredit.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class CreditAccountInfo extends ToString
{
  public String availableAmount;
  public String billAmount;
  public String billNo;
  public String billPeriodMonth;
  public String billPeriodYear;
  public String billingDate;
  public String creditAccount;
  public String creditAmount;
  public String currentBalance;
  public int dueDays;
  public String prodId;
  public String repayDueDate;

  public String getAvailableAmount()
  {
    return this.availableAmount;
  }

  public String getBillAmount()
  {
    return this.billAmount;
  }

  public String getBillNo()
  {
    return this.billNo;
  }

  public String getBillPeriodMonth()
  {
    return this.billPeriodMonth;
  }

  public String getBillPeriodYear()
  {
    return this.billPeriodYear;
  }

  public String getBillingDate()
  {
    return this.billingDate;
  }

  public String getCreditAccount()
  {
    return this.creditAccount;
  }

  public String getCreditAmount()
  {
    return this.creditAmount;
  }

  public String getCurrentBalance()
  {
    return this.currentBalance;
  }

  public int getDueDays()
  {
    return this.dueDays;
  }

  public String getProdId()
  {
    return this.prodId;
  }

  public String getRepayDueDate()
  {
    return this.repayDueDate;
  }

  public void setAvailableAmount(String paramString)
  {
    this.availableAmount = paramString;
  }

  public void setBillAmount(String paramString)
  {
    this.billAmount = paramString;
  }

  public void setBillNo(String paramString)
  {
    this.billNo = paramString;
  }

  public void setBillPeriodMonth(String paramString)
  {
    this.billPeriodMonth = paramString;
  }

  public void setBillPeriodYear(String paramString)
  {
    this.billPeriodYear = paramString;
  }

  public void setBillingDate(String paramString)
  {
    this.billingDate = paramString;
  }

  public void setCreditAccount(String paramString)
  {
    this.creditAccount = paramString;
  }

  public void setCreditAmount(String paramString)
  {
    this.creditAmount = paramString;
  }

  public void setCurrentBalance(String paramString)
  {
    this.currentBalance = paramString;
  }

  public void setDueDays(int paramInt)
  {
    this.dueDays = paramInt;
  }

  public void setProdId(String paramString)
  {
    this.prodId = paramString;
  }

  public void setRepayDueDate(String paramString)
  {
    this.repayDueDate = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.model.CreditAccountInfo
 * JD-Core Version:    0.6.2
 */