package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class CreateToAccountReq extends BaseReqVO
{
  public String emotionId;
  public String emotionSource;
  public String memo;
  public String mobileBindingType;
  public String orderSource;
  public String promotion;
  public String receiverAccount;
  public String receiverMobile;
  public String receiverUserId;
  public String sign;
  public String transferAmount;
  public String transferMode;
  public boolean withVoice;

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

  public String getMobileBindingType()
  {
    return this.mobileBindingType;
  }

  public String getOrderSource()
  {
    return this.orderSource;
  }

  public String getPromotion()
  {
    return this.promotion;
  }

  public String getReceiverAccount()
  {
    return this.receiverAccount;
  }

  public String getReceiverMobile()
  {
    return this.receiverMobile;
  }

  public String getReceiverUserId()
  {
    return this.receiverUserId;
  }

  public String getSign()
  {
    return this.sign;
  }

  public String getTransferAmount()
  {
    return this.transferAmount;
  }

  public String getTransferMode()
  {
    return this.transferMode;
  }

  public boolean isWithVoice()
  {
    return this.withVoice;
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

  public void setMobileBindingType(String paramString)
  {
    this.mobileBindingType = paramString;
  }

  public void setOrderSource(String paramString)
  {
    this.orderSource = paramString;
  }

  public void setPromotion(String paramString)
  {
    this.promotion = paramString;
  }

  public void setReceiverAccount(String paramString)
  {
    this.receiverAccount = paramString;
  }

  public void setReceiverMobile(String paramString)
  {
    this.receiverMobile = paramString;
  }

  public void setReceiverUserId(String paramString)
  {
    this.receiverUserId = paramString;
  }

  public void setSign(String paramString)
  {
    this.sign = paramString;
  }

  public void setTransferAmount(String paramString)
  {
    this.transferAmount = paramString;
  }

  public void setTransferMode(String paramString)
  {
    this.transferMode = paramString;
  }

  public void setWithVoice(boolean paramBoolean)
  {
    this.withVoice = paramBoolean;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.CreateToAccountReq
 * JD-Core Version:    0.6.2
 */