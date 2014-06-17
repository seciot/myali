package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class CouponInfo extends ToString
{
  public String activeDate;
  public double cardPrice;
  public double couponBalance;
  public String couponId;
  public String couponName;
  public String expiredDate;
  public String memo;
  public String urlType;
  public String usingUrl;

  public String getActiveDate()
  {
    return this.activeDate;
  }

  public double getCardPrice()
  {
    return this.cardPrice;
  }

  public double getCouponBalance()
  {
    return this.couponBalance;
  }

  public String getCouponId()
  {
    return this.couponId;
  }

  public String getCouponName()
  {
    return this.couponName;
  }

  public String getExpiredDate()
  {
    return this.expiredDate;
  }

  public String getMemo()
  {
    return this.memo;
  }

  public String getUrlType()
  {
    return this.urlType;
  }

  public String getUsingUrl()
  {
    return this.usingUrl;
  }

  public void setActiveDate(String paramString)
  {
    this.activeDate = paramString;
  }

  public void setCardPrice(double paramDouble)
  {
    this.cardPrice = paramDouble;
  }

  public void setCouponBalance(double paramDouble)
  {
    this.couponBalance = paramDouble;
  }

  public void setCouponId(String paramString)
  {
    this.couponId = paramString;
  }

  public void setCouponName(String paramString)
  {
    this.couponName = paramString;
  }

  public void setExpiredDate(String paramString)
  {
    this.expiredDate = paramString;
  }

  public void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public void setUrlType(String paramString)
  {
    this.urlType = paramString;
  }

  public void setUsingUrl(String paramString)
  {
    this.usingUrl = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.CouponInfo
 * JD-Core Version:    0.6.2
 */