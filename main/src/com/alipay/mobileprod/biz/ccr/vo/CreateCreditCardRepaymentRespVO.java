package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseRespVO;

public class CreateCreditCardRepaymentRespVO extends BaseRespVO
{
  public String billNumber;
  public String cardId;

  public String getBillNumber()
  {
    return this.billNumber;
  }

  public String getCardId()
  {
    return this.cardId;
  }

  public void setBillNumber(String paramString)
  {
    this.billNumber = paramString;
  }

  public void setCardId(String paramString)
  {
    this.cardId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.CreateCreditCardRepaymentRespVO
 * JD-Core Version:    0.6.2
 */