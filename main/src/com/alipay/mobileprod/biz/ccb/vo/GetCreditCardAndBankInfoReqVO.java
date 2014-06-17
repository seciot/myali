package com.alipay.mobileprod.biz.ccb.vo;

import com.alipay.mobileprod.core.model.ccb.BaseReqVO;

public class GetCreditCardAndBankInfoReqVO extends BaseReqVO
{
  public String bankMark;
  public String cardNumber;
  public String cardNumberType;
  public String holderName;
  public boolean needAddNewCard;

  public String getBankMark()
  {
    return this.bankMark;
  }

  public String getCardNumber()
  {
    return this.cardNumber;
  }

  public String getCardNumberType()
  {
    return this.cardNumberType;
  }

  public String getHolderName()
  {
    return this.holderName;
  }

  public boolean isNeedAddNewCard()
  {
    return this.needAddNewCard;
  }

  public void setBankMark(String paramString)
  {
    this.bankMark = paramString;
  }

  public void setCardNumber(String paramString)
  {
    this.cardNumber = paramString;
  }

  public void setCardNumberType(String paramString)
  {
    this.cardNumberType = paramString;
  }

  public void setHolderName(String paramString)
  {
    this.holderName = paramString;
  }

  public void setNeedAddNewCard(boolean paramBoolean)
  {
    this.needAddNewCard = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccb.vo.GetCreditCardAndBankInfoReqVO
 * JD-Core Version:    0.6.2
 */