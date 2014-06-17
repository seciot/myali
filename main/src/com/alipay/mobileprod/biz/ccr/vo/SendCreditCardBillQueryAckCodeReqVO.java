package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class SendCreditCardBillQueryAckCodeReqVO extends BaseReqVO
{
  public String cardId;
  public String phoneNumber;

  public String getCardId()
  {
    return this.cardId;
  }

  public String getPhoneNumber()
  {
    return this.phoneNumber;
  }

  public void setCardId(String paramString)
  {
    this.cardId = paramString;
  }

  public void setPhoneNumber(String paramString)
  {
    this.phoneNumber = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.SendCreditCardBillQueryAckCodeReqVO
 * JD-Core Version:    0.6.2
 */