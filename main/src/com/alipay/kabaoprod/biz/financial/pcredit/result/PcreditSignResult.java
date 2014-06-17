package com.alipay.kabaoprod.biz.financial.pcredit.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class PcreditSignResult extends KabaoCommonResult
{
  public String billingDate;
  public String creditAmount;
  public String investOrgName;
  public String repayDueDate;

  public String getBillingDate()
  {
    return this.billingDate;
  }

  public String getCreditAmount()
  {
    return this.creditAmount;
  }

  public String getInvestOrgName()
  {
    return this.investOrgName;
  }

  public String getRepayDueDate()
  {
    return this.repayDueDate;
  }

  public void setBillingDate(String paramString)
  {
    this.billingDate = paramString;
  }

  public void setCreditAmount(String paramString)
  {
    this.creditAmount = paramString;
  }

  public void setInvestOrgName(String paramString)
  {
    this.investOrgName = paramString;
  }

  public void setRepayDueDate(String paramString)
  {
    this.repayDueDate = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.result.PcreditSignResult
 * JD-Core Version:    0.6.2
 */