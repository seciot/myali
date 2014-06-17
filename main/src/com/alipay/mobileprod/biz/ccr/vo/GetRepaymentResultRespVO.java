package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseRespVO;

public class GetRepaymentResultRespVO extends BaseRespVO
{
  public String arriveTime;
  public String billStatus;
  public String createTime;
  public String failureReason;
  public String payTime;
  public String remindDay;
  public String remindStatus;

  public String getArriveTime()
  {
    return this.arriveTime;
  }

  public String getBillStatus()
  {
    return this.billStatus;
  }

  public String getCreateTime()
  {
    return this.createTime;
  }

  public String getFailureReason()
  {
    return this.failureReason;
  }

  public String getPayTime()
  {
    return this.payTime;
  }

  public String getRemindDay()
  {
    return this.remindDay;
  }

  public String getRemindStatus()
  {
    return this.remindStatus;
  }

  public void setArriveTime(String paramString)
  {
    this.arriveTime = paramString;
  }

  public void setBillStatus(String paramString)
  {
    this.billStatus = paramString;
  }

  public void setCreateTime(String paramString)
  {
    this.createTime = paramString;
  }

  public void setFailureReason(String paramString)
  {
    this.failureReason = paramString;
  }

  public void setPayTime(String paramString)
  {
    this.payTime = paramString;
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
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.GetRepaymentResultRespVO
 * JD-Core Version:    0.6.2
 */