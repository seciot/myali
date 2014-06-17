package com.alipay.kabaoprod.biz.financial.account.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class FundAssetInfo extends ToString
{
  public boolean freezeFund;
  public boolean hasFundAccount;
  public String opText;
  public String previousProfit;
  public String totalAmount;
  public String totalProfit;

  public String getOpText()
  {
    return this.opText;
  }

  public String getPreviousProfit()
  {
    return this.previousProfit;
  }

  public String getTotalAmount()
  {
    return this.totalAmount;
  }

  public String getTotalProfit()
  {
    return this.totalProfit;
  }

  public boolean isFreezeFund()
  {
    return this.freezeFund;
  }

  public boolean isHasFundAccount()
  {
    return this.hasFundAccount;
  }

  public void setFreezeFund(boolean paramBoolean)
  {
    this.freezeFund = paramBoolean;
  }

  public void setHasFundAccount(boolean paramBoolean)
  {
    this.hasFundAccount = paramBoolean;
  }

  public void setOpText(String paramString)
  {
    this.opText = paramString;
  }

  public void setPreviousProfit(String paramString)
  {
    this.previousProfit = paramString;
  }

  public void setTotalAmount(String paramString)
  {
    this.totalAmount = paramString;
  }

  public void setTotalProfit(String paramString)
  {
    this.totalProfit = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.model.FundAssetInfo
 * JD-Core Version:    0.6.2
 */