package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class CreateToCardReq extends BaseReqVO
{
  public String bankShortName;
  public String cardChannel;
  public String cardIndex;
  public String cardNo;
  public boolean cardNoHidden;
  public String chargeFee;
  public String emotionId;
  public String emotionSource;
  public String memo;
  public String mobileNo;
  public String orderSource;
  public String payCardChannel;
  public String payCardIndex;
  public String promotion;
  public String receiverName;
  public String transferAmount;
  public String transferSpeed;
  public boolean withVoice;

  public String getBankShortName()
  {
    return this.bankShortName;
  }

  public String getCardChannel()
  {
    return this.cardChannel;
  }

  public String getCardIndex()
  {
    return this.cardIndex;
  }

  public String getCardNo()
  {
    return this.cardNo;
  }

  public String getChargeFee()
  {
    return this.chargeFee;
  }

  public String getEmotionId()
  {
    return this.emotionId;
  }

  public String getEmotionSource()
  {
    return this.emotionSource;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public String getMobileNo()
  {
    return this.mobileNo;
  }

  public String getOrderSource()
  {
    return this.orderSource;
  }

  public String getPayCardChannel()
  {
    return this.payCardChannel;
  }

  public String getPayCardIndex()
  {
    return this.payCardIndex;
  }

  public String getPromotion()
  {
    return this.promotion;
  }

  public String getReceiverName()
  {
    return this.receiverName;
  }

  public String getTransferAmount()
  {
    return this.transferAmount;
  }

  public String getTransferSpeed()
  {
    return this.transferSpeed;
  }

  public boolean isCardNoHidden()
  {
    return this.cardNoHidden;
  }

  public boolean isWithVoice()
  {
    return this.withVoice;
  }

  public void setBankShortName(String paramString)
  {
    this.bankShortName = paramString;
  }

  public void setCardChannel(String paramString)
  {
    this.cardChannel = paramString;
  }

  public void setCardIndex(String paramString)
  {
    this.cardIndex = paramString;
  }

  public void setCardNo(String paramString)
  {
    this.cardNo = paramString;
  }

  public void setCardNoHidden(boolean paramBoolean)
  {
    this.cardNoHidden = paramBoolean;
  }

  public void setChargeFee(String paramString)
  {
    this.chargeFee = paramString;
  }

  public void setEmotionId(String paramString)
  {
    this.emotionId = paramString;
  }

  public void setEmotionSource(String paramString)
  {
    this.emotionSource = paramString;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setMobileNo(String paramString)
  {
    this.mobileNo = paramString;
  }

  public void setOrderSource(String paramString)
  {
    this.orderSource = paramString;
  }

  public void setPayCardChannel(String paramString)
  {
    this.payCardChannel = paramString;
  }

  public void setPayCardIndex(String paramString)
  {
    this.payCardIndex = paramString;
  }

  public void setPromotion(String paramString)
  {
    this.promotion = paramString;
  }

  public void setReceiverName(String paramString)
  {
    this.receiverName = paramString;
  }

  public void setTransferAmount(String paramString)
  {
    this.transferAmount = paramString;
  }

  public void setTransferSpeed(String paramString)
  {
    this.transferSpeed = paramString;
  }

  public void setWithVoice(boolean paramBoolean)
  {
    this.withVoice = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.CreateToCardReq
 * JD-Core Version:    0.6.2
 */