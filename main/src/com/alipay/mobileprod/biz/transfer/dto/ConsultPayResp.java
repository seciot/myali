package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;

public class ConsultPayResp extends BaseRespVO
{
  public String bizSubType;
  public String bizType;
  public String changeToSpeed;
  public String transferNo;
  public String transferSpeed;

  public String getBizSubType()
  {
    return this.bizSubType;
  }

  public String getBizType()
  {
    return this.bizType;
  }

  public String getChangeToSpeed()
  {
    return this.changeToSpeed;
  }

  public String getTransferNo()
  {
    return this.transferNo;
  }

  public String getTransferSpeed()
  {
    return this.transferSpeed;
  }

  public void setBizSubType(String paramString)
  {
    this.bizSubType = paramString;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setChangeToSpeed(String paramString)
  {
    this.changeToSpeed = paramString;
  }

  public void setTransferNo(String paramString)
  {
    this.transferNo = paramString;
  }

  public void setTransferSpeed(String paramString)
  {
    this.transferSpeed = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.ConsultPayResp
 * JD-Core Version:    0.6.2
 */