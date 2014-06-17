package com.alipay.kabaoprod.biz.financial.account.model;

public class BankAssetInfo
{
  public String cardCount;
  public boolean hasBankCard;
  public String opText;

  public String getCardCount()
  {
    return this.cardCount;
  }

  public String getOpText()
  {
    return this.opText;
  }

  public boolean isHasBankCard()
  {
    return this.hasBankCard;
  }

  public void setCardCount(String paramString)
  {
    this.cardCount = paramString;
  }

  public void setHasBankCard(boolean paramBoolean)
  {
    this.hasBankCard = paramBoolean;
  }

  public void setOpText(String paramString)
  {
    this.opText = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.model.BankAssetInfo
 * JD-Core Version:    0.6.2
 */