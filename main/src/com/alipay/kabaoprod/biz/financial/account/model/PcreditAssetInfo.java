package com.alipay.kabaoprod.biz.financial.account.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class PcreditAssetInfo extends ToString
{
  public boolean hasPcreditAccount;
  public String opText;
  public String settledBalance;
  public String signStatus;

  public String getOpText()
  {
    return this.opText;
  }

  public String getSettledBalance()
  {
    return this.settledBalance;
  }

  public String getSignStatus()
  {
    return this.signStatus;
  }

  public boolean isHasPcreditAccount()
  {
    return this.hasPcreditAccount;
  }

  public void setHasPcreditAccount(boolean paramBoolean)
  {
    this.hasPcreditAccount = paramBoolean;
  }

  public void setOpText(String paramString)
  {
    this.opText = paramString;
  }

  public void setSettledBalance(String paramString)
  {
    this.settledBalance = paramString;
  }

  public void setSignStatus(String paramString)
  {
    this.signStatus = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.model.PcreditAssetInfo
 * JD-Core Version:    0.6.2
 */