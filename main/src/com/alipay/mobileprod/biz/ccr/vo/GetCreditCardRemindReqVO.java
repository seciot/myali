package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class GetCreditCardRemindReqVO extends BaseReqVO
{
  public String cardId;

  public String getCardId()
  {
    return this.cardId;
  }

  public void setCardId(String paramString)
  {
    this.cardId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.GetCreditCardRemindReqVO
 * JD-Core Version:    0.6.2
 */