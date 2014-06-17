package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class SetupCreditCardRemindReqVO extends BaseReqVO
{
  public String cardId;
  public String remindDay;
  public String remindStatus;

  public String getCardId()
  {
    return this.cardId;
  }

  public String getRemindDay()
  {
    return this.remindDay;
  }

  public String getRemindStatus()
  {
    return this.remindStatus;
  }

  public void setCardId(String paramString)
  {
    this.cardId = paramString;
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
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.SetupCreditCardRemindReqVO
 * JD-Core Version:    0.6.2
 */