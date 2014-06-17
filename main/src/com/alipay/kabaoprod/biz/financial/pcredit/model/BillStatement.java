package com.alipay.kabaoprod.biz.financial.pcredit.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class BillStatement extends ToString
{
  public String billNo;
  public String billPeriodMonth;
  public String billPeriodYear;
  public boolean hasSettled;
  public String settledBalance;
  public String totalRepayAmount;

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

  public String getSettledBalance()
  {
    return this.settledBalance;
  }

  public String getTotalRepayAmount()
  {
    return this.totalRepayAmount;
  }

  public boolean isHasSettled()
  {
    return this.hasSettled;
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

  public void setHasSettled(boolean paramBoolean)
  {
    this.hasSettled = paramBoolean;
  }

  public void setSettledBalance(String paramString)
  {
    this.settledBalance = paramString;
  }

  public void setTotalRepayAmount(String paramString)
  {
    this.totalRepayAmount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.model.BillStatement
 * JD-Core Version:    0.6.2
 */