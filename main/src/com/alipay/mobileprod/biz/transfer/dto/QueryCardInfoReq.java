package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseRespVO;

public class QueryCardInfoReq extends BaseRespVO
{
  public String cardIndex;
  public String holderName;
  public String reqSource;
  public String transferNo;

  public String getCardIndex()
  {
    return this.cardIndex;
  }

  public String getHolderName()
  {
    return this.holderName;
  }

  public String getReqSource()
  {
    return this.reqSource;
  }

  public String getTransferNo()
  {
    return this.transferNo;
  }

  public void setCardIndex(String paramString)
  {
    this.cardIndex = paramString;
  }

  public void setHolderName(String paramString)
  {
    this.holderName = paramString;
  }

  public void setReqSource(String paramString)
  {
    this.reqSource = paramString;
  }

  public void setTransferNo(String paramString)
  {
    this.transferNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.QueryCardInfoReq
 * JD-Core Version:    0.6.2
 */