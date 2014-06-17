package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class CreateMobileToCardReq extends BaseReqVO
{
  public String chargeFee;
  public String memo;
  public String orderSource;
  public String promotion;
  public String receiverMobile;
  public String receiverName;
  public String transferAmount;

  public String getChargeFee()
  {
    return this.chargeFee;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public String getOrderSource()
  {
    return this.orderSource;
  }

  public String getPromotion()
  {
    return this.promotion;
  }

  public String getReceiverMobile()
  {
    return this.receiverMobile;
  }

  public String getReceiverName()
  {
    return this.receiverName;
  }

  public String getTransferAmount()
  {
    return this.transferAmount;
  }

  public void setChargeFee(String paramString)
  {
    this.chargeFee = paramString;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setOrderSource(String paramString)
  {
    this.orderSource = paramString;
  }

  public void setPromotion(String paramString)
  {
    this.promotion = paramString;
  }

  public void setReceiverMobile(String paramString)
  {
    this.receiverMobile = paramString;
  }

  public void setReceiverName(String paramString)
  {
    this.receiverName = paramString;
  }

  public void setTransferAmount(String paramString)
  {
    this.transferAmount = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.CreateMobileToCardReq
 * JD-Core Version:    0.6.2
 */