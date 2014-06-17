package com.alipay.mobileprod.biz.recharge.vo;

public class EcardVO
{
  public boolean absence;
  public String channelType;
  public String facePrice;
  public String itemId;
  public String promotionPrice;
  public String showedPrice;

  public String getChannelType()
  {
    return this.channelType;
  }

  public String getFacePrice()
  {
    return this.facePrice;
  }

  public String getItemId()
  {
    return this.itemId;
  }

  public String getPromotionPrice()
  {
    return this.promotionPrice;
  }

  public String getShowedPrice()
  {
    return this.showedPrice;
  }

  public boolean isAbsence()
  {
    return this.absence;
  }

  public void setAbsence(boolean paramBoolean)
  {
    this.absence = paramBoolean;
  }

  public void setChannelType(String paramString)
  {
    this.channelType = paramString;
  }

  public void setFacePrice(String paramString)
  {
    this.facePrice = paramString;
  }

  public void setItemId(String paramString)
  {
    this.itemId = paramString;
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
 * Qualified Name:     com.alipay.mobileprod.biz.recharge.vo.EcardVO
 * JD-Core Version:    0.6.2
 */