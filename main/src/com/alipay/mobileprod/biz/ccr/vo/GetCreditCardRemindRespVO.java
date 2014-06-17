package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseRespVO;

public class GetCreditCardRemindRespVO extends BaseRespVO
{
  public String remindDay;
  public String remindStatus;

  public String getRemindDay()
  {
    return this.remindDay;
  }

  public String getRemindStatus()
  {
    return this.remindStatus;
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
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.GetCreditCardRemindRespVO
 * JD-Core Version:    0.6.2
 */