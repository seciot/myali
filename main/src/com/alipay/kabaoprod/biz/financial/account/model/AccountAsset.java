package com.alipay.kabaoprod.biz.financial.account.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class AccountAsset extends ToString
{
  public String availableAmount;
  public String balance;
  public String creditAmount;
  public String ctuAmount;
  public String depositAmount;
  public String freezeAmount;
  public String systemAmount;
  public String uncertifiedFreezeAmount;

  public String getAvailableAmount()
  {
    return this.availableAmount;
  }

  public String getBalance()
  {
    return this.balance;
  }

  public String getCreditAmount()
  {
    return this.creditAmount;
  }

  public String getCtuAmount()
  {
    return this.ctuAmount;
  }

  public String getDepositAmount()
  {
    return this.depositAmount;
  }

  public String getFreezeAmount()
  {
    return this.freezeAmount;
  }

  public String getSystemAmount()
  {
    return this.systemAmount;
  }

  public String getUncertifiedFreezeAmount()
  {
    return this.uncertifiedFreezeAmount;
  }

  public void setAvailableAmount(String paramString)
  {
    this.availableAmount = paramString;
  }

  public void setBalance(String paramString)
  {
    this.balance = paramString;
  }

  public void setCreditAmount(String paramString)
  {
    this.creditAmount = paramString;
  }

  public void setCtuAmount(String paramString)
  {
    this.ctuAmount = paramString;
  }

  public void setDepositAmount(String paramString)
  {
    this.depositAmount = paramString;
  }

  public void setFreezeAmount(String paramString)
  {
    this.freezeAmount = paramString;
  }

  public void setSystemAmount(String paramString)
  {
    this.systemAmount = paramString;
  }

  public void setUncertifiedFreezeAmount(String paramString)
  {
    this.uncertifiedFreezeAmount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.model.AccountAsset
 * JD-Core Version:    0.6.2
 */