package com.alipay.mobileprod.biz.shared.ccr.domain;

public class SavedCard extends BaseModel
{
  public BankInfo bankInfo;
  public BillInfo billInfo;
  public UserCardInfo userCardInfo;

  public BankInfo getBankInfo()
  {
    return this.bankInfo;
  }

  public BillInfo getBillInfo()
  {
    return this.billInfo;
  }

  public UserCardInfo getUserCardInfo()
  {
    return this.userCardInfo;
  }

  public void setBankInfo(BankInfo paramBankInfo)
  {
    this.bankInfo = paramBankInfo;
  }

  public void setBillInfo(BillInfo paramBillInfo)
  {
    this.billInfo = paramBillInfo;
  }

  public void setUserCardInfo(UserCardInfo paramUserCardInfo)
  {
    this.userCardInfo = paramUserCardInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.shared.ccr.domain.SavedCard
 * JD-Core Version:    0.6.2
 */