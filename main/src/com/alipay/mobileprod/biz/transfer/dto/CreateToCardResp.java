package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;

public class CreateToCardResp extends BaseRespVO
{
  public String bizSubType;
  public String bizType;
  public String transferNo;

  public String getBizSubType()
  {
    return this.bizSubType;
  }

  public String getBizType()
  {
    return this.bizType;
  }

  public String getTransferNo()
  {
    return this.transferNo;
  }

  public void setBizSubType(String paramString)
  {
    this.bizSubType = paramString;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setTransferNo(String paramString)
  {
    this.transferNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.CreateToCardResp
 * JD-Core Version:    0.6.2
 */