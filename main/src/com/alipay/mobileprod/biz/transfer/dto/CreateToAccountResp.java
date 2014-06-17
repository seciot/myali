package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;

public class CreateToAccountResp extends BaseRespVO
{
  public String bizSubType;
  public String bizType;
  public String extInfo;
  public String receiverUserId;
  public String tradeNo;

  public String getBizSubType()
  {
    return this.bizSubType;
  }

  public String getBizType()
  {
    return this.bizType;
  }

  public String getReceiverUserId()
  {
    return this.receiverUserId;
  }

  public String getTradeNo()
  {
    return this.tradeNo;
  }

  public void setBizSubType(String paramString)
  {
    this.bizSubType = paramString;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setReceiverUserId(String paramString)
  {
    this.receiverUserId = paramString;
  }

  public void setTradeNo(String paramString)
  {
    this.tradeNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.CreateToAccountResp
 * JD-Core Version:    0.6.2
 */