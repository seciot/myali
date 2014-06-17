package com.alipay.mobileprod.biz.recharge.dto;

import com.alipay.mobileprod.core.model.BaseReqVO;

public class CreateOrderReq extends BaseReqVO
{
  public String activity;
  public String channelType;
  public String createSource;
  public String facePrice;
  public String itemId;
  public String mobile;
  public String mobileSource;
  public String promotion;
  public String promotionPrice;
  public String showedPrice;

  public String getActivity()
  {
    return this.activity;
  }

  public String getChannelType()
  {
    return this.channelType;
  }

  public String getCreateSource()
  {
    return this.createSource;
  }

  public String getFacePrice()
  {
    return this.facePrice;
  }

  public String getItemId()
  {
    return this.itemId;
  }

  public String getMobile()
  {
    return this.mobile;
  }

  public String getMobileSource()
  {
    return this.mobileSource;
  }

  public String getPromotion()
  {
    return this.promotion;
  }

  public String getPromotionPrice()
  {
    return this.promotionPrice;
  }

  public String getShowedPrice()
  {
    return this.showedPrice;
  }

  public void setActivity(String paramString)
  {
    this.activity = paramString;
  }

  public void setChannelType(String paramString)
  {
    this.channelType = paramString;
  }

  public void setCreateSource(String paramString)
  {
    this.createSource = paramString;
  }

  public void setFacePrice(String paramString)
  {
    this.facePrice = paramString;
  }

  public void setItemId(String paramString)
  {
    this.itemId = paramString;
  }

  public void setMobile(String paramString)
  {
    this.mobile = paramString;
  }

  public void setMobileSource(String paramString)
  {
    this.mobileSource = paramString;
  }

  public void setPromotion(String paramString)
  {
    this.promotion = paramString;
  }

  public void setPromotionPrice(String paramString)
  {
    this.promotionPrice = paramString;
  }

  public void setShowedPrice(String paramString)
  {
    this.showedPrice = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.recharge.dto.CreateOrderReq
 * JD-Core Version:    0.6.2
 */