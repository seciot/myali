package com.alipay.kabaoprod.biz.financial.fund.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class TotalFundAssetsResult extends KabaoCommonResult
{
  public String fundCode;
  public String fundOperationText;
  public boolean hasFundAccount;
  public String instCode;
  public String totalAmount;

  public String getFundCode()
  {
    return this.fundCode;
  }

  public String getFundOperationText()
  {
    return this.fundOperationText;
  }

  public String getInstCode()
  {
    return this.instCode;
  }

  public String getTotalAmount()
  {
    return this.totalAmount;
  }

  public boolean isHasFundAccount()
  {
    return this.hasFundAccount;
  }

  public void setFundCode(String paramString)
  {
    this.fundCode = paramString;
  }

  public void setFundOperationText(String paramString)
  {
    this.fundOperationText = paramString;
  }

  public void setHasFundAccount(boolean paramBoolean)
  {
    this.hasFundAccount = paramBoolean;
  }

  public void setInstCode(String paramString)
  {
    this.instCode = paramString;
  }

  public void setTotalAmount(String paramString)
  {
    this.totalAmount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.result.TotalFundAssetsResult
 * JD-Core Version:    0.6.2
 */