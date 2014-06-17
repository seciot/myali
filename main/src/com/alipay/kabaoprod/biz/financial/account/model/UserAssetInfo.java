package com.alipay.kabaoprod.biz.financial.account.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class UserAssetInfo extends ToString
{
  public AccountAsset accountAsset;
  public FundAsset fundAsset;
  public boolean fundOpenStatus;
  public String totalAmount;

  public AccountAsset getAccountAsset()
  {
    return this.accountAsset;
  }

  public FundAsset getFundAsset()
  {
    return this.fundAsset;
  }

  public String getTotalAmount()
  {
    return this.totalAmount;
  }

  public boolean isFundOpenStatus()
  {
    return this.fundOpenStatus;
  }

  public void setAccountAsset(AccountAsset paramAccountAsset)
  {
    this.accountAsset = paramAccountAsset;
  }

  public void setFundAsset(FundAsset paramFundAsset)
  {
    this.fundAsset = paramFundAsset;
  }

  public void setFundOpenStatus(boolean paramBoolean)
  {
    this.fundOpenStatus = paramBoolean;
  }

  public void setTotalAmount(String paramString)
  {
    this.totalAmount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.model.UserAssetInfo
 * JD-Core Version:    0.6.2
 */