package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class AddCreditCardReqVO extends BaseReqVO
{
  public String agreementId;
  public String bankMark;
  public String cardNumber;
  public String cardNumberType;
  public String holderName;
  public String publicId;
  public String remindDay;
  public String remindStatus;

  public String getAgreementId()
  {
    return this.agreementId;
  }

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

  public String getPublicId()
  {
    return this.publicId;
  }

  public String getRemindDay()
  {
    return this.remindDay;
  }

  public String getRemindStatus()
  {
    return this.remindStatus;
  }

  public void setAgreementId(String paramString)
  {
    this.agreementId = paramString;
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

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }

  public void setRemindDay(String paramString)
  {
    this.remindDay = paramString;
  }

  public void setRemindStatus(String paramString)
  {
    this.remindStatus = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.AddCreditCardReqVO
 * JD-Core Version:    0.6.2
 */