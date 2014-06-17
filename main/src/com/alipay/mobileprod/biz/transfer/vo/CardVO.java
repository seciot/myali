package com.alipay.mobileprod.biz.transfer.vo;

public class CardVO
{
  public String bankName;
  public String bankShortName;
  public String cardIndex;
  public String cardNo;
  public boolean cardNoHidden;
  public String holderName;
  public String sourceChannel;

  public String getBankName()
  {
    return this.bankName;
  }

  public String getBankShortName()
  {
    return this.bankShortName;
  }

  public String getCardIndex()
  {
    return this.cardIndex;
  }

  public String getCardNo()
  {
    return this.cardNo;
  }

  public String getHolderName()
  {
    return this.holderName;
  }

  public String getSourceChannel()
  {
    return this.sourceChannel;
  }

  public boolean isCardNoHidden()
  {
    return this.cardNoHidden;
  }

  public void setBankName(String paramString)
  {
    this.bankName = paramString;
  }

  public void setBankShortName(String paramString)
  {
    this.bankShortName = paramString;
  }

  public void setCardIndex(String paramString)
  {
    this.cardIndex = paramString;
  }

  public void setCardNo(String paramString)
  {
    this.cardNo = paramString;
  }

  public void setCardNoHidden(boolean paramBoolean)
  {
    this.cardNoHidden = paramBoolean;
  }

  public void setHolderName(String paramString)
  {
    this.holderName = paramString;
  }

  public void setSourceChannel(String paramString)
  {
    this.sourceChannel = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.vo.CardVO
 * JD-Core Version:    0.6.2
 */