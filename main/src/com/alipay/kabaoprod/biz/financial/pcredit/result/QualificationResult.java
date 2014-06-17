package com.alipay.kabaoprod.biz.financial.pcredit.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.util.List;

public class QualificationResult extends KabaoCommonResult
{
  public String agreementUrl;
  public String billingDate;
  public String creditAmount;
  public String repayDueDate;
  public List<String> signMemos;

  public String getAgreementUrl()
  {
    return this.agreementUrl;
  }

  public String getBillingDate()
  {
    return this.billingDate;
  }

  public String getCreditAmount()
  {
    return this.creditAmount;
  }

  public String getRepayDueDate()
  {
    return this.repayDueDate;
  }

  public List<String> getSignMemos()
  {
    return this.signMemos;
  }

  public void setAgreementUrl(String paramString)
  {
    this.agreementUrl = paramString;
  }

  public void setBillingDate(String paramString)
  {
    this.billingDate = paramString;
  }

  public void setCreditAmount(String paramString)
  {
    this.creditAmount = paramString;
  }

  public void setRepayDueDate(String paramString)
  {
    this.repayDueDate = paramString;
  }

  public void setSignMemos(List<String> paramList)
  {
    this.signMemos = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.result.QualificationResult
 * JD-Core Version:    0.6.2
 */