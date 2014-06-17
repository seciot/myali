package com.alipay.kabaoprod.biz.financial.bankcard.request;

public class CancelBankCardReq
{
  public String agreementNo;
  public String cancelType;
  public String cardIndexNo;
  public String cardType;
  public String password;

  public String getAgreementNo()
  {
    return this.agreementNo;
  }

  public String getCancelType()
  {
    return this.cancelType;
  }

  public String getCardIndexNo()
  {
    return this.cardIndexNo;
  }

  public String getCardType()
  {
    return this.cardType;
  }

  public String getPassword()
  {
    return this.password;
  }

  public void setAgreementNo(String paramString)
  {
    this.agreementNo = paramString;
  }

  public void setCancelType(String paramString)
  {
    this.cancelType = paramString;
  }

  public void setCardIndexNo(String paramString)
  {
    this.cardIndexNo = paramString;
  }

  public void setCardType(String paramString)
  {
    this.cardType = paramString;
  }

  public void setPassword(String paramString)
  {
    this.password = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.request.CancelBankCardReq
 * JD-Core Version:    0.6.2
 */