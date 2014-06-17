package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class CancelDeductReq extends BaseReqVO
{
  public String cardId;
  public String paymentPassword;

  public String getCardId()
  {
    return this.cardId;
  }

  public String getPaymentPassword()
  {
    return this.paymentPassword;
  }

  public void setCardId(String paramString)
  {
    this.cardId = paramString;
  }

  public void setPaymentPassword(String paramString)
  {
    this.paymentPassword = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.CancelDeductReq
 * JD-Core Version:    0.6.2
 */