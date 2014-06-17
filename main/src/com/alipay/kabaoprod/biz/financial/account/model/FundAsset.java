package com.alipay.kabaoprod.biz.financial.account.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class FundAsset extends ToString
{
  public String fundAvailableQuotient;
  public String fundTotalAmount;
  public String fundTotalFreezeShare;
  public String fundTotalProfit;
  public String fundTotalUseShare;

  public String getFundAvailableQuotient()
  {
    return this.fundAvailableQuotient;
  }

  public String getFundTotalAmount()
  {
    return this.fundTotalAmount;
  }

  public String getFundTotalFreezeShare()
  {
    return this.fundTotalFreezeShare;
  }

  public String getFundTotalProfit()
  {
    return this.fundTotalProfit;
  }

  public String getFundTotalUseShare()
  {
    return this.fundTotalUseShare;
  }

  public void setFundAvailableQuotient(String paramString)
  {
    this.fundAvailableQuotient = paramString;
  }

  public void setFundTotalAmount(String paramString)
  {
    this.fundTotalAmount = paramString;
  }

  public void setFundTotalFreezeShare(String paramString)
  {
    this.fundTotalFreezeShare = paramString;
  }

  public void setFundTotalProfit(String paramString)
  {
    this.fundTotalProfit = paramString;
  }

  public void setFundTotalUseShare(String paramString)
  {
    this.fundTotalUseShare = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.model.FundAsset
 * JD-Core Version:    0.6.2
 */