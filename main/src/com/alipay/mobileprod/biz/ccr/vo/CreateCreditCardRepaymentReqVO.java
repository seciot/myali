package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class CreateCreditCardRepaymentReqVO extends BaseReqVO
{
  public String agreementId;
  public String bankMark;
  public String cardNumber;
  public String cardNumberType;
  public String holderName;
  public String orderSource;
  public String outOrderNo;
  public String publicId;
  public String repayAmount;

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

  public String getOrderSource()
  {
    return this.orderSource;
  }

  public String getOutOrderNo()
  {
    return this.outOrderNo;
  }

  public String getPublicId()
  {
    return this.publicId;
  }

  public String getRepayAmount()
  {
    return this.repayAmount;
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

  public void setOrderSource(String paramString)
  {
    this.orderSource = paramString;
  }

  public void setOutOrderNo(String paramString)
  {
    this.outOrderNo = paramString;
  }

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }

  public void setRepayAmount(String paramString)
  {
    this.repayAmount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.CreateCreditCardRepaymentReqVO
 * JD-Core Version:    0.6.2
 */