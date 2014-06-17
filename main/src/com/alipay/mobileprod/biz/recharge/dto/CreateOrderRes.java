package com.alipay.mobileprod.biz.recharge.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;

public class CreateOrderRes extends BaseRespVO
{
  public String bindedMobile;
  public String bizSubType;
  public String bizType = "trade";
  public String mobile;
  public String tradeNo;

  public String getBindedMobile()
  {
    return this.bindedMobile;
  }

  public String getBizSubType()
  {
    return this.bizSubType;
  }

  public String getBizType()
  {
    return this.bizType;
  }

  public String getMobile()
  {
    return this.mobile;
  }

  public String getTradeNo()
  {
    return this.tradeNo;
  }

  public void setBindedMobile(String paramString)
  {
    this.bindedMobile = paramString;
  }

  public void setBizSubType(String paramString)
  {
    this.bizSubType = paramString;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }

  public void setTradeNo(String paramString)
  {
    this.tradeNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.recharge.dto.CreateOrderRes
 * JD-Core Version:    0.6.2
 */